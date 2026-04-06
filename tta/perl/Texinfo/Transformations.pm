# Transformations.pm: load transformations modules and functions not in
#                     the XS interface
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
# Parts (also from Patrice Dumas) come from texi2html.pl.
#
# ALTIMP C/structuring_transfo/transformations.c

package Texinfo::Transformations;

use 5.006;

use strict;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);


use Carp qw(cluck confess);

use Texinfo::XSLoader;

use Texinfo::Commands;

use Texinfo::TreeElement;

use Texinfo::Common;

use Texinfo::ManipulateTree;

require Exporter;
our @ISA = qw(Exporter);

our @EXPORT_OK = qw(
protect_hashchar_at_line_beginning
reference_to_arg_in_tree
);

our $VERSION = '7.3dev';

BEGIN {
  my $shared_library_name = "TransformationsXS";
  if (!Texinfo::XSLoader::XS_structuring_enabled()) {
    undef $shared_library_name;
  }
  Texinfo::XSLoader::init (
    "Texinfo::Transformations",
    "Texinfo::TransformationsNonXS",
    $shared_library_name,
    undef,
    ['texinfo', 'texinfoxs'],
  );
}

# This converts a reference @-command to simple text using one of the
# arguments.  This is used to remove reference @-command from
# constructed node names trees, as node names cannot contain
# reference @-command while there could be some in the tree used in
# input for the node name tree.
sub _reference_to_arg($$$) {
  my ($type, $current, $document) = @_;

  if (exists($current->{'cmdname'}) and
      exists($Texinfo::Commands::ref_commands{$current->{'cmdname'}})
      and exists($current->{'contents'})) {

    # remove from internal references
    if (defined($document)) {
      my $internal_references = $document->internal_references_information();
      Texinfo::Common::replace_remove_list_element($internal_references,
                                                   $current);
    }

    my @args_try_order;
    if ($current->{'cmdname'} eq 'inforef'
        or $current->{'cmdname'} eq 'link') {
      @args_try_order = (0, 1, 2);
    } else {
      @args_try_order = (0, 1, 2, 4, 3);
    }
    foreach my $index (@args_try_order) {
      if (defined($current->{'contents'}->[$index])) {
        my $arg = $current->{'contents'}->[$index];
        # this will not detect if the arg expands as spaces only, like
        # @asis{ }, @ , but it is not an issue or could even be considered
        # as a feature.
        if (!Texinfo::Common::is_content_empty($arg)) {
          my $result
            = Texinfo::TreeElement::new({#'contents' => $arg->{'contents'},
                                         'parent' => $current->{'parent'}});
          foreach my $content (@{$arg->{'contents'}}) {
            if (!exists($content->{'type'})
                or ($content->{'type'} ne 'spaces_before_argument'
                    and $content->{'type'} ne 'spaces_after_argument')) {
              $content->{'parent'} = $result if (exists($content->{'parent'}));
              push @{$result->{'contents'}}, $content;
            }
          }
          $arg->{'contents'} = undef;
          $current->{'contents'} = undef;
          # may not actually be needed, but should not hurt either.
          $arg = undef;
          $current = undef;
          return [$result];
        }
      }
    }
    $current = undef;
    return Texinfo::TreeElement::new({'text' => ''});
  } else {
    return undef;
  }
}

sub reference_to_arg_in_tree($;$) {
  my ($tree, $document) = @_;

  return Texinfo::ManipulateTree::modify_tree($tree, \&_reference_to_arg,
                                              $document);
}


# modify the menu tree to put description and menu comment content
# together directly in the menu.  Put the menu_entry in a preformatted.
# last merge preformatted.
sub menu_to_simple_menu($);

# Not used
sub menu_to_simple_menu($) {
  my $menu = shift;

  my @contents;
  foreach my $content (@{$menu->{'contents'}}) {
    if (exists($content->{'type'}) and $content->{'type'} eq 'menu_comment') {
      push @contents, @{$content->{'contents'}};
    } elsif (exists($content->{'type'})
             and $content->{'type'} eq 'menu_entry') {
      my $preformatted = {'type' => 'preformatted', 'contents' => [$content]};
      push @contents, $preformatted;
      $content->{'parent'} = $preformatted;

      my $in_description;
      my @args = @{$content->{'contents'}};
      @{$content->{'contents'}} = ();
      while (@args) {
        if (exists($args[0]->{'type'})
            and $args[0]->{'type'} eq 'menu_entry_description') {
          my $description = shift @args;
          push @contents, @{$description->{'contents'}};
          push @contents, @args;
          last;
        } else {
          my $arg = shift @args;
          push @{$content->{'contents'}}, $arg;
        }
      }
    } elsif (exists($content->{'cmdname'})
   and exists($Texinfo::Commands::block_commands{$content->{'cmdname'}})
  and $Texinfo::Commands::block_commands{$content->{'cmdname'}} eq 'menu') {
      menu_to_simple_menu($content);
      push @contents, $content;
    } else {
      push @contents, $content;
    }
  }

  # reset parent, put in menu and merge preformatted.
  @{$menu->{'contents'}} = ();
  my $current_preformatted;
  foreach my $content (@contents) {
    $content->{'parent'} = $menu;
    if (exists($content->{'type'}) and $content->{'type'} eq 'preformatted') {
      if (!defined($current_preformatted)) {
        $current_preformatted = $content;
        push @{$menu->{'contents'}}, $content;
      } else {
        foreach my $preformatted_content (@{$content->{'contents'}}) {
          push @{$current_preformatted->{'contents'}}, $preformatted_content;
          $preformatted_content->{'parent'} = $current_preformatted;
        }
      }
    } else {
      $current_preformatted = undef;
      push @{$menu->{'contents'}}, $content;
    }
  }
}

sub _protect_hashchar_at_line_beginning($$$) {
  my ($type, $parent, $argument) = @_;

  my $document = $argument;

  return undef if (exists($parent->{'text'})
                   or !exists($parent->{'contents'}));

  my $parent_contents_nr = scalar(@{$parent->{'contents'}});
  for (my $i = 0; $i < $parent_contents_nr; $i++) {
    my $current = $parent->{'contents'}->[$i];
    if (exists($current->{'text'}) and
      $current->{'text'} =~ /^\s*#\s*(line)? (\d+)(( "([^"]+)")(\s+\d+)*)?\s*$/) {
      # protect if first in container, or if after a newline
      if ($i == 0
          or ($i == 1 and exists($parent->{'contents'}->[0]->{'type'})
              and ($parent->{'contents'}->[0]->{'type'} eq 'arguments_line'
                  # for example @quotation # line 100 "toto"
                  # but it is not clear if it is correct
                   or $parent->{'contents'}->[0]->{'type'}
                             eq 'spaces_before_argument'))
          or (exists($parent->{'contents'}->[$i-1]->{'text'})
              and $parent->{'contents'}->[$i-1]->{'text'} =~ /\n$/)) {
        # do not actually protect in raw block command, but warn
        if (exists($current->{'type'}) and $current->{'type'} eq 'raw') {
          my $parent_for_warn = $parent;
          while ($parent_for_warn) {
            if (exists($parent_for_warn->{'cmdname'})
                and exists($parent_for_warn->{'source_info'})) {
              if (defined($document)) {
                $document->document_line_warn(sprintf(__(
                    "could not protect hash character in \@%s"),
                         $parent_for_warn->{'cmdname'}),
                                   $parent_for_warn->{'source_info'}, 0);
              }
              last;
            }
            $parent_for_warn = $parent_for_warn->{'parent'};
          }
        } else {
          my $remaining_source_marks;
          my $current_position = 0;
          if (exists($current->{'source_marks'})) {
            $remaining_source_marks = [@{$current->{'source_marks'}}];
            delete $current->{'source_marks'};
          }

          $current->{'text'} =~ s/^(\s*)#//;

          my $e = Texinfo::TreeElement::new({'text' => $1,});
          $current_position = Texinfo::Common::relocate_source_marks(
                                      $remaining_source_marks, $e,
                                      $current_position, length($1));
          if ($e->{'text'} ne '' or $e->{'source_marks'}) {
            splice @{$parent->{'contents'}}, $i, 0, $e;
            $i++;
            $parent_contents_nr++;
          }

          $e = Texinfo::TreeElement::new({'cmdname' => 'hashchar',
                                          'parent' => $parent});
          my $arg = Texinfo::TreeElement::new({'type' => 'brace_container',
                                               'parent' => $e});
          $e->{'contents'} = [$arg];
          $current_position = Texinfo::Common::relocate_source_marks(
                                        $remaining_source_marks, $e,
                                        $current_position, 1);
          splice @{$parent->{'contents'}}, $i, 0, $e;
          $i++;
          $parent_contents_nr++;

          $current_position = Texinfo::Common::relocate_source_marks(
                                        $remaining_source_marks, $current,
                                        $current_position,
                                        length($current->{'text'}));
        }
      }
    }
  }
  return undef;
}

sub protect_hashchar_at_line_beginning($;$) {
  my ($tree, $document) = @_;

  return Texinfo::ManipulateTree::modify_tree($tree,
                     \&_protect_hashchar_at_line_beginning,
                      $document);
}

sub _protect_first_parenthesis_in_targets($$$) {
  my ($type, $current, $argument) = @_;

  my $element_label = Texinfo::Common::get_label_element($current);
  if (defined($element_label) and $element_label ne '') {
    Texinfo::ManipulateTree::protect_first_parenthesis($element_label);
  }
  return undef;
}

# Used in Pod::Simple::Texinfo
# TODO document
sub protect_first_parenthesis_in_targets($) {
  my $tree = shift;

  Texinfo::ManipulateTree::modify_tree($tree,
                           \&_protect_first_parenthesis_in_targets);
}

1;

__END__

=head1 NAME

Texinfo::Transformations - transformations of Texinfo tree

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

Includes miscellaneous methods such as as
C<insert_nodes_for_sectioning_commands> that adds nodes for sectioning commands
without nodes and C<complete_tree_nodes_menus_in_document> and
C<complete_tree_nodes_missing_menu> that completes the node menus based on the
sectioning tree.

Methods for copying and modifying the Texinfo tree used for default
conversion to output formats are in L<Texinfo::ManipulateTree>.

=head1 METHODS

No method is exported in the default case.

=over

=item complete_tree_nodes_menus_in_document($document, $add_section_names_in_entries)
X<C<complete_tree_nodes_menus_in_document>>

Add menu entries or whole menus for nodes associated with sections,
based on the sectioning tree.  If the optional
C<$add_section_names_in_entries> argument is set, a menu entry
name is added using the section name.  This function should be
called after L<sectioning_structure|Texinfo::Structuring/sectioning_structure($document)>.

=item complete_tree_nodes_missing_menu($document, $use_section_names_in_entries)
X<C<complete_tree_nodes_missing_menu>>

Add whole menus for nodes associated with sections and without menu,
based on the I<$document> sectioning tree.
If the optional I<$add_section_names_in_entries> argument is set, a menu entry
name is added using the section name.  This function should be
called after L<sectioning_structure|Texinfo::Structuring/sectioning_structure($document)>.

=item fill_gaps_in_sectioning_in_document($document, $commands_heading_tree)
X<C<fill_gaps_in_sectioning_in_document>>

This function adds empty C<@unnumbered> and similar commands in a
I<$document> tree to fill gaps in sectioning.  This may be used, for example,
when converting from a format that can handle gaps in sectioning.

In the default case, the added sectioning commands headings are empty.  It is
possible to use instead the I<$commands_heading_tree> Texinfo tree element.

If the sectioning commands are lowered or raised (with C<@raisesections>,
C<@lowersection>) the tree may be modified with C<@raisesections> or
C<@lowersection> added to some tree elements.

=item insert_nodes_for_sectioning_commands($document)
X<C<insert_nodes_for_sectioning_commands>>

Insert nodes for sectioning commands without node in C<$document>
tree.

=item menu_to_simple_menu($menu)
X<C<menu_to_simple_menu>>

C<menu_to_simple_menu> transforms the tree of a menu tree element.

A simple menu has no I<menu_comment>, I<menu_entry> or I<menu_entry_description>
container anymore, their content are merged directly in the menu in
I<preformatted> container.

Note that this kind of tree is not supported by other codes, so this
transformation should be avoided unless one knows exactly what to expect.

=item protect_hashchar_at_line_beginning($tree, $document)
X<C<protect_hashchar_at_line_beginning>>

Protect hash (#) character at the beginning of line such that they would not be
considered as lines to be processed by the CPP processor.  The I<$document>
argument is optional.  If defined, the I<$document> is used for error reporting
in case an hash character could not be protected because it appeared in a raw
formatted environment (C<@tex>, C<@html>...).

=item $modified_tree = reference_to_arg_in_tree($tree, $document)
X<C<reference_to_arg_in_tree>>

Modify I<$tree> by converting reference @-commands to simple text using one of
the arguments.  This transformation can be used, for example, to remove
reference @-command from constructed node names trees, as node names cannot
contain reference @-command while there could be some in the tree used in input
for the node name tree.  The I<$document> argument is optional.  If given,
the converted reference @-command is removed from the I<$document> internal
references list.

A I<$modified_tree> is not systematically returned, if the I<$tree> in argument
is not replaced, undef may also be returned.

=item regenerate_master_menu($document, $use_sections)
X<C<regenerate_master_menu>>

Regenerate the I<$document> Top node master menu, replacing the first
detailmenu in Top node menus or appending at the end of the Top node menu.

I<$use_sections> is an optional argument.  If set, sections associated with
nodes are used as labels in the generated master menu.

=back

=head1 SEE ALSO

L<Texinfo manual|http://www.gnu.org/s/texinfo/manual/texinfo/>,
L<Texinfo::Parser>, L<Texinfo::ManipulateTree>.

=head1 AUTHOR

Patrice Dumas, E<lt>bug-texinfo@gnu.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2010- Free Software Foundation, Inc.  See the source file for
all copyright years.

This library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at
your option) any later version.

=cut
