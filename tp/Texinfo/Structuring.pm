# Structuring.pm: extract information about a document structure based on the
#                 document tree.
#
# Copyright 2010-2024 Free Software Foundation, Inc.
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
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Original author: Patrice Dumas <pertusus@free.fr>
# Parts (also from Patrice Dumas) come from texi2html.pl.

package Texinfo::Structuring;

use 5.00405;

# See comment at start of HTML.pm
use if $] >= 5.012, feature => 'unicode_strings';

use strict;
# Can be used to check that there is no incorrect autovivfication
# no autovivification qw(fetch delete exists store strict);

# stop \s from matching non-ASCII spaces, etc.  \p{...} can still be
# used to match Unicode character classes.
use if $] >= 5.014, re => '/a';

use Carp qw(cluck confess);

use Texinfo::StructTransfXS;

use Texinfo::XSLoader;

# for %root_commands
use Texinfo::Commands;
use Texinfo::Common;

# for error messages
use Texinfo::Convert::Texinfo qw(target_element_to_texi_label
                                 link_element_to_texi);
# for internal references and misc uses
use Texinfo::Convert::NodeNameNormalization;
# for new_master_menu translations
use Texinfo::Translations;

require Exporter;
use vars qw($VERSION @ISA @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter);

%EXPORT_TAGS = ( 'all' => [ qw(
  associate_internal_references
  check_nodes_are_referenced
  complete_node_tree_with_menus
  units_directions
  units_file_directions
  nodes_tree
  number_floats
  sectioning_structure
  set_menus_node_directions
  split_by_node
  split_by_section
  split_pages
  warn_non_empty_parts
) ] );

@EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

$VERSION = '7.1dev';

my $XS_structuring = Texinfo::XSLoader::XS_structuring_enabled();

my %XS_overrides = (
  "Texinfo::Structuring::associate_internal_references"
    => "Texinfo::StructTransfXS::associate_internal_references",
  "Texinfo::Structuring::sectioning_structure"
    => "Texinfo::StructTransfXS::sectioning_structure",
  "Texinfo::Structuring::warn_non_empty_parts"
    => "Texinfo::StructTransfXS::warn_non_empty_parts",
  "Texinfo::Structuring::nodes_tree"
    => "Texinfo::StructTransfXS::nodes_tree",
  "Texinfo::Structuring::set_menus_node_directions"
    => "Texinfo::StructTransfXS::set_menus_node_directions",
  "Texinfo::Structuring::complete_node_tree_with_menus"
    => "Texinfo::StructTransfXS::complete_node_tree_with_menus",
  "Texinfo::Structuring::check_nodes_are_referenced"
    => "Texinfo::StructTransfXS::check_nodes_are_referenced",
  "Texinfo::Structuring::number_floats"
    => "Texinfo::StructTransfXS::number_floats",
  "Texinfo::Structuring::rebuild_output_units"
    => "Texinfo::StructTransfXS::rebuild_output_units",
  "Texinfo::Structuring::_XS_unsplit"
    => "Texinfo::StructTransfXS::unsplit",
);

# used in conversion only, and should only be loaded with XS converters
my %XS_convert_overrides = (
  # Not useful for HTML as functions, as the calling functions are
  # already overriden
  # Could be readded when other converters than HTML are done in C
  #  "Texinfo::Structuring::split_by_node"
  #    => "Texinfo::StructTransfXS::split_by_node");
  #  "Texinfo::Structuring::split_by_section"
  #    => "Texinfo::StructTransfXS::split_by_section");
  #  "Texinfo::Structuring::split_pages"
  #    => "Texinfo::StructTransfXS::split_pages"
);

our $module_loaded = 0;
sub import {
  if (!$module_loaded) {
    if ($XS_structuring) {
      for my $sub (keys %XS_overrides) {
        Texinfo::XSLoader::override ($sub, $XS_overrides{$sub});
      }
    }
    #if ($XS_convert) {
    #  for my $sub (keys %XS_convert_overrides) {
    #    Texinfo::XSLoader::override ($sub, $XS_convert_overrides{$sub});
    #  }
    #}
    $module_loaded = 1;
  }
  # The usual import method
  goto &Exporter::import;
}

my %types_to_enter;
foreach my $type_to_enter ('brace_command_arg', 'line_arg',
    'paragraph') {
  $types_to_enter{$type_to_enter} = 1;
}


my %command_structuring_level = %Texinfo::Common::command_structuring_level;

my %appendix_commands = %Texinfo::Commands::appendix_commands;
my %unnumbered_commands = %Texinfo::Commands::unnumbered_commands;

# Go through the sectioning commands (e.g. @chapter, not @node), and
# set:
# 'section_level'
# 'section_number'
# 'section_childs'
# 'section_directions'
# 'toplevel_directions'
sub sectioning_structure($)
{
  my $document = shift;

  my $customization_information = $document;

  my $root = $document->tree();
  my $registrar = $document->registrar();

  my $sec_root;
  my $previous_section;
  my $previous_toplevel;

  my $in_appendix = 0;
  # lowest level with a number.  This is the lowest level above 0.
  my $number_top_level;

  my $section_top;
  my @sections_list;

  # holds the current number for all the levels.  It is not possible to use
  # something like the last child index, because of @unnumbered.
  my @command_numbers;
  # keep track of the unnumbered
  my @command_unnumbered;
  foreach my $content (@{$root->{'contents'}}) {
    if (!$content->{'cmdname'} or $content->{'cmdname'} eq 'node'
        or $content->{'cmdname'} eq 'bye') {
      next;
    }
    push @sections_list, $content;
    if ($content->{'cmdname'} eq 'top' and not $section_top) {
      $section_top = $content;
    }

    $content->{'extra'} = {} if (! $content->{'extra'});

    my $level = Texinfo::Common::section_level($content);
    if (!defined($level)) {
      warn "BUG: level not defined for "
           .Texinfo::Common::debug_print_element($content)."\n";
      $level = 0;
    }

    if ($previous_section) {
      my $prev_section_level = $previous_section->{'extra'}->{'section_level'};
      if ($prev_section_level < $level) {
        # new command is below
        if ($level - $prev_section_level > 1) {
          $registrar->line_error($customization_information,
           sprintf(__("raising the section level of \@%s which is too low"),
              $content->{'cmdname'}), $content->{'source_info'});
          $level = $prev_section_level + 1;
        }
        $previous_section->{'extra'}->{'section_childs'} = [$content];

        $content->{'extra'}->{'section_directions'} = {};
        $content->{'extra'}->{'section_directions'}->{'up'} = $previous_section;

        # if the up is unnumbered, the number information has to be kept,
        # to avoid reusing an already used number.
        if (!$unnumbered_commands{$previous_section->{'cmdname'}}) {
          $command_numbers[$level] = undef;
        } elsif (!$unnumbered_commands{$content->{'cmdname'}}) {
          $command_numbers[$level]++;
        }
        if ($unnumbered_commands{$content->{'cmdname'}}) {
          $command_unnumbered[$level] = 1;
        } else {
          $command_unnumbered[$level] = 0;
        }
      } else {
        my $new_upper_part_element;
        # try to find the up in the sectioning hierarchy
        my $up = $previous_section;
        while ($up->{'extra'}->{'section_directions'}
               and $up->{'extra'}->{'section_directions'}->{'up'}
               and $up->{'extra'}->{'section_level'} >= $level) {
          $up = $up->{'extra'}->{'section_directions'}->{'up'};
        }
        # no up found.  The element is below the sectioning root
        if ($level <= $up->{'extra'}->{'section_level'}) {
          $up = $sec_root;
          if ($level <= $sec_root->{'extra'}->{'section_level'}) {
            # in that case, the level of the element is not in line
            # with being below the sectioning root, something need to
            # be done
            if ($content->{'cmdname'} eq 'part') {
              # the first part just appeared, and there was no @top first in
              # document.  Mark that the sectioning root level needs to be updated
              $new_upper_part_element = 1;
              if ($level < $sec_root->{'extra'}->{'section_level'}) {
                # level is 0 for part and section level -1 for sec root. The
                # condition means section level > 1, ie below chapter-level.
                $registrar->line_warn($customization_information,
                 sprintf(__("no chapter-level command before \@%s"),
                    $content->{'cmdname'}), $content->{'source_info'});
              }
            } else {
              $registrar->line_warn($customization_information,
  sprintf(__("lowering the section level of \@%s appearing after a lower element"),
                  $content->{'cmdname'}), $content->{'source_info'});
              $level = $sec_root->{'extra'}->{'section_level'} + 1;
            }
          }
        }
        if ($appendix_commands{$content->{'cmdname'}} and !$in_appendix
            and $level <= $number_top_level
            and $up->{'cmdname'} and $up->{'cmdname'} eq 'part') {
          $up = $sec_root;
        }
        if ($new_upper_part_element) {
          # In that case the root level has to be updated because the first
          # 'part' just appeared, no direction to set.
          $sec_root->{'extra'}->{'section_level'} = $level - 1;
          push @{$sec_root->{'extra'}->{'section_childs'}}, $content;
          $number_top_level = $level;
          $number_top_level = 1 if (!$number_top_level);
        } else {
          $content->{'extra'}->{'section_directions'} = {};
          # do not set sec_root as up, but always put in section_childs.
          $content->{'extra'}->{'section_directions'}->{'up'} = $up
            if ($up ne $sec_root);
          my $prev = $up->{'extra'}->{'section_childs'}->[-1];
          $content->{'extra'}->{'section_directions'}->{'prev'} = $prev;
          $prev->{'extra'}->{'section_directions'} = {}
              if (!$prev->{'extra'}->{'section_directions'});
          $prev->{'extra'}->{'section_directions'}->{'next'} = $content;
          push @{$up->{'extra'}->{'section_childs'}}, $content;
        }
        if (!$unnumbered_commands{$content->{'cmdname'}}) {
          $command_numbers[$level]++;
          $command_unnumbered[$level] = 0;
        } else {
          $command_unnumbered[$level] = 1;
        }
      }
    } else {
      $sec_root = {'extra' => {}};
      # first section determines the level of the root.  It is
      # typically -1 when there is a @top.
      $sec_root->{'extra'}->{'section_level'} = $level - 1;
      $sec_root->{'extra'}->{'section_childs'} = [$content];
      # in the tree as an out of tree element in extra.
      $content->{'extra'}->{'sectioning_root'} = $sec_root;
      $number_top_level = $level;
      # if $level of top sectioning element is 0, which means that
      # it is a @top, $number_top_level is 1 as it is associated to
      # the level of chapter/unnumbered...
      $number_top_level = 1 if (!$number_top_level);
      if ($content->{'cmdname'} ne 'top') {
        if (!$unnumbered_commands{$content->{'cmdname'}}) {
          $command_unnumbered[$level] = 0;
        } else {
          $command_unnumbered[$level] = 1;
        }
      }
    }

    $content->{'extra'}->{'section_level'} = $level;

    if (!defined($command_numbers[$level])) {
      if ($unnumbered_commands{$content->{'cmdname'}}) {
        $command_numbers[$level] = 0;
      } else {
        $command_numbers[$level] = 1;
      }
    }
    if ($appendix_commands{$content->{'cmdname'}} and !$in_appendix
        and $level == $number_top_level) {
      $in_appendix = 1;
      # NOTE we rely on perl auto-increment operator 'magic' for variables
      # in string context, the increment is done as a string, preserving each
      # character within its range, with carry (see perlop).
      $command_numbers[$level] = 'A';
    }
    if (!$unnumbered_commands{$content->{'cmdname'}}) {
      # construct the number, if not below an unnumbered
      if (!$command_unnumbered[$number_top_level]) {
        my $section_number = "$command_numbers[$number_top_level]";
        for (my $i = $number_top_level+1; $i <= $level; $i++) {
          $section_number .= ".$command_numbers[$i]";
          # If there is an unnumbered above, then no number is added.
          if ($command_unnumbered[$i]) {
            $section_number = undef;
            last;
          }
        }
        if (defined($section_number)) {
          $content->{'extra'}->{'section_number'} = $section_number;
        }
      }
    }
    $previous_section = $content;
    if ($content->{'cmdname'} ne 'part' and $level <= $number_top_level) {
      if ($previous_toplevel or ($section_top and $content ne $section_top)) {
        $content->{'extra'}->{'toplevel_directions'} = {};
        if ($previous_toplevel) {
          $previous_toplevel->{'extra'}->{'toplevel_directions'} = {}
             if (!$previous_toplevel->{'extra'}->{'toplevel_directions'});
          $previous_toplevel->{'extra'}->{'toplevel_directions'}->{'next'} = $content;
          $content->{'extra'}->{'toplevel_directions'}->{'prev'} = $previous_toplevel;
        }
        if ($section_top and $content ne $section_top) {
          $content->{'extra'}->{'toplevel_directions'}->{'up'} = $section_top;
        }
      }
      $previous_toplevel = $content;
    } elsif ($content->{'cmdname'} eq 'part'
             and not ($content->{'extra'}
                      and $content->{'extra'}->{'part_associated_section'})) {
      $registrar->line_warn($customization_information,
        sprintf(__("no sectioning command associated with \@%s"),
          $content->{'cmdname'}), $content->{'source_info'});
    }
  }
  if (scalar(@sections_list) == 0) {
    return undef;
  } else {
    return \@sections_list;
  }
}

# for debugging
sub _print_sectioning_tree($);
sub _print_sectioning_tree($)
{
  my $current = shift;
  my $result = ' ' x $current->{'extra'}->{'section_level'}
   . Texinfo::Convert::Texinfo::root_heading_command_to_texinfo($current)."\n";
  foreach my $child (@{$current->{'extra'}->{'section_childs'}}) {
    $result .= _print_sectioning_tree($child);
  }
  return $result;
}

sub warn_non_empty_parts($)
{
  my $document = shift;

  my $customization_information = $document;

  my $global_commands = $document->global_commands_information();
  my $registrar = $document->registrar();

  if ($global_commands->{'part'}) {
    foreach my $part (@{$global_commands->{'part'}}) {
      if (!Texinfo::Common::is_content_empty($part)) {
        $registrar->line_warn($customization_information,
               sprintf(__("\@%s not empty"),
                       $part->{'cmdname'}), $part->{'source_info'});
      }
    }
  }
}

my @node_directions_names = ('next', 'prev', 'up');
# No translation of those special Info keywords.
my %direction_texts = (
 'prev' => 'Prev',
 'next' => 'Next',
 'up' => 'Up'
);

sub _check_menu_entry($$$$$$)
{
  my $registrar = shift;
  my $customization_information = shift;
  my $identifier_target = shift;
  my $command = shift;
  my $menu_content = shift;
  my $menu_entry_node = shift;

  if (defined($menu_entry_node->{'extra'}->{'normalized'})) {
    my $normalized_menu_node = $menu_entry_node->{'extra'}->{'normalized'};

    my $menu_node = $identifier_target->{$normalized_menu_node};

    if (!$menu_node) {
      $registrar->line_error($customization_information,
                  sprintf(__("\@%s reference to nonexistent node `%s'"),
                          $command,
                          link_element_to_texi($menu_entry_node)),
                            $menu_content->{'source_info'});
    } else {
      if (!Texinfo::Convert::Texinfo::check_node_same_texinfo_code($menu_node,
                           $menu_entry_node->{'extra'}->{'node_content'})) {
        $registrar->line_warn($customization_information,
        sprintf(__("\@%s entry node name `%s' different from %s name `%s'"),
                $command,
                link_element_to_texi($menu_entry_node),
                $menu_node->{'cmdname'},
                target_element_to_texi_label($menu_node)),
                               $menu_content->{'source_info'});
      }
    }
  }
}

# return $NORMALIZED_ENTRY_NODE, the identifier corresponding to
# the internal node referred to by menu entry $ENTRY
sub normalized_menu_entry_internal_node($)
{
  my $entry = shift;

  foreach my $content (@{$entry->{'contents'}}) {
    if ($content->{'type'} eq 'menu_entry_node') {
      if ($content->{'extra'}) {
        if (! $content->{'extra'}->{'manual_content'}) {
          return $content->{'extra'}->{'normalized'};
        }
      }
      return undef;
    }
  }
  return undef;
}

# Return $NODE where $NODE is the node referred to by menu entry $ENTRY.
sub _normalized_entry_associated_internal_node($$)
{
  my $entry = shift;
  my $identifier_target = shift;

  my $normalized_entry_node = normalized_menu_entry_internal_node($entry);

  if (defined($normalized_entry_node)) {
    return $identifier_target->{$normalized_entry_node};
  }
  return undef;
}

sub _register_menu_node_targets($$$)
{
  my $identifier_target = shift;
  my $node = shift;
  my $register = shift;

  if ($node->{'extra'}->{'menus'}) {
    foreach my $menu (@{$node->{'extra'}->{'menus'}}) {
      foreach my $menu_content (@{$menu->{'contents'}}) {
        if ($menu_content->{'type'}
            and $menu_content->{'type'} eq 'menu_entry') {
          my $menu_node
            = _normalized_entry_associated_internal_node($menu_content,
                                                         $identifier_target);
          $register->{$menu_node} = 1 if ($menu_node);
        }
      }
    }
  }
}

sub get_node_node_childs_from_sectioning
{
  my ($node) = @_;

  my @node_childs;

  if ($node->{'extra'}
      and $node->{'extra'}->{'associated_section'}) {
    my $associated_section = $node->{'extra'}->{'associated_section'};

    if ($associated_section->{'extra'}
        and $associated_section->{'extra'}->{'section_childs'}) {
      foreach my $child (@{$associated_section->{'extra'}->{'section_childs'}}) {
        if ($child->{'extra'} and $child->{'extra'}->{'associated_node'}) {
          push @node_childs, $child->{'extra'}->{'associated_node'};
        }
      }
    }
    # Special case for @top.  Gather all the children of the @part following
    # @top.
    if ($associated_section->{'cmdname'} eq 'top') {
      my $current = $associated_section;
      while ($current->{'extra'}->{'section_directions'}
             and $current->{'extra'}->{'section_directions'}->{'next'}) {
        $current = $current->{'extra'}->{'section_directions'}->{'next'};
        if ($current->{'cmdname'} and $current->{'cmdname'} eq 'part') {
          if ($current->{'extra'}->{'section_childs'}) {
            foreach my $child (@{$current->{'extra'}->{'section_childs'}}) {
              if ($child->{'extra'} and $child->{'extra'}->{'associated_node'}) {
                push @node_childs, $child->{'extra'}->{'associated_node'};
              }
            }
          }
        } elsif ($current->{'extra'}
                 and $current->{'extra'}->{'associated_node'}) {
          # for @appendix, and what follows, as it stops a @part, but is
          # not below @top
          push @node_childs, $current->{'extra'}->{'associated_node'};
        }
      }
    }
  }
  return @node_childs;
}

# In general should be called only after complete_node_tree_with_menus
# to try to generate menus automatically before checking.
sub check_nodes_are_referenced($)
{
  my $document = shift;

  my $customization_information = $document;
  my $nodes_list = $document->nodes_list();
  my $identifier_target = $document->labels_information();
  my $refs = $document->internal_references_information();
  my $registrar = $document->registrar();

  return unless ($nodes_list and scalar(@{$nodes_list}));

  my $top_node = $identifier_target->{'Top'};
  $top_node = $nodes_list->[0] if (!$top_node);

  my %referenced_nodes = ($top_node => 1);
  foreach my $node (@{$nodes_list}) {
    next if (!$node->{'extra'});
    # gather referenced nodes based on node pointers
    my $node_directions = $node->{'extra'}->{'node_directions'};
    if ($node_directions) {
      foreach my $direction (@node_directions_names) {
        if ($node_directions->{$direction}
            and not $node_directions->{$direction}
                                   ->{'extra'}->{'manual_content'}) {
          $referenced_nodes{$node_directions->{$direction}} = 1;
        }
      }
    }
    if ($node->{'extra'}->{'menus'}) {
      _register_menu_node_targets($identifier_target, $node,
                                 \%referenced_nodes);
    } else {
      # If an automatic menu can be setup, consider that all
      # the nodes appearing in the automatic menu are referenced.
      # Note that the menu may not be actually setup, but
      # it is better not to warn for nothing.
      my $automatic_directions
        = (not ($node->{'args'} and scalar(@{$node->{'args'}}) > 1));
      if ($automatic_directions) {
        my @node_childs = get_node_node_childs_from_sectioning($node);
        foreach my $node_child (@node_childs) {
          $referenced_nodes{$node_child} = 1;
        }
      }
    }
  }

  # consider nodes in internal @*ref commands to be referenced
  if (defined($refs)) {
    foreach my $ref (@$refs) {
      if ($ref->{'args'} and scalar(@{$ref->{'args'}})
          and $ref->{'args'}->[0]->{'extra'}) {
        my $label_arg = $ref->{'args'}->[0];
        my $label_normalized = $label_arg->{'extra'}->{'normalized'};
        if ($label_normalized) {
          my $node_target = $identifier_target->{$label_normalized};
          if ($node_target and $node_target->{'cmdname'} eq 'node') {
            $referenced_nodes{$node_target} = 1;
          }
        }
      }
    }
  }

  foreach my $node (@{$nodes_list}) {
    # it is normal that a redundant node is not referenced
    if ($node->{'extra'}->{'is_target'}
        and not exists($referenced_nodes{$node})) {
      $registrar->line_warn($customization_information,
                            sprintf(__("node `%s' unreferenced"),
                                    target_element_to_texi_label($node)),
                            $node->{'source_info'});
    }
  }
}

# In $NODE, find the first menu entry node in the first menu.  If the
# node in menu refers to a target element in the document, return that
# element
sub _first_menu_node($$)
{
  my $node = shift;
  my $identifier_target = shift;
  if ($node->{'extra'}->{'menus'}) {
    foreach my $menu (@{$node->{'extra'}->{'menus'}}) {
      foreach my $menu_content (@{$menu->{'contents'}}) {
        if ($menu_content->{'type'}
            and $menu_content->{'type'} eq 'menu_entry') {
          my $menu_node
            = _normalized_entry_associated_internal_node($menu_content,
                                                        $identifier_target);
          # an internal node
          return $menu_node if ($menu_node);
          foreach my $content (@{$menu_content->{'contents'}}) {
            if ($content->{'type'} eq 'menu_entry_node') {
              # a reference to an external manual
              if ($content->{'extra'}
                  and $content->{'extra'}->{'manual_content'}) {
                return $content
              }
              last;
            }
          }
        }
      }
    }
  }
  return undef;
}

# set menu_directions
sub set_menus_node_directions($)
{
  my $document = shift;

  my $customization_information = $document;
  my $global_commands = $document->global_commands_information();
  my $nodes_list = $document->nodes_list();
  my $identifier_target = $document->labels_information();
  my $registrar = $document->registrar();

  return undef unless ($nodes_list and scalar(@{$nodes_list}));

  my $check_menu_entries = (!$customization_information->get_conf('novalidate')
      and $customization_information->get_conf('FORMAT_MENU') eq 'menu');

  # First go through all the menus and set menu up, menu next and menu prev,
  # and warn for unknown nodes.
  # Remark: since the @menu are only checked if they are in @node,
  # menu entries before the first node, or @menu nested inside
  # another command such as @format, may be treated slightly
  # differently; at least, there are no error messages for them.
  #
  foreach my $node (@{$nodes_list}) {
    if ($node->{'extra'}->{'menus'}) {
      if (@{$node->{'extra'}->{'menus'}} > 1) {
        foreach my $menu (@{$node->{'extra'}->{'menus'}}[1 .. $#{$node->{'extra'}->{'menus'}}]) {
          $registrar->line_warn($customization_information,
                 sprintf(__("multiple \@%s"),
                         $menu->{'cmdname'}), $menu->{'source_info'});
        }
      }
      foreach my $menu (@{$node->{'extra'}->{'menus'}}) {
        my $previous_node;
        foreach my $menu_content (@{$menu->{'contents'}}) {
          if ($menu_content->{'type'}
              and $menu_content->{'type'} eq 'menu_entry') {
            my $menu_node;
            foreach my $content (@{$menu_content->{'contents'}}) {
              if ($content->{'type'} eq 'menu_entry_node') {
                if ($content->{'extra'}) {
                  if (!$content->{'extra'}->{'manual_content'}) {
                    if ($check_menu_entries) {
                      _check_menu_entry($registrar, $customization_information,
                                        $identifier_target, 'menu',
                                        $menu_content, $content);
                    }
                    if (defined($content->{'extra'}->{'normalized'})) {
                      $menu_node
                        = $identifier_target->{$content->{'extra'}->{'normalized'}};
                      if ($menu_node) {
                        $menu_node->{'extra'}->{'menu_directions'} = {}
                           if (!$menu_node->{'extra'}->{'menu_directions'});
                        $menu_node->{'extra'}->{'menu_directions'}->{'up'} = $node;
                      }
                    }
                  } else {
                    $menu_node = $content;
                  }
                }
                last;
              }
            }
            if ($menu_node) {
              if ($previous_node) {
                if (!$menu_node->{'extra'}->{'manual_content'}) {
                  $menu_node->{'extra'}->{'menu_directions'} = {}
                     if (!$menu_node->{'extra'}->{'menu_directions'});
                  $menu_node->{'extra'}->{'menu_directions'}->{'prev'}
                       = $previous_node;
                }
                if (!$previous_node->{'extra'}->{'manual_content'}) {
                  $previous_node->{'extra'}->{'menu_directions'} = {}
                     if (!$previous_node->{'extra'}->{'menu_directions'});
                  $previous_node->{'extra'}->{'menu_directions'}->{'next'}
                            = $menu_node;
                }
              }
              $previous_node = $menu_node;
            }
          }
        } # end menu
      }
    }
  }
  # Check @detailmenu
  if ($check_menu_entries and $global_commands->{'detailmenu'}) {
    foreach my $detailmenu (@{$global_commands->{'detailmenu'}}) {
      foreach my $menu_content (@{$detailmenu->{'contents'}}) {
        if ($menu_content->{'type'}
            and $menu_content->{'type'} eq 'menu_entry') {
          foreach my $content (@{$menu_content->{'contents'}}) {
            if ($content->{'type'} eq 'menu_entry_node') {
              if (not ($content->{'extra'}
                       and $content->{'extra'}->{'manual_content'})) {
                _check_menu_entry($registrar, $customization_information,
                    $identifier_target, 'detailmenu', $menu_content, $content);
              }
              last;
            }
          }
        }
      }
    }
  }
}

# determine node found through section directions, usually
# from section_directions.  It could also be from
# toplevel_directions if going through parts, except for @top
# as prev or next.
sub _section_direction_associated_node($$)
{
  my $section = shift;
  my $direction = shift;

  foreach my $direction_base ('section', 'toplevel') {
    if ($section->{'extra'}->{$direction_base.'_directions'}
        and $section->{'extra'}->{$direction_base.'_directions'}->{$direction}
        and $section->{'extra'}->{$direction_base.'_directions'}->{$direction}->{'extra'}
        and ($direction_base ne 'toplevel'
             or $direction eq 'up'
             or $section->{'extra'}->{$direction_base.'_directions'}->{$direction}
                                                         ->{'cmdname'} ne 'top')
       and $section->{'extra'}->{$direction_base.'_directions'}->{$direction}
                                             ->{'extra'}->{'associated_node'}) {
         return $section->{'extra'}->{$direction_base.'_directions'}->{$direction}
                                               ->{'extra'}->{'associated_node'};
    }
  }
  return undef;
}

# complete automatic directions with menus (and first node
# for Top node).
# Checks on structure related to menus.
sub complete_node_tree_with_menus($)
{
  my $document = shift;

  my $customization_information = $document;
  my $nodes_list = $document->nodes_list();
  my $identifier_target = $document->labels_information();
  my $registrar = $document->registrar();

  return unless ($nodes_list and @{$nodes_list});

  my %cached_menu_nodes;
  # Go through all the nodes
  foreach my $node (@{$nodes_list}) {
    my $automatic_directions
      = (not ($node->{'args'} and scalar(@{$node->{'args'}}) > 1));

    my $normalized = $node->{'extra'}->{'normalized'};
    my $menu_directions = $node->{'extra'}->{'menu_directions'};

    if ($automatic_directions) {

      my $node_directions = $node->{'extra'}->{'node_directions'};

      if ($normalized ne 'Top') {
        foreach my $direction (@node_directions_names) {
          # prev already defined for the node first Top node menu entry
          if ($direction eq 'prev' and $node_directions
              and $node_directions->{$direction}
              and $node_directions->{$direction}->{'extra'}
              and $node_directions->{$direction}
                                      ->{'extra'}->{'normalized'}
              and $node_directions->{$direction}
                                      ->{'extra'}->{'normalized'} eq 'Top') {
            next;
          }
          my $section = $node->{'extra'}->{'associated_section'};
          if ($section
              and $customization_information->get_conf(
                                             'CHECK_NORMAL_MENU_STRUCTURE')) {
            # Check consistency with section and menu structure
            my $direction_section = $section;

            # Prefer the section associated with a @part for node directions.
            if ($section->{'extra'}->{'part_associated_section'}) {
              $direction_section
                = $section->{'extra'}->{'part_associated_section'};
            }
            my $direction_associated_node
              = _section_direction_associated_node($direction_section, $direction);
            if ($direction_associated_node) {
              my $section_directions
                 = $direction_section->{'extra'}->{'section_directions'};

              my $menus;
              if ($section_directions
                  and $section_directions->{'up'}) {
                my $up_sec = $section_directions->{'up'};

                if ($up_sec->{'extra'}
                    and $up_sec->{'extra'}->{'associated_node'}) {
                  my $up_node = $up_sec->{'extra'}->{'associated_node'};
                  if ($up_node and $up_node->{'extra'}
                      and $up_node->{'extra'}->{'menus'}
                      and scalar(@{$up_node->{'extra'}->{'menus'}})) {
                    $menus = $up_node->{'extra'}->{'menus'};
                  }
                }
              }

              if ($menus
                  and (!$menu_directions
                       or !$menu_directions->{$direction})) {
                $registrar->line_warn($customization_information,
           sprintf(__("node %s for `%s' is `%s' in sectioning but not in menu"),
                          $direction,
                          target_element_to_texi_label($node),
                      target_element_to_texi_label($direction_associated_node)),
                                      $node->{'source_info'});
              }
            }
          }
          # Direction was not set with sections, use menus.  This allows
          # using only automatic direction for manuals without sectioning
          # commands but with explicit menus.
          if ((!$node_directions or !$node_directions->{$direction})
              and $menu_directions
              and $menu_directions->{$direction}
              and !$menu_directions->{$direction}
                                          ->{'extra'}->{'manual_content'}) {
            if ($customization_information->get_conf(
                                               'CHECK_NORMAL_MENU_STRUCTURE')
                and $section) {
              $registrar->line_warn($customization_information,
          sprintf(__("node `%s' is %s for `%s' in menu but not in sectioning"),
                target_element_to_texi_label(
                         $menu_directions->{$direction}),
                                   $direction,
                target_element_to_texi_label($node),
                  ),
                $node->{'source_info'});
            }
            $node->{'extra'}->{'node_directions'} = {}
               if (!$node->{'extra'}->{'node_directions'});
            $node->{'extra'}->{'node_directions'}->{$direction}
               = $menu_directions->{$direction};
          }
        }
      } elsif (not $node_directions
               or not $node_directions->{'next'}) {
        # use first menu entry if available as next for Top
        my $menu_child = _first_menu_node($node, $identifier_target);
        if ($menu_child) {
          $node->{'extra'}->{'node_directions'} = {}
             if (!$node->{'extra'}->{'node_directions'});
          $node->{'extra'}->{'node_directions'}->{'next'}
             = $menu_child;
          if (!$menu_child->{'extra'}->{'manual_content'}) {
            $menu_child->{'extra'}->{'node_directions'} = {}
              if (!$menu_child->{'extra'}->{'node_directions'});
            if (!$menu_child->{'extra'}->{'node_directions'}->{'prev'}) {
              $menu_child->{'extra'}->{'node_directions'}->{'prev'}
                = $node;
            }
          }
        } else {
          # use the first non top node as next for Top
          foreach my $first_non_top_node (@{$nodes_list}) {
            if ($first_non_top_node ne $node) {
              $node->{'extra'}->{'node_directions'} = {}
                 if (!$node->{'extra'}->{'node_directions'});
              $node->{'extra'}->{'node_directions'}->{'next'}
                  = $first_non_top_node;
              my $first_non_top_automatic
                = (not ($first_non_top_node->{'args'}
                        and scalar(@{$first_non_top_node->{'args'}}) > 1));
              if ($first_non_top_automatic) {
                $first_non_top_node->{'extra'}->{'node_directions'} = {}
                   if (!$first_non_top_node->{'extra'}->{'node_directions'});
                $first_non_top_node->{'extra'}->{'node_directions'}->{'prev'}
                    = $node;
              }
              last;
            }
          }
        }
      }
    }
    # check consistency between node pointer and node entries menu order
    if ($customization_information->get_conf('CHECK_NORMAL_MENU_STRUCTURE')
        and $normalized ne 'Top') {
      my $node_directions = $node->{'extra'}->{'node_directions'};
      if ($node_directions and $menu_directions) {
        foreach my $direction (@node_directions_names) {
          if ($node_directions->{$direction}
              and $menu_directions->{$direction}
              and $menu_directions->{$direction}
                ne $node_directions->{$direction}
              and not $menu_directions->{$direction}
                            ->{'extra'}->{'manual_content'}) {
            $registrar->line_warn($customization_information,
           sprintf(__("node %s pointer for `%s' is `%s' but %s is `%s' in menu"),
                  $direction,
                  target_element_to_texi_label($node),
                  target_element_to_texi_label(
                      $node_directions->{$direction}),
                  $direction,
                  target_element_to_texi_label(
                      $menu_directions->{$direction})),
                                  $node->{'source_info'});
          }
        }
      }
    }

    # check for node up / menu up mismatch
    if ($customization_information->get_conf('CHECK_MISSING_MENU_ENTRY')) {
      my $node_directions = $node->{'extra'}->{'node_directions'};
      my $up_node;
      if ($node_directions
          and $node_directions->{'up'}) {
        $up_node = $node_directions->{'up'};
      }
      if ($up_node
          # No check if node up is an external manual
          and not $up_node->{'extra'}->{'manual_content'}
          # no check for a redundant node, the node registered in the menu
          # was the main equivalent node
          and $node->{'extra'}->{'is_target'}
          # check only if there are menus
          and $up_node->{'extra'}->{'menus'}) {

        if (!$cached_menu_nodes{$up_node}) {
          $cached_menu_nodes{$up_node} = {};
          _register_menu_node_targets($identifier_target, $up_node,
                                      $cached_menu_nodes{$up_node});
        }
        if (!$cached_menu_nodes{$up_node}->{$node}) {
          $registrar->line_warn($customization_information,
           sprintf(
             __("node `%s' lacks menu item for `%s' despite being its Up target"),
             target_element_to_texi_label($up_node),
             target_element_to_texi_label($node)),
            $up_node->{'source_info'});
        }
      }
      # TODO check that the all the nodes are in a menu (except for Top)?
      # TODO check that node_up is not an external node (except for Top)?
    }
  }
}

# set node directions based on sectioning and @node explicit directions
sub nodes_tree($)
{
  my $document = shift;

  my $customization_information = $document;
  my $root = $document->tree();
  my $identifier_target = $document->labels_information();
  my $registrar = $document->registrar();

  my $top_node;
  my @nodes_list = ();
  # Go through all the nodes and set directions.
  foreach my $node (@{$root->{'contents'}}) {
    if (!$node->{'cmdname'} or $node->{'cmdname'} ne 'node'
        or !$node->{'extra'}
        or !defined($node->{'extra'}->{'normalized'})) {
      next;
    }
    push @nodes_list, $node;
    if ($node->{'extra'}->{'normalized'} eq 'Top'
        and $node->{'extra'}->{'is_target'}) {
      $top_node = $node;
    }
    my $automatic_directions
      = (not ($node->{'args'} and scalar(@{$node->{'args'}}) > 1));

    if ($automatic_directions) {
      if (!$top_node or $node ne $top_node) {
        foreach my $direction (@node_directions_names) {
          # prev already defined for the node first Top node menu entry
          if ($direction eq 'prev' and $node->{'extra'}->{'node_directions'}
              and $node->{'extra'}->{'node_directions'}->{$direction}
              and $node->{'extra'}->{'node_directions'}->{$direction}->{'extra'}
              and $node->{'extra'}->{'node_directions'}->{$direction}
                                        ->{'extra'}->{'normalized'}
              and $node->{'extra'}->{'node_directions'}->{$direction}
                                        ->{'extra'}->{'normalized'} eq 'Top') {
            next;
          }
          if ($node->{'extra'}->{'associated_section'}) {
            my $section = $node->{'extra'}->{'associated_section'};

            # Prefer the section associated with a @part for node directions.
            if ($section->{'extra'}->{'part_associated_section'}) {
              $section = $section->{'extra'}->{'part_associated_section'};
            }

            my $direction_associated_node
              = _section_direction_associated_node($section, $direction);
            if ($direction_associated_node) {
              $node->{'extra'}->{'node_directions'} = {}
                 if (!$node->{'extra'}->{'node_directions'});
              $node->{'extra'}->{'node_directions'}->{$direction}
                                                = $direction_associated_node;
            }
          }
        }
      } else {
        # Special case for Top node, use first section
        if ($node->{'extra'}->{'associated_section'}
            and $node->{'extra'}->{'associated_section'}
                                 ->{'extra'}->{'section_childs'}
            and $node->{'extra'}->{'associated_section'}
                                 ->{'extra'}->{'section_childs'}->[0]
            and $node->{'extra'}->{'associated_section'}
                             ->{'extra'}->{'section_childs'}->[0]->{'extra'}
            and $node->{'extra'}->{'associated_section'}
                          ->{'extra'}->{'section_childs'}->[0]
                                             ->{'extra'}->{'associated_node'}) {
          my $top_node_section_child
            = $node->{'extra'}->{'associated_section'}
                        ->{'extra'}->{'section_childs'}->[0]
                                             ->{'extra'}->{'associated_node'};
          $node->{'extra'}->{'node_directions'} = {}
              if (! $node->{'extra'}->{'node_directions'});
          $node->{'extra'}->{'node_directions'}->{'next'}
             = $top_node_section_child;

          my $first_section_child_automatic
             = (not ($top_node_section_child->{'args'}
                     and scalar(@{$top_node_section_child->{'args'}}) > 1));

          if ($first_section_child_automatic) {
            $top_node_section_child->{'extra'}->{'node_directions'} = {}
              if (! $top_node_section_child->{'extra'}->{'node_directions'});
            $top_node_section_child->{'extra'}->{'node_directions'}->{'prev'}
               = $node;
          }
        }
      }
    } else { # explicit directions
      for (my $i = 1; $i < scalar(@{$node->{'args'}}); $i++) {
        my $direction_element = $node->{'args'}->[$i];
        my $direction = $node_directions_names[$i-1];

        # external node
        if ($direction_element->{'extra'}
            and $direction_element->{'extra'}->{'manual_content'}) {
          $node->{'extra'}->{'node_directions'} = {}
             if (!defined($node->{'extra'}->{'node_directions'}));
          $node->{'extra'}->{'node_directions'}->{$direction}
             = $direction_element;
        } elsif ($direction_element->{'extra'}
                 and defined($direction_element->{'extra'}->{'normalized'})) {
          my $direction_normalized = $direction_element->{'extra'}->{'normalized'};
          if ($identifier_target->{$direction_normalized}) {
            my $node_target
               = $identifier_target->{$direction_normalized};
            $node->{'extra'}->{'node_directions'} = {}
               if (!defined($node->{'extra'}->{'node_directions'}));
            $node->{'extra'}->{'node_directions'}->{$direction} = $node_target;

            if (!$customization_information->get_conf('novalidate')
                and !Texinfo::Convert::Texinfo::check_node_same_texinfo_code(
                                 $node_target,
                                 $direction_element->{'extra'}->{'node_content'})) {
              $registrar->line_warn($customization_information,
                sprintf(
             __("%s pointer `%s' (for node `%s') different from %s name `%s'"),
                  $direction_texts{$direction},
                  link_element_to_texi($direction_element),
                  target_element_to_texi_label($node),
                                     $node_target->{'cmdname'},
                  target_element_to_texi_label($node_target)),
                $node->{'source_info'});
            }
          } else {
            if (!$customization_information->get_conf('novalidate')) {
              $registrar->line_error($customization_information,
                   sprintf(__("%s reference to nonexistent `%s'"),
                      $direction_texts{$direction},
                      link_element_to_texi($direction_element)),
                   $node->{'source_info'});
            }
          }
        }
      }
    }
  }
  return \@nodes_list;
}

# For each internal reference command, set the 'normalized' key, in the
# @*ref first argument or in 'menu_entry_node' extra.
sub associate_internal_references($)
{
  my $document = shift;

  my $customization_information = $document;

  my $identifier_target = $document->labels_information();
  my $refs = $document->internal_references_information();

  return if (!defined($refs));

  my $registrar = $document->registrar();

  foreach my $ref (@$refs) {
    my $label_element;
    if ($ref->{'type'} and $ref->{'type'} eq 'menu_entry_node') {
      $label_element = $ref;
    } else {
      $label_element = $ref->{'args'}->[0];
    }

    if ($label_element->{'extra'}
        and $label_element->{'extra'}->{'node_content'}) {
      my $normalized =
        Texinfo::Convert::NodeNameNormalization::convert_to_identifier(
            $label_element->{'extra'}->{'node_content'});
      $label_element->{'extra'}->{'normalized'} = $normalized
        if (defined($normalized) and $normalized ne '');
    }

    if ($ref->{'type'} and $ref->{'type'} eq 'menu_entry_node') {
      # similar messages are output in _check_menu_entry
      next;
    } elsif ($label_element->{'extra'}) {
      my $normalized = $label_element->{'extra'}->{'normalized'};
      if (!defined($normalized)
          or !defined($identifier_target->{$normalized})) {
        if (!$customization_information->get_conf('novalidate')) {
          $registrar->line_error($customization_information,
                     sprintf(__("\@%s reference to nonexistent node `%s'"),
                             $ref->{'cmdname'},
                             link_element_to_texi($label_element)),
                                 $ref->{'source_info'});
        }
      } else {
        my $node_target = $identifier_target->{$normalized};
        if (!$customization_information->get_conf('novalidate')
            and !Texinfo::Convert::Texinfo::check_node_same_texinfo_code(
                               $node_target,
                               $label_element->{'extra'}->{'node_content'})) {
          $registrar->line_warn($customization_information,
             sprintf(__("\@%s to `%s', different from %s name `%s'"),
                     $ref->{'cmdname'},
                     link_element_to_texi($label_element),
                     $node_target->{'cmdname'},
                     target_element_to_texi_label($node_target)),
                                $ref->{'source_info'});
        }
      }
    }
  }
}

sub number_floats($)
{
  my $document = shift;

  my $floats = $document->floats_information();

  return if (!defined($floats));

  foreach my $style (keys(%$floats)) {
    my $float_index = 0;
    my $current_chapter;
    my $nr_in_chapter = 0;
    foreach my $float (@{$floats->{$style}}) {
      next if (!$float->{'extra'}
               or !defined($float->{'extra'}->{'normalized'}));
      $float_index++;
      my $number;
      if ($float->{'extra'}->{'float_section'}) {
        my $up = $float->{'extra'}->{'float_section'};
        while ($up->{'extra'}->{'section_directions'}
               and $up->{'extra'}->{'section_directions'}->{'up'}
               and defined($up->{'extra'}->{'section_directions'}->{'up'}
                                                                 ->{'cmdname'})
               and $command_structuring_level{
                 $up->{'extra'}->{'section_directions'}->{'up'}->{'cmdname'}}) {
          $up = $up->{'extra'}->{'section_directions'}->{'up'};
        }
        if (!defined($current_chapter) or $current_chapter ne $up) {
          $nr_in_chapter = 0;
          $current_chapter = $up;
        }
        if (!$unnumbered_commands{$up->{'cmdname'}}) {
          $nr_in_chapter++;
          $number = $up->{'extra'}->{'section_number'} .
            '.' . $nr_in_chapter;
        }
      }
      $number = "$float_index" if (!defined($number));
      $float->{'extra'} = {} if (! $float->{'extra'});
      $float->{'extra'}->{'float_number'} = $number;
    }
  }
}

sub section_level_adjusted_command_name($)
{
  my $element = shift;

  my $heading_level = $element->{'extra'}->{'section_level'};
  my $command;
  if ($heading_level ne $Texinfo::Common::command_structuring_level{
                                                       $element->{'cmdname'}}) {
    $command
      = $Texinfo::Common::level_to_structuring_command{$element->{'cmdname'}}
                                                            ->[$heading_level];
  } else {
    $command = $element->{'cmdname'};
  }
  return $command;
}

# returns the texinfo tree corresponding to a single menu entry pointing
# to $NODE.
# if $USE_SECTIONS is set, use the section name as menu entry name.
sub new_node_menu_entry
{
  my ($node, $use_sections) = @_;

  my $node_name_element;
  if ($node->{'extra'} and $node->{'extra'}->{'is_target'}) {
    $node_name_element = $node->{'args'}->[0];
  }

  # can happen with node without argument or with empty argument
  return undef if (not defined($node_name_element));

  my $menu_entry_name;
  if ($use_sections) {
    my $name_element;
    if (defined $node->{'extra'}->{'associated_section'}) {
      $name_element
        = $node->{'extra'}->{'associated_section'}->{'args'}->[0];
    } else {
      $name_element = $node_name_element; # shouldn't happen
    }

    $menu_entry_name
     = Texinfo::Common::copy_contentsNonXS($name_element, 'menu_entry_name');
    foreach my $content (@{$menu_entry_name->{'contents'}}) {
      $content->{'parent'} = $menu_entry_name;
    }
    # colons could be doubly protected, but it is probably better
    # than not protected at all.
    Texinfo::Common::protect_colon_in_tree($menu_entry_name);
  }

  my $entry = {'type' => 'menu_entry'};

  my $menu_entry_node
   = Texinfo::Common::copy_contentsNonXS($node_name_element, 'menu_entry_node');
  foreach my $content (@{$menu_entry_node->{'contents'}}) {
    $content->{'parent'} = $menu_entry_node;
  }

  # do not protect here, as it could already be protected, and
  # the menu entry should be the same as the node
  #Texinfo::Common::protect_colon_in_tree($menu_entry_node);

  my $description = {'type' => 'menu_entry_description',
                     'contents' => []};
  $description->{'contents'}->[0] = {'type' => 'preformatted',
                                     'parent' => $description,
                                     'contents' => []};
  $description->{'contents'}->[0]->{'contents'}->[0] = {'text' => "\n",
                           'parent' => $description->{'contents'}->[0]};

  if ($use_sections) {
    $entry->{'contents'}
     = [{'text' => '* ', 'type' => 'menu_entry_leading_text'},
        $menu_entry_name,
        {'text' => ': ', 'type' => 'menu_entry_separator'},
        $menu_entry_node,
        {'text' => '.', 'type' => 'menu_entry_separator'},
        $description];
  } else {
    $entry->{'contents'}
     = [{'text' => '* ', 'type' => 'menu_entry_leading_text'},
        $menu_entry_node,
        {'text' => '::', 'type' => 'menu_entry_separator'},
        $description];
  }

  foreach my $arg(@{$entry->{'contents'}}) {
    $arg->{'parent'} = $entry;
  }

  my $parsed_node_manual
    = Texinfo::Common::parse_node_manual($menu_entry_node, 1);
  if (defined($parsed_node_manual)) {
    foreach my $label_info (keys(%$parsed_node_manual)) {
      $menu_entry_node->{'extra'} = {} if (!$menu_entry_node->{'extra'});
      $menu_entry_node->{'extra'}->{$label_info}
         = $parsed_node_manual->{$label_info};

      if ($label_info eq 'node_content') {
        $menu_entry_node->{'extra'}->{'normalized'}
          = Texinfo::Convert::NodeNameNormalization::convert_to_identifier(
             $menu_entry_node->{'extra'}->{$label_info});
      }
    }
  }

  return $entry;
}

sub new_block_command($$)
{
  my $element = shift;
  my $command_name = shift;

  $element->{'cmdname'} = $command_name;

  $element->{'args'} = [{'type' => 'block_line_arg', 'parent' => $element,
                           'info' => { 'spaces_after_argument' =>
                                        {'text' => "\n",}}}];

  my $end = {'cmdname' => 'end', 'parent' => $element,
             'extra' => {'text_arg' => $command_name}};
  $end->{'info'} = {'spaces_before_argument' =>
                                         {'text' => ' '}};
  my $end_args = {'type' => 'line_arg', 'parent' => $end,
                  'contents' => [],
                  'info' => {'spaces_after_argument' =>
                                        {'text' => "\n"}}};
  $end->{'args'} = [$end_args];

  my $command_name_text = {'text' => $command_name,
                           'parent' => $end_args};
  push @{$end_args->{'contents'}}, $command_name_text;

  push @{$element->{'contents'}}, $end;

  return $element;
}

sub _insert_menu_comment_content($$$;$)
{
  my $menu_contents = shift;
  my $position = shift;
  my $inserted_element = shift;
  my $no_leading_empty_line = shift;

  my $menu_comment = {'type' => 'menu_comment', 'contents' => []};
  my $preformatted = {'type' => 'preformatted', 'parent' => $menu_comment,
                      'contents' => []};
  $menu_comment->{'contents'}->[0] = $preformatted;

  if (!$no_leading_empty_line) {
    push @{$preformatted->{'contents'}},
           {'text' => "\n", 'type' => 'empty_line'};
  }

  push @{$preformatted->{'contents'}},
          @{$inserted_element->{'contents'}},
          {'text' => "\n", 'type' => 'empty_line'},
          {'text' => "\n", 'type' => 'empty_line'};

  foreach my $content (@{$preformatted->{'contents'}}) {
    $content->{'parent'} = $preformatted;
  }
  splice (@$menu_contents, $position, 0, $menu_comment);
}

# $CUSTOMIZATION_INFORMATION is only used for the top menu
sub new_complete_node_menu
{
  my ($node, $customization_information, $use_sections) = @_;

  my @node_childs = get_node_node_childs_from_sectioning($node);

  if (not scalar(@node_childs)) {
    return undef;
  }

  # only holds contents here, will be turned into a proper block
  # command in new_block_command
  my $section = $node->{'extra'}->{'associated_section'};
  my $new_menu = {'contents' => [], 'parent' => $section};
  foreach my $child (@node_childs) {
    my $entry = new_node_menu_entry($child, $use_sections);
    if (defined($entry)) {
      $entry->{'parent'} = $new_menu;
      push @{$new_menu->{'contents'}}, $entry;
    }
  }

  # in top node, insert menu comments for parts and for the first appendix
  if ($section and $section->{'cmdname'} eq 'top'
      and $customization_information
      and $node->{'extra'}->{'normalized'}
      and $node->{'extra'}->{'normalized'} eq 'Top') {
    my $content_index = 0;
    my $in_appendix = 0;
    foreach my $child (@node_childs) {
      # can happen with node without argument or with empty argument
      if (!$child->{'extra'} or !$child->{'extra'}->{'is_target'}) {
        next;
      }

      my $child_section = $child->{'extra'}->{'associated_section'};
      if ($child_section) {
        my $part_added = 0;
        my $associated_part = $child_section->{'extra'}->{'associated_part'};
        if ($associated_part and $associated_part->{'args'}
            and scalar(@{$associated_part->{'args'}}) > 0) {
          my $part_title_copy
            = Texinfo::Common::copy_contentsNonXS(
                                $associated_part->{'args'}->[0]);
          my $part_title
           = Texinfo::Translations::gdt('Part: {part_title}',
                    $customization_information->get_conf('documentlanguage'),
                                     {'part_title' => $part_title_copy},
                              $customization_information->get_conf('DEBUG'));
          _insert_menu_comment_content($new_menu->{'contents'}, $content_index,
                                       $part_title, ($content_index == 0));
          $content_index++;
          $part_added = 1;
        }
        if (!$in_appendix
            and $appendix_commands{$child_section->{'cmdname'}}) {
          my $appendix_title
             = Texinfo::Translations::gdt('Appendices',
                   $customization_information->get_conf('documentlanguage'),
                      undef, $customization_information->get_conf('DEBUG'));
          _insert_menu_comment_content($new_menu->{'contents'}, $content_index,
                                       $appendix_title,
                                       ($content_index == 0 or $part_added));
          $content_index++;
          $in_appendix++;
        }
      }
      $content_index++;
    }
  }

  new_block_command($new_menu, 'menu');

  return $new_menu;
}

# used in Plaintext converter and tree transformations
sub new_master_menu($$$;$)
{
  my $customization_information = shift;
  my $identifier_target = shift;
  my $menus = shift;
  my $use_sections = shift;

  # only holds contents here, will be turned into a proper block
  # command in new_block_command
  my $master_menu = {'contents' => []};
  if (defined($menus) and scalar(@$menus)) {
    foreach my $menu (@$menus) {
      foreach my $entry (@{$menu->{'contents'}}) {
        if ($entry->{'type'} and $entry->{'type'} eq 'menu_entry') {
          my $node
               = _normalized_entry_associated_internal_node($entry,
                                                        $identifier_target);
          if ($node) {
            push @{$master_menu->{'contents'}}, _print_down_menus($node,
                                           $identifier_target, $use_sections);
          }
        }
      }
    }
  }
  if (scalar(@{$master_menu->{'contents'}})) {
    # There is a menu comment with a preformatted added in front of each
    # detailed menu section with the node section name
    my $first_preformatted = $master_menu->{'contents'}->[0]->{'contents'}->[0];
    my $master_menu_title
           = Texinfo::Translations::gdt(' --- The Detailed Node Listing ---',
                    $customization_information->get_conf('documentlanguage'),
                  undef, $customization_information->get_conf('DEBUG'));
    my @master_menu_title_contents;
    foreach my $content (@{$master_menu_title->{'contents'}}, {'text' => "\n"}) {
      $content->{'parent'} = $first_preformatted;
      push @master_menu_title_contents, $content;
    }
    unshift @{$first_preformatted->{'contents'}}, @master_menu_title_contents;
    foreach my $content (@{$master_menu->{'contents'}}) {
      $content->{'parent'} = $master_menu;
    }
    Texinfo::Structuring::new_block_command($master_menu, 'detailmenu');
    return $master_menu;
  } else {
    return undef;
  }
}

# TODO document
sub new_complete_menu_master_menu($$$)
{
  my $self = shift;
  my $labels = shift;
  my $node = shift;

  my $menu_node = new_complete_node_menu($node, $self);
  if ($menu_node
      and $node->{'extra'}->{'normalized'}
      and $node->{'extra'}->{'normalized'} eq 'Top'
      and $node->{'extra'}->{'associated_section'}
      and $node->{'extra'}->{'associated_section'}->{'cmdname'} eq 'top') {
    my $detailmenu = new_master_menu($self, $labels, [$menu_node]);
    if ($detailmenu) {
      # add a blank line before the detailed node listing
      my $menu_comment = {'type' => 'menu_comment',
                          'parent' => $menu_node};
      push @{$menu_node->{'contents'}}, $menu_comment;
      my $preformatted = {'type' => 'preformatted',
                          'parent' => $menu_comment};
      push @{$menu_comment->{'contents'}}, $preformatted;
      my $empty_line = {'type' => 'after_menu_description_line',
                        'text' => "\n", 'parent' => $preformatted};
      push @{$preformatted->{'contents'}}, $empty_line;

      $detailmenu->{'parent'} = $menu_node;
      push @{$menu_node->{'contents'}}, $detailmenu;
    }
  }
  return $menu_node;
}

sub _print_down_menus($$;$);
sub _print_down_menus($$;$)
{
  my $node = shift;
  my $identifier_target = shift;
  my $use_sections = shift;

  my @menus;

  my @master_menu_contents;

  if ($node->{'extra'} and $node->{'extra'}->{'menus'}
        and scalar(@{$node->{'extra'}->{'menus'}})) {
    @menus = @{$node->{'extra'}->{'menus'}};
  } else {
    my $current_menu
      = Texinfo::Structuring::new_complete_node_menu($node, undef,
                                                     $use_sections);
    if (defined($current_menu)) {
      @menus = ( $current_menu );
    } else {
      return @master_menu_contents;
    }
  }

  my @node_children;
  foreach my $menu (@menus) {
    foreach my $entry (@{$menu->{'contents'}}) {
      if ($entry->{'type'} and $entry->{'type'} eq 'menu_entry') {
        push @master_menu_contents, Texinfo::Common::copy_treeNonXS($entry);
        # gather node children to recursively print their menus
        my $node
             = _normalized_entry_associated_internal_node($entry,
                                                          $identifier_target);
        if ($node) {
          push @node_children, $node;
        }
      }
    }
  }
  if (scalar(@master_menu_contents)) {
    # Prepend node title
    my $node_name_element;
    if ($node->{'extra'}->{'associated_section'}) {
      my $associated_section = $node->{'extra'}->{'associated_section'};
      $node_name_element = $associated_section->{'args'}->[0];
    } else {
      $node_name_element = $node->{'args'}->[0];
    }

    my $node_title_copy
      = Texinfo::Common::copy_contentsNonXS($node_name_element);

    _insert_menu_comment_content(\@master_menu_contents, 0,
                                 $node_title_copy, 0);

    # now recurse in the children
    foreach my $child (@node_children) {
      push @master_menu_contents, _print_down_menus($child, $identifier_target,
                                                    $use_sections);
    }
  }

  return @master_menu_contents;
}

# Return a list of output units.  Each output unit starts with a @node as its
# first content (except possibly the first one).  It is important that this
# function reassociates all the root commands such that the result does not
# depend on the previous association (if any).
sub split_by_node($)
{
  my $document = shift;
  my $root = $document->tree();

  my $output_units;

  my $current = { 'unit_type' => 'unit' };
  push @$output_units, $current;
  my @pending_parts = ();
  foreach my $content (@{$root->{'contents'}}) {
    if ($content->{'cmdname'} and $content->{'cmdname'} eq 'part') {
      push @pending_parts, $content;
      next;
    }
    if ($content->{'cmdname'} and $content->{'cmdname'} eq 'node') {
      if (not $current->{'unit_command'}) {
        $current->{'unit_command'} = $content;
      } else {
        $current = { 'unit_type' => 'unit', 'unit_command' => $content,
                    'tree_unit_directions' => {'prev' => $output_units->[-1]}};
        $output_units->[-1]->{'tree_unit_directions'} = {}
            if (! $output_units->[-1]->{'tree_unit_directions'});
        $output_units->[-1]->{'tree_unit_directions'}->{'next'} = $current;
        push @$output_units, $current;
      }
    }
    if (@pending_parts) {
      foreach my $part (@pending_parts) {
        push @{$current->{'unit_contents'}}, $part;
        $part->{'associated_unit'} = $current;
      }
      @pending_parts = ();
    }
    push @{$current->{'unit_contents'}}, $content;
    #if (defined($content->{'associated_unit'})) {
    #  print STDERR "Resetting node associated_unit for $content\n";
    #}
    $content->{'associated_unit'} = $current;
  }
  if (@pending_parts) {
    foreach my $part (@pending_parts) {
      push @{$current->{'unit_contents'}}, $part;
      $part->{'associated_unit'} = $current;
    }
    @pending_parts = ();
  }

  return $output_units;
}

# Return a list of output units.  Each output unit starts with the @node
# associated with a sectioning command or with the sectioning command if there
# is no associated node.  It is important that this function reassociates all
# the root commands such that the result does not depend on the previous
# association (if any).
sub split_by_section($)
{
  my $document = shift;
  my $root = $document->tree();

  my $output_units;

  my $current = { 'unit_type' => 'unit' };
  push @$output_units, $current;
  foreach my $content (@{$root->{'contents'}}) {
    my $new_section;
    if ($content->{'cmdname'} and $content->{'cmdname'} eq 'node'
        and $content->{'extra'}
        and $content->{'extra'}->{'associated_section'}) {
      $new_section = $content->{'extra'}->{'associated_section'};
    } elsif ($content->{'cmdname'} and $content->{'cmdname'} eq 'part'
             and $content->{'extra'}
             and $content->{'extra'}->{'part_associated_section'}) {
      $new_section = $content->{'extra'}->{'part_associated_section'};
    } elsif ($content->{'cmdname'} and $content->{'cmdname'} ne 'node'
             and $Texinfo::Commands::root_commands{$content->{'cmdname'}}) {
      $new_section = $content;
    }
    if ($new_section) {
      if (not defined($current->{'unit_command'})) {
        $current->{'unit_command'} = $new_section;
      } elsif ($new_section ne $current->{'unit_command'}) {
        $current = { 'unit_type' => 'unit',
                     'unit_command' => $new_section,
                     'tree_unit_directions' => {'prev' => $output_units->[-1]}};
        $output_units->[-1]->{'tree_unit_directions'} = {}
            if (! $output_units->[-1]->{'tree_unit_directions'});
        $output_units->[-1]->{'tree_unit_directions'}->{'next'} = $current;
        push @$output_units, $current;
      }
    }
    push @{$current->{'unit_contents'}}, $content;
    #if ($content->{'associated_unit'}) {
    #  print STDERR "Resetting section associated_unit for $content\n";
    #}
    $content->{'associated_unit'} = $current;
  }
  return $output_units;
}

sub _XS_unsplit($)
{
  my $document = shift;
  return -3;
}

# remove the association with document units
# NOTE not documented, but is internally used for tests only.
# In the situation where unsplit is called, in the test suite, it is
# always better to do it both for XS and perl.
sub unsplit($)
{
  my $document = shift;

  my $unsplit_needed = 0;
  my $XS_unsplit_needed = _XS_unsplit($document);
  if ($XS_unsplit_needed > 0) {
    $unsplit_needed = 1;
  }

  my $root = $document->tree();
  if (!$root->{'type'} or $root->{'type'} ne 'document_root'
      or !$root->{'contents'}) {
    return 0;
  }
  foreach my $content (@{$root->{'contents'}}) {
    if ($content->{'associated_unit'}) {
      delete $content->{'associated_unit'};
      $unsplit_needed = 1;
    }
  }
  return $unsplit_needed;
}

# does nothing in perl, the XS version reexports the output units
sub rebuild_output_units($)
{
  my $output_units = shift;
}

# Associate top-level units with pages according to the splitting
# specification.  Set 'first_in_page' on each unit to the unit
# that is the first in the output page.
sub split_pages($$)
{
  my $output_units = shift;
  my $split = shift;

  return undef if (!$output_units or !scalar(@$output_units));

  my $split_level;
  if (!$split) {
    foreach my $output_unit (@$output_units) {
      $output_unit->{'first_in_page'} = $output_units->[0];
    }
    return;
  } elsif ($split eq 'chapter') {
    $split_level = 1;
  } elsif ($split eq 'section') {
    $split_level = 2;
  } elsif ($split ne 'node') {
    warn "Unknown split specification: $split\n";
  }

  my $current_first_in_page;
  foreach my $output_unit (@$output_units) {
    my $level;
    my $section = _output_unit_section($output_unit);
    if (defined($section)) {
      $level = $section->{'extra'}->{'section_level'};
    }
    #print STDERR "level($split_level) $level "
    #       .output_unit_texi($output_unit)."\n";
    if (!defined($split_level) or (defined($level) and $split_level >= $level)
        or !$current_first_in_page) {
      $current_first_in_page = $output_unit;
    }
    $output_unit->{'first_in_page'} = $current_first_in_page;
  }
}

# Returns something associated to a label that can be used to setup a target
# to the label.  If the target is an external node, create the output unit here,
# if it is a node return the output unit that is supposed to be the
# target for links to the node.  Otherwise there is no such element (yet),
# for floats and anchor, return undef.
sub _label_target_unit_element($)
{
  my $label = shift;
  if ($label->{'extra'} and $label->{'extra'}->{'manual_content'}) {
    # setup an output_unit for consistency with regular output units
    my $external_node_unit = { 'unit_type' => 'external_node_unit',
                               'unit_command' => $label };
    return $external_node_unit;
  } elsif ($label->{'cmdname'} and $label->{'cmdname'} eq 'node') {
    return $label->{'associated_unit'};
  } else {
    # case of a @float or an @anchor, no target element defined at this stage
    return undef;
  }
}

sub _output_unit_section($)
{
  my $output_unit = shift;
  if (not defined($output_unit->{'unit_command'})) {
    return undef;
  }
  my $element = $output_unit->{'unit_command'};
  if ($element->{'cmdname'} eq 'node') {
    if ($element->{'extra'}
        and $element->{'extra'}->{'associated_section'}) {
      return $element->{'extra'}->{'associated_section'};
    } else {
      return undef;
    }
  } else {
    return $element;
  }
}

sub _output_unit_node($)
{
  my $output_unit = shift;
  if (not defined($output_unit->{'unit_command'})) {
    return undef;
  }
  my $element = $output_unit->{'unit_command'};
  if ($element->{'cmdname'} eq 'node') {
    return $element;
  } else {
    if ($element->{'extra'}
        and $element->{'extra'}->{'associated_node'}) {
      return $element->{'extra'}->{'associated_node'}
    } else {
      return undef;
    }
  }
}

# Do output units directions (like in texi2html) and store them
# in 'directions'.
# The directions are only created if pointing to other output units.
sub units_directions($$$)
{
  my $customization_information = shift;
  my $identifier_target = shift;
  my $output_units = shift;
  return if (!$output_units or !@$output_units);

  my $node_top = $identifier_target->{'Top'};
  foreach my $output_unit (@$output_units) {
    my $directions = {};
    $directions->{'This'} = $output_unit;
    $directions->{'Forward'} = $output_unit->{'tree_unit_directions'}->{'next'}
      if ($output_unit->{'tree_unit_directions'}
          and $output_unit->{'tree_unit_directions'}->{'next'}
          and defined($output_unit->{'tree_unit_directions'}->{'next'}
                                                               ->{'unit_type'})
          and $output_unit->{'tree_unit_directions'}->{'next'}
                                                  ->{'unit_type'} eq 'unit');
    $directions->{'Back'} = $output_unit->{'tree_unit_directions'}->{'prev'}
      if ($output_unit->{'tree_unit_directions'}
          and $output_unit->{'tree_unit_directions'}->{'prev'}
          and defined($output_unit->{'tree_unit_directions'}->{'prev'}
                                                               ->{'unit_type'})
          and $output_unit->{'tree_unit_directions'}->{'prev'}
                                                     ->{'unit_type'} eq 'unit');
    my $node = _output_unit_node($output_unit);
    if (defined($node)) {
      foreach my $direction(['NodeUp', 'up'], ['NodeNext', 'next'],
                            ['NodePrev', 'prev']) {
        $directions->{$direction->[0]}
           = _label_target_unit_element(
               $node->{'extra'}->{'node_directions'}->{$direction->[1]})
            if ($node->{'extra'}->{'node_directions'}
                and $node->{'extra'}->{'node_directions'}->{$direction->[1]});
      }
      # Now do NodeForward which is something like the following node.
      my $associated_section;
      my $automatic_directions
        = (not ($node->{'args'} and scalar(@{$node->{'args'}}) > 1));
      if ($automatic_directions and $node->{'extra'}
          and $node->{'extra'}->{'associated_section'}) {
        $associated_section = $node->{'extra'}->{'associated_section'};
      }
      my $menu_child = _first_menu_node($node, $identifier_target);
      if ($menu_child) {
        $directions->{'NodeForward'}
          = _label_target_unit_element($menu_child);
      } elsif ($associated_section
               and $associated_section->{'extra'}->{'section_childs'}
               and $associated_section->{'extra'}->{'section_childs'}->[0]) {
        $directions->{'NodeForward'}
          = $associated_section->{'extra'}
                  ->{'section_childs'}->[0]->{'associated_unit'};
      } elsif ($node->{'extra'}->{'node_directions'}
               and $node->{'extra'}->{'node_directions'}->{'next'}) {
        $directions->{'NodeForward'}
            = _label_target_unit_element(
                  $node->{'extra'}->{'node_directions'}->{'next'});
      } elsif ($node->{'extra'}->{'node_directions'}
               and $node->{'extra'}->{'node_directions'}->{'up'}) {
        my $up = $node->{'extra'}->{'node_directions'}->{'up'};
        my @up_list = ($node);
        # the condition with the up_list avoids infinite loops
        # the last condition stops when the Top node is reached.
        while (not (grep {$up eq $_} @up_list
                    or ($node_top and $up eq $node_top))) {
          if ($up->{'extra'}->{'node_directions'}
              and defined($up->{'extra'}->{'node_directions'}->{'next'})) {
            $directions->{'NodeForward'}
              = _label_target_unit_element(
                           $up->{'extra'}->{'node_directions'}->{'next'});
            last;
          }
          push @up_list, $up;
          last if (not $up->{'extra'}->{'node_directions'}
                   or not $up->{'extra'}->{'node_directions'}->{'up'});
          $up = $up->{'extra'}->{'node_directions'}->{'up'};
        }
      }

      if ($directions->{'NodeForward'}
          and $directions->{'NodeForward'}->{'unit_type'} eq 'unit'
          and (!$directions->{'NodeForward'}->{'directions'}
               or !$directions->{'NodeForward'}->{'directions'}
                                                  ->{'NodeBack'})) {
        $directions->{'NodeForward'}->{'directions'} = {}
            if (! $directions->{'NodeForward'}->{'directions'});
        $directions->{'NodeForward'}->{'directions'}
                                       ->{'NodeBack'} = $output_unit;
      }
    }
    my $section = _output_unit_section($output_unit);
    if (not defined($section)) {
      # If there is no associated section, find the previous element section.
      # Use the FastForward of this element.
      # Use it as FastBack if the section is top level, or use the FastBack.
      my $section_output_unit;
      my $current_unit = $output_unit;
      while ($current_unit->{'tree_unit_directions'}
             and $current_unit->{'tree_unit_directions'}->{'prev'}) {
        $current_unit = $current_unit->{'tree_unit_directions'}->{'prev'};
        $section = _output_unit_section($current_unit);
        if (defined($section)) {
          $section_output_unit = $current_unit;
          last;
        }
      }
      if ($section_output_unit) {
        if ($section_output_unit->{'directions'}->{'FastForward'}) {
          $directions->{'FastForward'}
            = $section_output_unit->{'directions'}->{'FastForward'};
        }
        if ($section->{'extra'}->{'section_level'} <= 1) {
          $directions->{'FastBack'} = $section_output_unit;
        } elsif ($section_output_unit->{'directions'}->{'FastBack'}) {
          $directions->{'FastBack'}
            = $section_output_unit->{'directions'}->{'FastBack'};
        }
      }
    } else {
      foreach my $direction(['Up', 'up'], ['Next', 'next'],
                            ['Prev', 'prev']) {
        # in most cases $section->{'extra'}->{'section_directions'}
        #          ->{$direction->[1]}
        #                 ->{'associated_unit'} is defined
        # but it may not be the case for the up of @top.
        # The section may be its own up in cases like
        #  @part part
        #  @chapter chapter
        # in that cas the direction is not set up
        $directions->{$direction->[0]}
         = $section->{'extra'}->{'section_directions'}->{$direction->[1]}
             ->{'associated_unit'}
          if ($section->{'extra'}->{'section_directions'}
           and $section->{'extra'}->{'section_directions'}->{$direction->[1]}
           and $section->{'extra'}->{'section_directions'}->{$direction->[1]}
                                           ->{'associated_unit'}
           and (!$section->{'associated_unit'}
                or $section->{'extra'}->{'section_directions'}->{$direction->[1]}
                    ->{'associated_unit'}
                       ne $section->{'associated_unit'}));
      }

      # fastforward is the next element on same level than the upper parent
      # element.
      my $up = $section;
      while ($up->{'extra'}->{'section_level'} > 1
             and $up->{'extra'}->{'section_directions'}
             and $up->{'extra'}->{'section_directions'}->{'up'}) {
        $up = $up->{'extra'}->{'section_directions'}->{'up'};
      }

      if ($up->{'extra'}->{'section_level'} < 1
          and $up->{'cmdname'} and $up->{'cmdname'} eq 'top'
          and $up->{'extra'}->{'section_childs'}
          and @{$up->{'extra'}->{'section_childs'}}) {
        $directions->{'FastForward'}
           = $up->{'extra'}->{'section_childs'}->[0]->{'associated_unit'};
      } elsif ($up->{'extra'}->{'toplevel_directions'}
               and $up->{'extra'}->{'toplevel_directions'}->{'next'}) {
        $directions->{'FastForward'}
          = $up->{'extra'}->{'toplevel_directions'}->{'next'}
                                 ->{'associated_unit'};
      } elsif ($up->{'extra'}->{'section_directions'}
               and $up->{'extra'}->{'section_directions'}->{'next'}) {
        $directions->{'FastForward'}
          = $up->{'extra'}->{'section_directions'}->{'next'}
                              ->{'associated_unit'};
      }
      # if the element isn't at the highest level, fastback is the
      # highest parent element
      if ($up and $up ne $section
          and $up->{'associated_unit'}) {
        $directions->{'FastBack'} = $up->{'associated_unit'};
      } elsif ($section->{'extra'}->{'section_level'} <= 1
               and $directions->{'FastForward'}) {
        # the element is a top level element, we adjust the next
        # toplevel element fastback
        $directions->{'FastForward'}->{'directions'} = {}
           if (! $directions->{'FastForward'}->{'directions'});
        $directions->{'FastForward'}->{'directions'}->{'FastBack'}
          = $output_unit;
      }
    }
    if ($output_unit->{'directions'}) {
      %{$output_unit->{'directions'}}
        = (%{$output_unit->{'directions'}}, %$directions);
    } else {
      $output_unit->{'directions'} = $directions;
    }
  }
  if ($customization_information->get_conf('DEBUG')) {
    foreach my $output_unit (@$output_units) {
      print STDERR 'Directions'
       # uncomment to show the perl object name
       #  . "($output_unit)"
         . ': '.print_output_unit_directions($output_unit)."\n";
    }
  }
}

sub units_file_directions($)
{
  my $output_units = shift;
  return if (!$output_units or !@$output_units);

  my $current_filename;
  my $first_unit_in_file;
  # need to gather the directions before the FirstInFile* directions
  # are added to the first element in the file.
  my @first_unit_in_file_directions;
  foreach my $output_unit (@$output_units) {
    if (defined($output_unit->{'unit_filename'})) {
      my $filename = $output_unit->{'unit_filename'};
      my $current_output_unit = $output_unit;
      if (not defined($current_filename)
          or $filename ne $current_filename) {
        $first_unit_in_file = $output_unit;
        @first_unit_in_file_directions
            = keys %{$output_unit->{'directions'}};
        $current_filename = $filename;
      }
      while ($current_output_unit->{'tree_unit_directions'}
             and $current_output_unit->{'tree_unit_directions'}->{'prev'}) {
        $current_output_unit
          = $current_output_unit->{'tree_unit_directions'}->{'prev'};
        if (defined($current_output_unit->{'unit_filename'})) {
          if ($current_output_unit->{'unit_filename'} ne $filename) {
            $output_unit->{'directions'}->{'PrevFile'}
                 = $current_output_unit;
            last;
          }
        } else {
          last;
        }
      }
      $current_output_unit = $output_unit;
      while ($current_output_unit->{'tree_unit_directions'}
             and $current_output_unit->{'tree_unit_directions'}->{'next'}) {
        $current_output_unit
          = $current_output_unit->{'tree_unit_directions'}->{'next'};
        if (defined($current_output_unit->{'unit_filename'})) {
          if ($current_output_unit->{'unit_filename'} ne $filename) {
            $output_unit->{'directions'}->{'NextFile'}
               = $current_output_unit;
            last;
          }
        } else {
          last;
        }
      }
    }
    # set the directions of the first elements in file, to
    # be used in footers for example
    if (defined($first_unit_in_file)) {
      foreach my $first_in_file_direction
                (@first_unit_in_file_directions) {
        $output_unit->{'directions'}
                                ->{'FirstInFile'.$first_in_file_direction}
          = $first_unit_in_file->{'directions'}
                                         ->{$first_in_file_direction};
      }
    }
  }
}

# used in debug messages
sub output_unit_texi($)
{
  my $output_unit = shift;
  if (!$output_unit) {
    return "UNDEF OUTPUT UNIT";
  }
  if (!defined($output_unit->{'unit_type'})) {
    # show the output_unit as element, as a possible bug is that
    # an element was passed in argument instead of an output unit
    return "unit $output_unit without type: ".
       Texinfo::Common::debug_print_element_details($output_unit, 1)
      .' '.Texinfo::Common::debug_print_output_unit($output_unit);
  }

  my $unit_command = $output_unit->{'unit_command'};

  if ($output_unit->{'unit_type'} eq 'external_node_unit') {
    return Texinfo::Convert::Texinfo::convert_to_texinfo(
                            {'contents' => $unit_command->{'contents'}});
  } elsif ($output_unit->{'unit_type'} eq 'special_unit') {
    return "_SPECIAL_UNIT: $output_unit->{'special_unit_variety'}";
  }

  if (!$unit_command) {
    # happens when there are only nodes and sections are used as elements
    return "No associated command (type $output_unit->{'unit_type'})";
  }
  return Texinfo::Convert::Texinfo::root_heading_command_to_texinfo(
                                                          $unit_command);
}

# Should be in the same order as relative_unit_direction_name
# in main/output_unit.c
my @relative_directions_order = ('This', 'Forward', 'Back', 'FastForward',
 'FastBack', 'Next', 'Prev', 'Up', 'SectionNext', 'SectionPrev',
 'SectionUp', 'NodeNext', 'NodePrev', 'NodeUp', 'NodeForward', 'NodeBack');
my @file_directions_order = ('PrevFile', 'NextFile');
my @all_directions_order
    = (@relative_directions_order, @file_directions_order,
       map {'FirstInFile'.$_} @relative_directions_order);

# Used for debugging and in test suite, but not generally useful. Not
# documented in pod section and not exportable as it should not, in
# general, be used.
sub print_output_unit_directions($)
{
  my $output_unit = shift;
  my $result = 'output unit: '.output_unit_texi($output_unit)."\n";

  if ($output_unit->{'directions'}) {
    #foreach my $direction (sort(keys(%{$output_unit->{'directions'}}))) {
    foreach my $direction (@all_directions_order) {
      if (defined($output_unit->{'directions'}->{$direction})) {
        $result .= "  $direction: ".
         output_unit_texi($output_unit->{'directions'}->{$direction})."\n";
      }
    }
  } else {
    $result .= "  NO DIRECTION\n";
  }
  return $result;
}

1;

__END__

=head1 NAME

Texinfo::Structuring - information on Texinfo::Document tree

=head1 SYNOPSIS

  use Texinfo::Structuring qw(sectioning_structure nodes_tree number_floats
    associate_internal_references split_by_node split_by_section split_pages
    units_directions units_file_directions);

  # $document is a parsed Texinfo::Document document, $tree is the
  # associated Texinfo document tree. $config is an object implementing
  # the get_conf() method.
  my $sections_list = sectioning_structure($document);
  my $identifier_target = $document->labels_information();
  my $global_commands = $document->global_commands_information();
  my $nodes_list = nodes_tree($document);
  set_menus_node_directions($document);
  complete_node_tree_with_menus($document);
  my $refs = $document->internal_references_information();
  check_nodes_are_referenced($document);
  associate_internal_references($document);
  number_floats($document->floats_information());
  my $output_units;
  if ($split_at_nodes) {
    $output_units = split_by_node($document);
  } else {
    $output_units = split_by_section($document);
  }
  split_pages($output_units, $split);
  units_directions($config, $identifier_target, $output_units);
  units_file_directions($output_units);

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

Texinfo::Structuring first allows to collect information on a Texinfo
document.  Thanks to C<sectioning_structure> the hierarchy of
sectioning commands is determined.  The directions implied by menus are
determined with C<set_menus_node_directions>.  The node tree is analysed
with C<nodes_tree>.  Nodes directions are completed with menu directions
with C<complete_node_tree_with_menus>.  Floats get their standard
numbering with C<number_floats> and internal references are matched up
with nodes, floats or anchors with C<associate_internal_references>.

The following methods depend on the output format, so are usually called
from converters.

It is also possible to associate top-level contents of the tree, which
consist in nodes and sectioning commands with output units that
group together a node and the next sectioning element.  With
C<split_by_node> nodes are considered to be the main sectioning elements,
while with C<split_by_section> the sectioning command elements are the
main elements.  The first mode is typical of Info format, while the second
corresponds to a traditional book.  The elements may be further split in
I<pages>, which are not pages as in book pages, but more like web pages,
and hold series of output units.

The output units may have directions to other output units prepared
by C<units_directions>.  C<units_file_directions> should also
set direction related to files, provided files are associated with
output units by the user.


=head1 METHODS

No method is exported in the default case.

Most methods takes a L<Texinfo::Report> C<$registrar> as argument for
error reporting.  Most also require Texinfo customization variables
information, which means an object implementing the C<get_conf> method, in
practice the main program configuration or a converter
(L<Texinfo::Convert::Converter/Getting and setting customization
variables>).  Other common input arguments such as target elements associated
to identifiers or refs are obtained from a parsed document, see
L<Texinfo::Document>.

=over

=item associate_internal_references($document)
X<C<associate_internal_references>>

Verify that internal references (C<@ref> and similar without fourth of
fifth argument and menu entries) have an associated node, anchor or float.
Set the I<normalized> key in the C<extra> hash of C<menu_entry_node> container
for menu entries and in the first argument C<extra> hash for internal
references C<@ref> and similar @-commands.

=item check_nodes_are_referenced($document)
X<C<check_nodes_are_referenced>>

Check that all the nodes are referenced (in menu, @*ref or node direction).

Should be called after C<complete_node_tree_with_menus> in order to
have the autogenerated menus available.

=item complete_node_tree_with_menus($document)
X<C<complete_node_tree_with_menus>>

Complete nodes directions with menu directions.  Check consistency
of menus, sectionning and nodes direction structures.

=item units_directions($customization_information, $identifier_target, $output_units)
X<C<units_directions>>

Directions are set up for the output units in the array reference
I<$output_units> given in argument. The corresponding hash is associated
to the C<directions> key. In this hash, keys correspond to directions
while values are output units.

The following directions are set up:

=over

=item This

The output unit itself.

=item Forward

Unit next.

=item Back

Previous output unit.

=item NodeForward

Following node output unit in reading order.  It is the next node unit, or the
first in menu or the next of the up node.

=item NodeBack

Preceding node output unit.

=item NodeUp

=item NodeNext

=item NodePrev

The up, next and previous node output unit.

=item Up

=item Next

=item Prev

The up, next and previous section output unit.

=item FastBack

For top level output units, the previous top level output unit.  For other
output units the up top level unit.  For example, for a chapter output unit it
is the previous chapter output unit, for a subsection output unit it is the
chapter output unit that contains the subsection.

=item FastForward

The next top level output unit.

=back

=item units_file_directions($output_units)
X<C<units_file_directions>>

In the directions reference described above for C<units_directions>,
sets the I<PrevFile> and I<NextFile> directions to the output units in
previous and following files.

It also sets I<FirstInFile*> directions for all the output units by using
the directions of the first output unit in file.  So, for example,
I<FirstInFileNodeNext> is the output unit associated to the next node
of the first output unit node in the file for each output unit in the file.

The API for association of pages/output units to files is not defined yet.

=item @children_nodes = get_node_node_childs_from_sectioning($node)
X<C<get_node_node_childs_from_sectioning>>

I<$node> is a node tree element.  Find the node I<$node> children based
on the sectioning structure.  For the node associated with C<@top>
sectioning command, the sections associated with parts are considered.

=item new_block_command($element, $command_name)
X<C<new_block_command>>

Complete I<$element> by adding the I<$command_name>, the command line
argument and C<@end> to turn the element to a proper block command.

=item $new_menu = new_complete_node_menu($node, $customization_information, $use_sections)
X<C<new_complete_node_menu>>

Returns a texinfo tree menu for node I<$node>, pointing to the children
of the node obtained with the sectioning structure.  If I<$use_sections>
is set, use section names for the menu entry names.
I<$customization_information>, if defined, should hold information
needed for translations.  Translations are only needed when generating the
top node menu.

=item $detailmenu = new_master_menu($customization_information, $identifier_target, $menus)
X<C<new_master_menu>>

Returns a detailmenu tree element formatted as a master node.
I<$menus> is an array reference containing the regular menus of the Top node.
I<$customization_information>, if defined, should hold information
needed for translations.

=item $entry = new_node_menu_entry($node, $use_sections)
X<C<new_node_menu_entry>>

Returns the texinfo tree corresponding to a single menu entry pointing to
I<$node>.  If I<$use_sections> is set, use the section name for the menu
entry name.  Returns C<undef> if the node argument is missing.

=item $nodes_list = nodes_tree($document)
X<C<nodes_tree>>

Goes through nodes in I<$document> tree and set directions.  Returns the
list of nodes.

This functions sets, in the C<extra> node element hash:

=over

=item node_directions

Hash reference with I<up>, I<next> and I<prev> keys associated to
elements corresponding to node line directions.

=back

=item number_floats($float_information)
X<C<number_floats>>

Number the floats as described in the Texinfo manual.  Sets
the I<float_number> key in the C<extra> hash of the float
tree elements.

=item $command_name = section_level_adjusted_command_name($element)
X<C<section_level_adjusted_command_name>>

Return the sectioning command name corresponding to the sectioning
element I<$element>, adjusted in order to take into account raised
and lowered sections, when needed.

=item $sections_list = sectioning_structure($document)
X<C<sectioning_structure>>

This function goes through the parsed document tree and gather information
on the document structure for sectioning commands.  It returns a reference
on the sections elements list.

It sets section elements C<extra> hash values:

=over

=item section_level

The level in the sectioning tree hierarchy.  0 is for C<@top> or
C<@part>, 1 for C<@chapter>, C<@appendix>...  This level is corrected
by C<@raisesections> and C<@lowersections>.

=item section_number

The sectioning element number.

=item section_childs

An array holding sectioning elements children of the element.

=item section_directions

Hash reference with I<up>, I<next> and I<prev> keys associated to
elements corresponding to sectioning structure directions.

=item toplevel_directions

Hash reference with I<up>, I<next> and I<prev> keys associated to
elements corresponding to toplevel sectioning structure directions,
for elements like C<@top>, C<@chapter>, C<@appendix>, not taking into
account C<@part> elements.

=back

An element is created and used as the root of the sectioning commands tree.
This element is associated to the C<extra> I<sectioning_root> key of the first
section element of the sections list.  It is also at the top of the tree when
following the I<up> I<section_directions>.

=item set_menus_node_directions($document);
X<C<set_menus_node_directions>>

Goes through menu and set directions.

This functions sets, in the C<extra> node element hash reference:

=over

=item menu_directions

Hash reference with I<up>, I<next> and I<prev> keys associated to
elements corresponding to menu directions.

=back

=item $output_units = split_by_node($document)
X<C<split_by_node>>

Returns a reference array of output units where a node is associated to
the following sectioning commands.  Sectioning commands without nodes
are also with the previous node, while nodes without sectioning commands
are alone in their output units.

Output units are hash references with with type I<unit>, the node command
associated with the element is associated to the C<unit_command> key,
the associated nodes and sectioning tree elements are in the array
associated with the C<contents> key.  The associated elements have
an C<associated_unit> key that points to the associated output unit.

Output units also have directions in the C<tree_unit_directions>
hash reference, namely I<next> and I<prev> pointing to the
previous and the next output unit.

=item $output_units = split_by_section($document)
X<C<split_by_section>>

Similarly with C<split_by_node>, returns an array of output units.  This
time, lone nodes are associated with the previous sections and lone
sections makes up an output unit.

The hash keys set are the same, except that I<unit_command> is the sectioning
command associated with the output unit.

=item $pages = split_pages($output_units, $split)
X<C<split_pages>>

The output units from the array reference argument have a
I<first_in_page> value set to the first output unit in the group,
and based on the value of I<$split>.  The possible values for
I<$split> are

=over

=item chapter

The output units are split at chapter or other toplevel sectioning commands.

=item node

Each element has its own output unit.

=item section

The output units are split at sectioning commands below chapter.

=item value evaluating to false

No splitting, only one page is returned, holding all the output units.

=back

=item warn_non_empty_parts($document)
X<C<warn_non_empty_parts>>

Register a warning in for each C<@part> in global commands information of
I<$document> that is not empty.

=back

=head1 SEE ALSO

L<Texinfo manual|http://www.gnu.org/s/texinfo/manual/texinfo/>,
L<Texinfo::Document>.

=head1 AUTHOR

Patrice Dumas, E<lt>pertusus@free.frE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2010- Free Software Foundation, Inc.  See the source file for
all copyright years.

This library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at
your option) any later version.

=cut

