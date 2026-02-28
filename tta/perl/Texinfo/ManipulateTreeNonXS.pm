# ManipulateTreeNonXS.pm: common Texinfo tree manipulation
#
# Copyright 2010-2026 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License,
# or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# Original author: Patrice Dumas <pertusus@free.fr>

# functions useful for Texinfo tree transformations
# and some tree transformations functions, mostly those
# used in conversion to main output formats.  In general,
# tree transformations functions are documented in the POD section.

# Some helper functions defined here are used in other
# modules but are not generally useful in converters
# and therefore not considered "public" and not documented in POD.

# ALTIMP XSTexinfo/parser_document/ManipulateTreeXS.xs
# ALTIMP C/main/manipulate_tree.c

package Texinfo::ManipulateTree;

use 5.006;

# stop \s from matching non-ASCII spaces, etc.  \p{...} can still be
# used to match Unicode character classes.
use if $] >= 5.014, re => '/a';

use strict;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

# debugging
use Carp qw(cluck confess);

# Do not use Devel::Peek, instead implement SvREFCNT as Devel::Peek
# cannot be loaded in an eval
#use Devel::Peek;
# SvREFCNT counts are wrong if loaded through eval?
#eval { require Devel::Peek; Devel::Peek->import(); };

use Texinfo::Common;

our $VERSION = '7.3dev';

# The functions called in Perl code outside of tests are the copy_*NonXS
# functions.
# TODO document?
# If $ADDED_ROOT_ELEMENTS is set, links in extra to other subtrees are
# followed and subtree roots should be put in there.
# NOTE right now there are no extra types that points to other parts
# of the tree used in any code.  See comment in C code for more information.
# NOTE the implementation of _copy_tree and _remove_element_copy_info is in
# the main Texinfo::ManipulateTree module.
sub copy_tree($;$)
{
  my ($current, $added_root_elements) = @_;

  my $other_trees;
  if (defined($added_root_elements)) {
    $other_trees = {};
  }

  my $copy = _copy_tree($current, $other_trees);
  _remove_element_copy_info($current, $copy, $added_root_elements);

  if (defined($added_root_elements)) {
    $added_root_elements = [ grep {$_ ne $current} @$added_root_elements ];
  }

  return $copy;
}



# Devel::Peek is not present on all the platforms, and we cannot load it
# in an eval, so we reimplement trivially SvREFCNT

# The XS override returns the SvREFCNT value.
#   $EXPECTED_COUNT should be set to the reference count expected, for
#   instance the reference count expected in a test that follows the
#   call to SvREFCNT.
sub SvREFCNT($;$) {
  # If there is no XS, return the expected count instead of showing the
  # true reference count.
  my ($variable, $expected_count) = @_;

  return $expected_count;
}



# No reference to other elements in extra information currently
# (no extra element, content, direction), therefore no need for
# element numbers to refer to.
# The calls to set_element_tree_numbers and remove_element_tree_numbers
# are thus commented out.
sub tree_print_details($;$$) {
  my ($tree, $fname_encoding, $use_filename) = @_;

  my $result;

  my $current_nr = 0;
  #$current_nr = set_element_tree_numbers($tree, 0);

  ($current_nr, $result) = print_tree_details($tree, 0, undef, $current_nr,
                                             $fname_encoding, $use_filename);

  #remove_element_tree_numbers($tree);

  return $result;
}



# Texinfo tree transformations used in main output formats conversion.

# Has an XS override. Defined to be able to test Perl and XS. Undocumented
# on purpose.
sub protect_comma_in_document($) {
  my $document = shift;

  protect_comma_in_tree($document->tree());
  return;
}

# Has an XS override. Defined to be able to test Perl and XS. Undocumented
# on purpose.
sub protect_colon_in_document($) {
  my $document = shift;

  protect_colon_in_tree($document->tree());
  return;
}

# Has an XS override. Defined to be able to test Perl and XS. Undocumented
# on purpose.
sub protect_node_after_label_in_document($) {
  my $document = shift;

  protect_node_after_label_in_tree($document->tree());
  return;
}

sub _move_selected_element_index_entries_after_items($) {
  # enumerate or itemize
  my $current = shift;

  return unless (exists($current->{'contents'}));

  my $previous;
  foreach my $item (@{$current->{'contents'}}) {
    #print STDERR "Before proceeding: $previous $item->{'cmdname'} (@{$previous->{'contents'}})\n" if ($previous and $previous->{'contents'});
    if (defined($previous) and exists($item->{'cmdname'})
        and $item->{'cmdname'} eq 'item'
        and exists($previous->{'contents'})) {

      my $previous_ending_container;
      if (exists($previous->{'contents'}->[-1]->{'type'})
          and ($previous->{'contents'}->[-1]->{'type'} eq 'paragraph'
               or $previous->{'contents'}->[-1]->{'type'} eq 'preformatted')) {
        # for preformatted, happens if in @itemize/enumerate in @example
        # or similar.
        # for paragraph happens if there is a paragraph at the end
        # of the previous item, and it could be possible for this
        # paragraph to end with an inline index command.
        # TODO check that there are all the cases in tests, with
        # paragraph or preformatted, and with an idex entry+comment
        # to gather or not.
        $previous_ending_container = $previous->{'contents'}->[-1];
      } else {
        # possible index commands out of paragraph
        $previous_ending_container = $previous;
      }

      my $contents_nr = scalar(@{$previous_ending_container->{'contents'}});

      # find the last index entry, with possibly comments after
      my $last_entry_idx = -1;
      for (my $i = $contents_nr -1; $i >= 0; $i--) {
        my $content = $previous_ending_container->{'contents'}->[$i];
        if (exists($content->{'type'})
            and $content->{'type'} eq 'index_entry_command') {
          $last_entry_idx = $i;
        } elsif (not (exists($content->{'cmdname'})
                      and ($content->{'cmdname'} eq 'c'
                           or $content->{'cmdname'} eq 'comment'
                     # subentry is not within the index entry in the tree
                           or $content->{'cmdname'} eq 'subentry'))) {
          last;
        }
      }

      if ($last_entry_idx >= 0) {
        my $item_container;
        if (exists($item->{'contents'})
            and exists($item->{'contents'}->[0]->{'type'})
            and $item->{'contents'}->[0]->{'type'} eq 'preformatted') {
          $item_container = $item->{'contents'}->[0];
        } else {
          $item_container = $item;
        }

        for (my $i = $last_entry_idx; $i < $contents_nr; $i++) {
          # can only be index_entry_command or comment as gathered just above
          my $content = $previous_ending_container->{'contents'}->[$i];
          $content->{'parent'} = $item_container;
        }

        my $insertion_idx = 0;
        if (exists($item_container->{'contents'})
            and exists($item_container->{'contents'}->[0]->{'type'})
            and $item_container->{'contents'}->[0]->{'type'}
                                eq 'ignorable_spaces_after_command') {
          # insert after leading spaces, and add an end of line if there
          # is none
          $insertion_idx = 1;
          $item_container->{'contents'}->[0]->{'text'} .= "\n"
            if ($item_container->{'contents'}->[0]->{'text'} !~ /\n$/);
        }
        # first part of the splice is the insertion in $item_container
        splice (@{$item_container->{'contents'}},
                $insertion_idx, 0,
                    # this splice removes from the previous container starting
                    # at $last_entry_idx and returns the contents to be inserted
                    splice (@{$previous_ending_container->{'contents'}},
                            $last_entry_idx, $contents_nr - $last_entry_idx));
        delete $previous_ending_container->{'contents'}
          if (!scalar(@{$previous_ending_container->{'contents'}}));
      }
    }
    $previous = $item;
  }
}

sub _move_index_entries_after_items($$) {
  my ($type, $current) = @_;

  if (exists($current->{'cmdname'})
      and ($current->{'cmdname'} eq 'enumerate'
           or $current->{'cmdname'} eq 'itemize')) {
    _move_selected_element_index_entries_after_items($current);
  }
  return undef;
}

# For @itemize/@enumerate
sub move_index_entries_after_items_in_document($) {
  my $document = shift;

  my $tree = $document->tree();
  modify_tree($tree, \&_move_index_entries_after_items);
}

sub _relate_index_entries_to_table_items_in($$) {
  my ($table, $indices_information) = @_;

  return unless(exists($table->{'contents'}));

  foreach my $table_entry (@{$table->{'contents'}}) {
    next unless(exists($table_entry->{'contents'})
                and exists($table_entry->{'type'})
                and $table_entry->{'type'} eq 'table_entry');

    my $term = $table_entry->{'contents'}->[0];
    my $definition;
    my $item;

    # Move any index entries from the start of a 'table_definition' to
    # the 'table_term'.
    if (defined($table_entry->{'contents'}->[1])
        and exists($table_entry->{'contents'}->[1]->{'type'})
        and $table_entry->{'contents'}->[1]->{'type'} eq 'table_definition') {
      $definition = $table_entry->{'contents'}->[1];
      my $nr_index_entry_command = 0;
      foreach my $child (@{$definition->{'contents'}}) {
        if (exists($child->{'type'})
            and $child->{'type'} eq 'index_entry_command') {
          $child->{'parent'} = $term;
          $nr_index_entry_command++;
        } else {
          last;
        }
      }
      if ($nr_index_entry_command > 0) {
        unshift @{$term->{'contents'}},
          splice (@{$definition->{'contents'}}, 0, $nr_index_entry_command);
      }
    }

    if (exists($term->{'type'}) and $term->{'type'} eq 'table_term') {
      # Relate the first index_entry_command in the 'table_term' to
      # the term itself.

      my $index_entry;
      my $index_element;
      foreach my $content (@{$term->{'contents'}}) {
        if (exists($content->{'type'})
            and $content->{'type'} eq 'index_entry_command') {
          if (!$index_entry) {
            my $index_info;
            $index_element = $content;
            ($index_entry, $index_info)
              = Texinfo::Common::lookup_index_entry(
                              $content->{'extra'}->{'index_entry'},
                              $indices_information);
          }
        } elsif (exists($content->{'cmdname'})
                 and $content->{'cmdname'} eq 'item') {
          $item = $content unless $item;
        }
        if ($item and $index_entry) {
          # This is better than overwriting 'entry_element', which
          # holds important information.
          $index_entry->{'entry_associated_element'} = $item;
          # also add a reference from element to index entry in index
          $item->{'extra'} = {} if (!exists($item->{'extra'}));
          $item->{'extra'}->{'associated_index_entry'}
             = [@{$index_element->{'extra'}->{'index_entry'}}];
          last;
        }
      }
    }
  }
}

# Locate all @tables in the tree, and relate index entries to
# the @item that immediately follows or precedes them.
sub _relate_index_entries_to_table_items($$$) {
  my ($type, $current, $indices_information) = @_;

  if (exists($current->{'cmdname'}) and $current->{'cmdname'} eq 'table') {
    _relate_index_entries_to_table_items_in($current, $indices_information);
  }
  return undef;
}

sub relate_index_entries_to_table_items_in_document($) {
  my $document = shift;

  my $tree = $document->tree();
  my $indices_information = $document->indices_information();

  modify_tree($tree, \&_relate_index_entries_to_table_items,
              $indices_information);
}

1;

__END__
