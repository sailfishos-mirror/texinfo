# TreeElementConverter.pm: functions for Converters using TreeElement
#
# Copyright 2011-2025 Free Software Foundation, Inc.
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

# The methods in this file are only needed for the TreeElement and Reader
# interfaces.  Some functions are pure Perl, some are useful for XS
# overriding, to call C code that registers Perl tree elements and add
# keys be able to find the document and C element in XS code.
# The functions correspond to functions in Texinfo::Convert::Converter,
# Texinfo::Common, Texinfo::Convert::Utils and Texinfo::Structuring.

package Texinfo::Convert::TreeElementConverter;

use 5.006;
use strict;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

use Carp qw(cluck confess);

use Texinfo::XSLoader;

use Texinfo::Convert::TreeElementConverterXS;

use Texinfo::Commands;
use Texinfo::CommandsValues;
use Texinfo::Common;

use Texinfo::TreeElement;

use Texinfo::Convert::Converter;

use Texinfo::Translations;

use Texinfo::UnicodeData;
use Texinfo::Convert::Utils;

our @ISA = qw(Texinfo::Convert::Converter);

our $VERSION = '7.2dev';

my $XS_structuring = Texinfo::XSLoader::XS_structuring_enabled();

our $module_loaded = 0;

my %XS_overrides = (
  "Texinfo::Convert::TreeElementConverter::new_tree_element"
    => "Texinfo::Convert::TreeElementConverterXS::new_tree_element",
  "Texinfo::Convert::TreeElementConverter::get_tree_element_index_entry"
    => "Texinfo::Convert::TreeElementConverterXS::get_tree_element_index_entry",
  "Texinfo::Convert::TreeElementConverter::get_global_unique_tree_element"
    => "Texinfo::Convert::TreeElementConverterXS::get_global_unique_tree_element",
  "Texinfo::Convert::TreeElementConverter::global_commands_information_command_list"
    => "Texinfo::Convert::TreeElementConverterXS::global_commands_information_command_list",
  "Texinfo::Convert::TreeElementConverter::tree_element_item_itemize_prepended"
    => "Texinfo::Convert::TreeElementConverterXS::tree_element_item_itemize_prepended",
  "Texinfo::Convert::TreeElementConverter::item_itemize_prepended"
    => "Texinfo::Convert::TreeElementConverterXS::tree_element_item_itemize_prepended",
  "Texinfo::Convert::TreeElementConverter::find_element_authors"
    => "Texinfo::Convert::TreeElementConverterXS::element_find_element_authors",
  "Texinfo::Convert::TreeElementConverter::element_find_element_authors"
    => "Texinfo::Convert::TreeElementConverterXS::element_find_element_authors",
  "Texinfo::Convert::TreeElementConverter::element_table_item_content_tree"
    => "Texinfo::Convert::TreeElementConverterXS::element_table_item_content_tree",
  "Texinfo::Convert::TreeElementConverter::table_item_content_tree"
    => "Texinfo::Convert::TreeElementConverterXS::element_table_item_content_tree",
  "Texinfo::Convert::TreeElementConverter::comment_or_end_line"
    => "Texinfo::Convert::TreeElementConverterXS::comment_or_end_line",
  "Texinfo::Convert::TreeElementConverter::tree_element_comment_or_end_line"
    => "Texinfo::Convert::TreeElementConverterXS::comment_or_end_line",
  "Texinfo::Convert::TreeElementConverter::argument_comment_end_line"
    => "Texinfo::Convert::TreeElementConverterXS::argument_comment_end_line",
  "Texinfo::Convert::TreeElementConverter::tree_element_argument_comment_end_line"
    => "Texinfo::Convert::TreeElementConverterXS::argument_comment_end_line",
  "Texinfo::Convert::TreeElementConverter::element_expand_verbatiminclude"
    => "Texinfo::Convert::TreeElementConverterXS::element_expand_verbatiminclude",
  "Texinfo::Convert::TreeElementConverter::element_expand_today"
    => "Texinfo::Convert::TreeElementConverterXS::element_expand_today",
  "Texinfo::Convert::TreeElementConverter::index_content_element"
    => "Texinfo::Convert::TreeElementConverterXS::tree_element_index_content_element",
  "Texinfo::Convert::TreeElementConverter::tree_element_index_content_element"
    => "Texinfo::Convert::TreeElementConverterXS::tree_element_index_content_element",
  "Texinfo::Convert::TreeElementConverter::element_gdt"
    => "Texinfo::Convert::TreeElementConverterXS::element_gdt",
  "Texinfo::Convert::TreeElementConverter::tree_elements_sections_list"
    => "Texinfo::Convert::TreeElementConverterXS::tree_elements_sections_list",
  "Texinfo::Convert::TreeElementConverter::tree_elements_nodes_list"
    => "Texinfo::Convert::TreeElementConverterXS::tree_elements_nodes_list",
  "Texinfo::Convert::TreeElementConverter::tree_elements_headings_list"
    => "Texinfo::Convert::TreeElementConverterXS::tree_elements_headings_list",
);

sub import {
  if (!$module_loaded) {
    if ($XS_structuring) {
      foreach my $sub (keys %XS_overrides) {
        Texinfo::XSLoader::override ($sub, $XS_overrides{$sub});
      }
    }

    $module_loaded = 1;
  }
  # The usual import method
  goto &Exporter::import;
}


# information on tree elements

my %xml_accent_entities = %Texinfo::Convert::Converter::xml_accent_entities;
my %xml_accent_text_with_entities
  = %Texinfo::Convert::Converter::xml_accent_text_with_entities;

my %command_structuring_level
  = %Texinfo::CommandsValues::command_structuring_level;

my $min_level = $command_structuring_level{'chapter'};
my $max_level = $command_structuring_level{'subsubsection'};

# same as in Texinfo::Common, but using the TreeElement interface
sub element_section_level($)
{
  my $section = shift;

  my $cmdname = $section->{'cmdname'};
  my $level = $command_structuring_level{$cmdname};
  # correct level according to raise/lowersections
  my $level_modifier = $section->get_attribute('level_modifier');
  if ($level_modifier) {
    $level -= $level_modifier;
    if ($level < $min_level) {
      if ($command_structuring_level{$cmdname} < $min_level) {
        $level = $command_structuring_level{$cmdname};
      } else {
        $level = $min_level;
      }
    } elsif ($level > $max_level) {
      $level = $max_level;
    }
  }
  return $level;
}

# same as in Texinfo::Structuring, but using the TreeElement interface
sub element_section_level_adjusted_command_name($)
{
  my $element = shift;

  my $cmdname = $element->{'cmdname'};

  # the following condition should only be false if sectioning_structure was
  # not called
  my $heading_level = $element->get_attribute('section_level');
  if (defined($heading_level)) {
    if ($heading_level ne $Texinfo::CommandsValues::command_structuring_level{
                                                                  $cmdname}) {
      my $command
        = $Texinfo::Common::level_to_structuring_command{$cmdname}
                                                            ->[$heading_level];
      return $command;
    }
  }
  return $cmdname;
}

sub element_is_content_empty($;$);
sub element_is_content_empty($;$)
{
  my $tree = shift;
  my $do_not_ignore_index_entries = shift;

  if (!defined($tree)) {
    return 1;
  }

  my $contents = $tree->get_children();

  if (!$contents) {
    return 1;
  }

  foreach my $content (@$contents) {
    my $text = $content->{'text'};
    if (defined($text)) {
      if ($text =~ /\S/) {
        return 0;
      } else {
        next;
      }
    }
    my $type = $content->{'type'};
    next if ($type and $type eq 'arguments_line');

    my $cmdname = $content->{'cmdname'};
    if ($cmdname) {
      if ($type and $type eq 'index_entry_command') {
        if ($do_not_ignore_index_entries) {
          return 0;
        } else {
          next;
        }
      }
      if (exists($Texinfo::Commands::line_commands{$cmdname})) {
        if ($Texinfo::Commands::formatted_line_commands{$cmdname}
            or $Texinfo::Commands::formattable_line_commands{$cmdname}) {
          return 0;
        } else {
          next;
        }
      } elsif (exists($Texinfo::Commands::nobrace_commands{$cmdname})) {
        if ($Texinfo::Commands::formatted_nobrace_commands{$cmdname}) {
          return 0;
        } else {
          next;
        }
      } elsif ($Texinfo::Commands::non_formatted_brace_commands{$cmdname}
               or $Texinfo::Commands::non_formatted_block_commands{$cmdname}) {
        next;
      } else {
        return 0;
      }
    }
    if ($type) {
      if ($type eq 'paragraph') {
        return 0;
      }
    }
    if (not element_is_content_empty($content, $do_not_ignore_index_entries)) {
      return 0;
    }
  }
  return 1;
}

# same as in Texinfo::Common, but using TreeElement interface
sub tree_element_is_inline($;$)
{
  my $current = shift;
  my $check_current = shift;

  if ($check_current) {
    my $inline_or_block = Texinfo::Common::element_inline_or_block($current);
    return ($inline_or_block) if (defined($inline_or_block));
  }

  while ($current->parent()) {
    $current = $current->parent();
    my $inline_or_block = Texinfo::Common::element_inline_or_block($current);
    return ($inline_or_block) if (defined($inline_or_block));
  }
  return 0;
}



# access to element with XS interface to add information to find C element

sub new_tree_element($$;$)
{
  my $self = shift;
  my $element_hash = shift;

  return Texinfo::TreeElement::new($element_hash);
}

sub get_tree_element_index_entry($$)
{
  my $self = shift;
  my $element = shift;

  my $index_entry_info = $element->get_attribute('index_entry');
  if ($index_entry_info) {

    my $indices_information;
    if ($self->{'document'}) {
      $indices_information = $self->{'document'}->indices_information();

      my ($index_entry, $index_info)
       = Texinfo::Common::lookup_index_entry($index_entry_info,
                                             $indices_information);
      return ($index_entry, $index_info);
    }
  }

  return undef, undef
}

sub get_global_unique_tree_element($$)
{
  my $self = shift;
  my $cmdname = shift;

  if ($self->{'document'}) {
    my $global_commands = $self->{'document'}->global_commands_information();
    if ($global_commands->{$cmdname}) {
      return $global_commands->{$cmdname};
    }
  }
  return undef;
}

# used for XS override (when there is no XS converter but XS parser/document)
# for the TreeElement interface
sub global_commands_information_command_list($$)
{
  my $document = shift;
  my $global_command = shift;

  return undef if (!$document);

  my $global_commands = $document->global_commands_information();

  return undef if (!$global_commands or !$global_commands->{$global_command}
        or ref($global_commands->{$global_command}) ne 'ARRAY');

  return $global_commands->{$global_command};
}

# using the interface with registered elements, compatible with TreeElements
sub element_translated_command_tree($$;$)
{
  my $converter = shift;
  my $cmdname = shift;
  my $build_tree = shift;

  my $translated_commands = $converter->{'translated_commands'};
  if ($translated_commands
      and defined($translated_commands->{$cmdname})) {
    my $to_translate = $translated_commands->{$cmdname};
    return $converter->element_cdt($to_translate, undef, $build_tree);
  }
  return undef;
}

# wraper used for XS overriding
sub index_content_element($;$)
{
  my $element = shift;
  my $prefer_reference_element = shift;

return Texinfo::Common::index_content_element($element,
                                              $prefer_reference_element);
}

# same as in Texinfo::Common, but using the TreeElement interface
sub tree_element_index_content_element($;$)
{
  my $element = shift;
  my $prefer_reference_element = shift;

  my $def_command = $element->get_attribute('def_command');
  if ($def_command) {
    if ($prefer_reference_element
        and $element->get_attribute('def_index_ref_element')) {
      return $element->get_attribute('def_index_ref_element');
    } else {
      return $element->get_attribute('def_index_element');
    }
  } else {
    return $element->get_child(0);
  }
}



# translations

# for XS override, with a simpler interface than element_cdt
sub element_gdt($$$;$$$$)
{
  my ($string, $lang_translations, $document,
      $replaced_substrings, $build_tree, $debug, $translation_context) = @_;
  return Texinfo::Translations::gdt($string,
                                    $lang_translations,
                                    $replaced_substrings,
                                    $debug, $translation_context);
}

# similar interface as cdt
sub element_cdt($$;$$$)
{
  my ($self, $string, $replaced_substrings,
      $build_tree, $translation_context) = @_;

  return element_gdt($string, $self->{'current_lang_translations'},
                              $self->{'document'},
                              $replaced_substrings, $build_tree,
                              $self->get_conf('DEBUG'),
                              $translation_context);
}



# relations

sub tree_elements_sections_list($)
{
  my $self = shift;

  if ($self->{'document'}) {
    my $relations_list = $self->{'document'}->sections_list();
    return $relations_list;
  }
  return undef;
}

sub tree_elements_nodes_list($)
{
  my $self = shift;

  if ($self->{'document'}) {
    my $relations_list = $self->{'document'}->nodes_list();
    return $relations_list;
  }
  return undef;
}

sub tree_elements_headings_list($)
{
  my $self = shift;

  if ($self->{'document'}) {
    my $relations_list = $self->{'document'}->headings_list();
    return $relations_list;
  }
  return undef;
}



# informative commands

# same as in Texinfo::Common, but using the TreeElement interface
sub _tree_element_informative_command_value($)
{
  my $element = shift;

  my $cmdname = $element->{'cmdname'};

  if ($Texinfo::Commands::line_commands{$cmdname} eq 'lineraw') {
    if (not $Texinfo::Commands::commands_args_number{$cmdname}) {
      return 1;
    } else {
      my $contents = $element->get_children();
      if ($contents) {
        my @strings;
        foreach my $content (@$contents) {
          push @strings, $content->{'text'};
        }
        return join(' ', @strings);
      }
    }
  } elsif ($element->get_attribute('text_arg')) {
    return $element->get_attribute('text_arg');
  } elsif ($element->get_attribute('misc_args')
           and exists($element->get_attribute('misc_args')->[0])) {
    return $element->get_attribute('misc_args')->[0];
  } elsif ($Texinfo::Commands::line_commands{$cmdname} eq 'line') {
    my $arg = $element->get_child(0);
    if ($arg->children_number()) {
      return $arg->get_child(0)->{'text'};
    }
  }
  return undef;
}

# same as in Texinfo::Common, but using the TreeElement interface
sub tree_element_set_informative_command_value($$)
{
  my $self = shift;
  my $element = shift;

  my $cmdname = $element->{'cmdname'};
  $cmdname = 'shortcontents' if ($cmdname eq 'summarycontents');

  my $value = _tree_element_informative_command_value($element);

  if (defined($value)) {
    my $set = $self->set_conf($cmdname, $value);
    return $set;
  }
  return 0;
}

sub _tree_element_in_preamble($)
{
  my $element = shift;
  my $current_element = $element;
  while (1) {
    my $parent = $current_element->parent();
    last if (!$parent);
    if (defined($parent->{'type'})
        and $parent->{'type'} eq 'preamble_before_content') {
      return 1;
    }
    $current_element = $parent;
  }
  return 0;
}

# same as Texinfo::Common::get_global_document_command for TreeElements
sub tree_element_get_global_document_command($$$)
{
  my $self = shift;
  my $global_command = shift;
  my $command_location = shift;

  if ($command_location ne 'last' and $command_location ne 'preamble_or_first'
      and $command_location ne 'preamble') {
    warn "BUG: get_global_document_command: unknown command_location: $command_location";
  }

  my $element;
  my $commands_list
      = global_commands_information_command_list ($self->{'document'},
                                                  $global_command);

  if (!$commands_list) {
    return $self->get_global_unique_tree_element($global_command);
  }

  if ($command_location eq 'last') {
    $element = $commands_list->[-1];
  } else {
    if ($command_location eq 'preamble_or_first'
        and not _tree_element_in_preamble($commands_list->[0])) {
      $element = $commands_list->[0];
    } else {
      foreach my $command_element (@{$commands_list}) {
        if (_tree_element_in_preamble($command_element)) {
          $element = $command_element;
        } else {
          last;
        }
      }
    }
  }
  return $element;
}

# sale as above but with the tree element interface
sub tree_element_set_global_document_commands($$$)
{
  my $self = shift;
  my $commands_location = shift;
  my $selected_commands = shift;

  my $init_conf = $self->{'commands_init_conf'};

  if (not defined($selected_commands)) {
    die "tree_element_set_global_document_commands: requires selected commands";
  }
  if ($commands_location eq 'before') {
    foreach my $global_command (@{$selected_commands}) {
      # for commands not appearing in the document, this should set to
      # the converter initialization value, which is in init_conf,
      # or generic default
      $self->set_conf($global_command,
          Texinfo::Convert::Converter::get_command_init($global_command,
                                                        $init_conf));
      # NOTE if the variable is set from an handler, or in the converter after
      # $init_conf was set, but before starting the conversion, it is ignored
      # here and the $init_conf value is set.  The previously set value
      # could be in $self->get_conf(), but what is available from
      # $self->get_conf() could also be a value set by a previous call of
      # set_global_document_commands.
      # There is no easy way to deal with this issue, other than making sure
      # that a customization value that is expected to be set early is set in
      # $init_conf.
    }
  } else {
    #my $global_commands;
    #if ($self->{'document'}) {
    #  $global_commands = $self->{'document'}->global_commands_information();
    #}
    foreach my $global_command (@{$selected_commands}) {
      if ($self->get_conf('DEBUG')) {
        print STDERR "SET_global($commands_location) $global_command\n";
      }

      my $element
        = tree_element_get_global_document_command($self, $global_command,
                                                   $commands_location);
      if ($element) {
        tree_element_set_informative_command_value($self, $element);
      } else {
        # for commands not appearing in the document, this should set to
        # the converter initialization value, which is in init_conf,
        # or generic default
        # the NOTE above in 'before' holds here too.
        $self->set_conf($global_command,
            Texinfo::Convert::Converter::get_command_init($global_command,
                                                          $init_conf));
      }
    }
  }
}



# helper methods for conversion

# for XS overriding

sub find_element_authors($$)
{
  my ($element, $quotation_authors) = @_;

  return Texinfo::Convert::Utils::find_element_authors($element,
                                                       $quotation_authors);
}

sub element_find_element_authors_internal($$);

# same as in Texinfo::Convert::Utils, but using the TreeElement interface
sub element_find_element_authors_internal($$)
{
  my $element = shift;
  my $quotation_authors = shift;

  return if (defined($element->{'text'}));

  my $cmdname = $element->{'cmdname'};
  if (defined($cmdname)) {
    if ($cmdname eq 'author') {
      push @$quotation_authors, $element;
      return;
    }
    if ($cmdname eq 'quotation'
        or $cmdname eq 'smallquotation'
        or $cmdname eq 'titlepage'
        or $cmdname eq 'menu'
        or ($Texinfo::Commands::brace_commands{$cmdname}
            and $Texinfo::Commands::brace_commands{$cmdname} eq 'context')
        or exists($Texinfo::Commands::line_commands{$cmdname})) {
      return;
    }
  } elsif (defined($element->{'type'})
           and $element->{'type'} eq 'arguments_line') {
    return;
  }
  my $contents = $element->get_children();
  if ($contents) {
    foreach my $content (@$contents) {
      element_find_element_authors_internal($content, $quotation_authors);
    }
  }
}

# same as in Texinfo::Convert::Utils, but using the TreeElement interface
sub element_find_element_authors($$)
{
  my $element = shift;
  my $quotation_authors = shift;

  my $contents = $element->get_children();
  foreach my $content (@$contents) {
    element_find_element_authors_internal($content, $quotation_authors);
  }
}

# same as in Texinfo::Common, but using the TreeElement interface
sub _tree_element_block_line_argument_command($)
{
  my $block_line_arg = shift;

  if ($block_line_arg->children_number() == 1) {
    my $arg = $block_line_arg->get_child(0);
    my $cmdname = $arg->{'cmdname'};
    my $contents_nr = $arg->children_number();
    if ($cmdname
        and (!$contents_nr
             or ($contents_nr == 1
                 and !$arg->get_child(0)->children_number()))) {
      if (($Texinfo::Commands::brace_commands{$cmdname}
           and !$Texinfo::Commands::accent_commands{$cmdname})
          or ($arg->{'type'} and $arg->{'type'} eq 'definfoenclose_command')) {
        return $arg;
      }
    }
  }
  return undef;
}

# same as in Texinfo::Common, but with TreeElement interface
sub tree_element_item_line_block_line_argument_command($)
{
  my $block_line_arg = shift;

  my $arg = _tree_element_block_line_argument_command($block_line_arg);

  if ($arg) {
    my $brace_category = $Texinfo::Commands::brace_commands{$arg->{'cmdname'}};
    # $Texinfo::Commands::brace_commands{} is undef
    # for definfoenclose'd commands
    if ($brace_category and $brace_category eq 'noarg') {
      $arg = undef;
    }
  }
  return $arg;
}

my $default_bullet_command = Texinfo::TreeElement::new({'cmdname' => 'bullet'});

# same as in Texinfo::Common, but using the TreeElement interface
sub tree_element_item_itemize_prepended($)
{
  my $element = shift;

  my $itemize = $element->parent();
  my $arguments_line = $itemize->get_child(0);
  my $block_line_arg = $arguments_line->get_child(0);

  my $arg = _tree_element_block_line_argument_command($block_line_arg);
  if ($arg) {
    return $arg;
  } elsif (!$block_line_arg->children_number()) {
    return $default_bullet_command;
  } else {
    return $block_line_arg;
  }
}

# same as in Texinfo::Common, but with new_tree_element call
# TODO it would be more efficient to have a static asis command reused
sub element_block_item_line_command($$)
{
  my $self = shift;
  my $block_line_arg = shift;

  my $arg
    = Texinfo::Common::item_line_block_line_argument_command($block_line_arg);

  if (!$arg) {
    $arg = $self->new_tree_element({'cmdname' => 'asis'});
  }
  return $arg;
}

sub item_itemize_prepended($)
{
  my $element = shift;

  return Texinfo::Common::item_itemize_prepended($element);
}

# same as in Texinfo::Common, but with TreeElement interface
# TODO it would be more efficient to have a static asis command reused
sub tree_element_block_item_line_command($$)
{
  my $self = shift;
  my $block_line_arg = shift;

  my $arg
    = tree_element_item_line_block_line_argument_command(
                                                        $block_line_arg);

  if (!$arg) {
    $arg = $self->new_tree_element({'cmdname' => 'asis'});
  }
  return $arg;
}

# for XS overriding.
# table_item_content_tree_noxs in Texinfo::Convert::Converter.
sub table_item_content_tree($$)
{
  my $self = shift;
  my $element = shift;

  return $self->table_item_content_tree_noxs($element);
}

# same as table_item_content_tree, using partially the TreeElements interface
sub element_table_item_content_tree($$)
{
  my $self = shift;
  my $element = shift;

  my $parent = $element->parent();
  my $parent_type = $parent->{'type'};
  # not in a @*table item/itemx.  Exemple in test with @itemx in @itemize
  # in @table
  if (!$parent_type or $parent_type ne 'table_term') {
    return undef;
  }
  my $table_command = $parent->parent()->parent();

  # arguments_line type element
  my $arguments_line = $table_command->{'contents'}->[0];
  my $block_line_arg = $arguments_line->{'contents'}->[0];

  my $command_as_argument
    = element_block_item_line_command($self, $block_line_arg);

  if ($command_as_argument) {
    my $command_as_argument_cmdname = $command_as_argument->{'cmdname'};
    my $command = {'cmdname' => $command_as_argument_cmdname,
                   'source_info' => $element->source_info(),};
    if ($table_command->get_attribute('command_as_argument_kbd_code')) {
      $command->{'extra'} = {'code' => 1};
    }
    # command name for the Texinfo::Commands hashes tests
    my $builtin_cmdname;
    my $type = $command_as_argument->{'type'};
    if ($type and $type eq 'definfoenclose_command') {
      $command->{'type'} = $type;
      $command->{'extra'} = {} if (!$command->{'extra'});
      $command->{'extra'}->{'begin'}
        = $command_as_argument->get_attribute('begin');
      $command->{'extra'}->{'end'}
        = $command_as_argument->get_attribute('end');
      $builtin_cmdname = 'definfoenclose_command';
    } else {
      $builtin_cmdname = $command_as_argument_cmdname;
    }
    my $arg;
    if ($Texinfo::Commands::brace_commands{$builtin_cmdname} eq 'context') {
      # This corresponds to a bogus @*table line with command line @footnote
      # or @math.  We do not really care about the formatting of the result
      # but we want to avoid debug messages, so we setup expected trees
      # for those @-commands.
      $arg = {'type' => 'brace_command_context',};
      if ($Texinfo::Commands::math_commands{$builtin_cmdname}) {
        $arg->{'contents'} = [$element->{'contents'}->[0]];
      } else {
        my $paragraph = $self->new_tree_element({'type' => 'paragraph',
                           'contents' => [$element->{'contents'}->[0]],}, 1);
        $arg->{'contents'} = [$paragraph];
      }
    } elsif ($Texinfo::Commands::brace_commands{$builtin_cmdname}
                                                   eq 'arguments') {
      $arg = {'type' => 'brace_arg',
              'contents' => [$element->{'contents'}->[0]],};
    } else {
      $arg = {'type' => 'brace_container',
              'contents' => [$element->{'contents'}->[0]],};
    }
    my $arg_element = $self->new_tree_element($arg, 1);
    my $result = $self->new_tree_element($command, 1);
    $result->add_to_element_contents($arg_element);
    return $result;
  }
  return undef;
}

# same as table_item_content_tree, but using the TreeElement interface
sub tree_element_table_item_content_tree($$)
{
  my $self = shift;
  my $element = shift;

  my $parent = $element->parent();
  my $parent_type = $parent->{'type'};
  # not in a @*table item/itemx.  Exemple in test with @itemx in @itemize
  # in @table
  if (!$parent_type or $parent_type ne 'table_term') {
    return undef;
  }
  my $table_command = $parent->parent()->parent();

  # arguments_line type element
  my $arguments_line = $table_command->get_child(0);
  my $block_line_arg = $arguments_line->get_child(0);

  my $command_as_argument
    = tree_element_block_item_line_command($self, $block_line_arg);

  if ($command_as_argument) {
    my $command_as_argument_cmdname = $command_as_argument->{'cmdname'};
    my $command = {'cmdname' => $command_as_argument_cmdname,
                   'source_info' => $element->source_info(),};
    if ($table_command->get_attribute('command_as_argument_kbd_code')) {
      $command->{'extra'} = {'code' => 1};
    }
    # command name for the Texinfo::Commands hashes tests
    my $builtin_cmdname;
    my $type = $command_as_argument->{'type'};
    if ($type and $type eq 'definfoenclose_command') {
      $command->{'type'} = $type;
      $command->{'extra'} = {} if (!$command->{'extra'});
      $command->{'extra'}->{'begin'}
        = $command_as_argument->get_attribute('begin');
      $command->{'extra'}->{'end'}
        = $command_as_argument->get_attribute('end');
      $builtin_cmdname = 'definfoenclose_command';
    } else {
      $builtin_cmdname = $command_as_argument_cmdname;
    }
    my $arg;
    if ($Texinfo::Commands::brace_commands{$builtin_cmdname} eq 'context') {
      # This corresponds to a bogus @*table line with command line @footnote
      # or @math.  We do not really care about the formatting of the result
      # but we want to avoid debug messages, so we setup expected trees
      # for those @-commands.
      $arg = {'type' => 'brace_command_context',};
      if ($Texinfo::Commands::math_commands{$builtin_cmdname}) {
        $arg->{'contents'} = [$element->get_child(0)];
      } else {
        my $paragraph = $self->new_tree_element({'type' => 'paragraph',
                                  'contents' => [$element->get_child(0)],});
        $arg->{'contents'} = [$paragraph];
      }
    } elsif ($Texinfo::Commands::brace_commands{$builtin_cmdname}
                                                   eq 'arguments') {
      $arg = {'type' => 'brace_arg',
              'contents' => [$element->get_child(0)],};
    } else {
      $arg = {'type' => 'brace_container',
              'contents' => [$element->get_child(0)],};
    }
    my $arg_element = $self->new_tree_element($arg);
    my $result = $self->new_tree_element($command);
    $result->add_to_element_contents($arg_element);
    return $result;
  }
  return undef;
}

# for XS overriding
sub comment_or_end_line($$)
{
  my $self = shift;
  my $element = shift;

  return $self->comment_or_end_line_nonxs($element);
}

# for XS overriding
sub argument_comment_end_line($$)
{
  my $self = shift;
  my $element = shift;

  my $line_arg;
  my $first_child = $element->{'contents'}->[0];
  my $first_child_type = $first_child->{'type'};
  if ($first_child_type and $first_child_type eq 'arguments_line') {
    $line_arg = $first_child->{'contents'}->[0];
  } else {
    $line_arg = $element->{'contents'}->[0];
  }
  my ($comment, $end_line) = $self->comment_or_end_line($element);
  return $line_arg, $comment, $end_line;
}

sub tree_element_comment_or_end_line_nonxs($$)
{
  my $self = shift;
  my $element = shift;

  my $end_line;

  my $line_arg;
  my $first_child = $element->get_child(0);
  if ($first_child) {
    my $first_child_type = $first_child->{'type'};
    if ($first_child_type and $first_child_type eq 'arguments_line') {
      $line_arg = $first_child->get_child(-1);
    } else {
      $line_arg = $element->get_child(-1);
    }
  }

  my $comment = $line_arg->get_attribute('comment_at_end')
    if ($line_arg);

  if ($comment) {
    return ($comment, undef);
  } elsif ($line_arg) {
    my $spaces_after_argument
      = $line_arg->get_attribute('spaces_after_argument');
    if (defined($spaces_after_argument)) {
      my $text = $spaces_after_argument->{'text'};
      if (chomp($text)) {
        $end_line = "\n";
      }
    } else {
      $end_line = '';
    }
  } else {
    $end_line = '';
  }
  return (undef, $end_line);
}

sub tree_element_comment_or_end_line($$)
{
  my $self = shift;
  my $element = shift;

  return tree_element_comment_or_end_line_nonxs($self, $element);
}

# for TreeElement interface XS overriding
sub tree_element_argument_comment_end_line($$)
{
  my $self = shift;
  my $element = shift;

  my $line_arg;
  my $first_child = $element->get_child(0);
  my $first_child_type = $first_child->{'type'};
  if ($first_child_type and $first_child_type eq 'arguments_line') {
    $line_arg = $first_child->get_child(0);
  } else {
    $line_arg = $element->get_child(0);
  }
  my ($comment, $end_line)
    = $self->tree_element_comment_or_end_line($element);
  return $line_arg, $comment, $end_line;
}

sub _tree_element_associated_processing_encoding($)
{
  my $element = shift;

  my $encoding = $element->get_attribute('input_encoding_name');

  return Texinfo::Common::processing_output_encoding($encoding);
}

sub tree_element_txt_image_text($$$)
{
  my ($self, $element, $basefile) = @_;

  my ($text_file_name, $file_name_encoding)
    = $self->encoded_input_file_name($basefile.'.txt');

  my $txt_file = Texinfo::Common::locate_include_file($text_file_name,
                                  $self->get_conf('INCLUDE_DIRECTORIES'));
  if (!defined($txt_file)) {
    return undef, undef;
  } else {
    my $filehandle = do { local *FH };
    if (open($filehandle, $txt_file)) {
      my $encoding
          = _tree_element_associated_processing_encoding($element);
      if (defined($encoding)) {
        binmode($filehandle, ":encoding($encoding)");
      }
      my $result = '';
      my $max_width = 0;
      while (<$filehandle>) {
        my $width = Texinfo::Convert::Unicode::string_width($_);
        if ($width > $max_width) {
          $max_width = $width;
        }
        $result .= $_;
      }
      if (!close ($filehandle)) {
        my $decoded_file_name = $txt_file;
        $decoded_file_name = Encode::decode($file_name_encoding, $txt_file)
          if (defined($file_name_encoding));
        $self->converter_document_warn(
           sprintf(__("error on closing image text file %s: %s"),
                                     $decoded_file_name, $!));
      }
      return $result, $max_width;
    } else {
      my $decoded_file_name = $txt_file;
      $decoded_file_name = Encode::decode($file_name_encoding, $txt_file)
        if (defined($file_name_encoding));
      $self->converter_line_warn(
               sprintf(__("\@image file `%s' unreadable: %s"),
                          $decoded_file_name, $!), $element->source_info());
    }
  }
  return undef, undef;
}

# same as in Texinfo::Convert::Utils, but with TreeElement interface
sub _element_expand_verbatiminclude($$$$$;$$)
{
  my $current = shift;
  my $input_file_name_encoding = shift;
  my $doc_encoding_for_input_file_name = shift;
  my $locale_encoding = shift;
  my $include_directories = shift;
  my $document = shift;
  my $converter = shift;

  my $file_name_text = $current->get_attribute('text_arg');
  return undef unless (defined($file_name_text));

  my $input_encoding
    = _tree_element_associated_processing_encoding($current);

  my ($file_name, $file_name_encoding)
    = Texinfo::Convert::Utils::encoded_input_file_name($file_name_text,
                  $input_file_name_encoding,
                  $doc_encoding_for_input_file_name, $locale_encoding,
                                          $document, $input_encoding);

  my $file = Texinfo::Common::locate_include_file($file_name,
                                                  $include_directories);

  my $verbatiminclude;

  if (defined($file)) {
    if (!open(VERBINCLUDE, $file)) {
      if ($converter) {
        my $decoded_file = $file;
        # need to decode to the internal perl codepoints for error message
        $decoded_file = Encode::decode($file_name_encoding, $file)
           if (defined($file_name_encoding));
        $converter->converter_line_error(
                      sprintf(__("could not read %s: %s"), $decoded_file, $!),
                      $current->source_info());
      }
    } else {
      if (defined($input_encoding)) {
        binmode(VERBINCLUDE, ":encoding($input_encoding)");
      }
      $verbatiminclude
        = Texinfo::TreeElement::new({ 'cmdname' => 'verbatim',
                                      'parent' => $current->parent(),
                                      'contents' => [],});
      while (<VERBINCLUDE>) {
        push @{$verbatiminclude->{'contents'}},
          Texinfo::TreeElement::new({'type' => 'raw', 'text' => $_ });
      }
      if (!close (VERBINCLUDE)) {
        if ($converter) {
          my $decoded_file = $file;
          # need to decode to the internal perl codepoints for error message
          $decoded_file = Encode::decode($file_name_encoding, $file)
             if (defined($file_name_encoding));
          $converter->converter_document_warn(
                 sprintf(__(
                      "error on closing \@verbatiminclude file %s: %s"),
                          $decoded_file, $!));
        }
      }
    }
  } elsif ($converter) {
    $converter->converter_line_error(
                           sprintf(__("\@%s: could not find %s"),
                                       $current->{'cmdname'}, $file_name_text),
                           $current->source_info());
  }
  return $verbatiminclude;
}

# For XS
sub element_expand_verbatiminclude($$$$$;$$)
{
  my $current = shift;
  my $input_file_name_encoding = shift;
  my $doc_encoding_for_input_file_name = shift;
  my $locale_encoding = shift;
  my $include_directories = shift;
  my $document = shift;
  my $converter = shift;

  return _element_expand_verbatiminclude($current,
              $input_file_name_encoding,
              $doc_encoding_for_input_file_name, $locale_encoding,
              $include_directories, $document, $converter);
}

sub converter_element_expand_verbatiminclude($$)
{
  my $converter = shift;
  my $current = shift;

  my $input_file_name_encoding
    = $converter->get_conf('INPUT_FILE_NAME_ENCODING');
  my $doc_encoding_for_input_file_name
    = $converter->get_conf('DOC_ENCODING_FOR_INPUT_FILE_NAME');
  my $locale_encoding = $converter->get_conf('LOCALE_ENCODING');

  my $include_directories
    = $converter->get_conf('INCLUDE_DIRECTORIES');

  my $document = $converter->{'document'};

  return element_expand_verbatiminclude($current,
              $input_file_name_encoding,
              $doc_encoding_for_input_file_name, $locale_encoding,
              $include_directories, $document, $converter);
}

# Wrapper used for XS override
sub element_expand_today($$$$$)
{
  my $build_tree = shift;
  my $test = shift;
  my $lang_translations = shift;
  my $debug = shift;
  my $converter = shift;

  return Texinfo::Convert::Utils::expand_today($test,
                                               $lang_translations,
                                               $debug, $converter);
}

sub converter_element_expand_today($;$)
{
  my $converter = shift;
  my $build_tree = shift;

  my $test = $converter->get_conf('TEST');
  my $debug = $converter->get_conf('DEBUG');
  return element_expand_today($build_tree, $test,
          $converter->{'current_lang_translations'}, $debug, $converter);
}

# same as in Texinfo::Common, but for the TreeElement interface
sub tree_element_multitable_columnfractions($)
{
  my $multitable = shift;

  my $arguments_line = $multitable->get_child(0);
  my $block_line_arg = $arguments_line->get_child(0);
  if ($block_line_arg->children_number()) {
    my $child = $block_line_arg->get_child(0);
    my $child_cmdname = $child->{'cmdname'};
    if ($child_cmdname and $child_cmdname eq 'columnfractions') {
      return $block_line_arg->get_child(0);
    }
  }

  return undef;
}

# same as in Texinfo::Convert::Utils, but using TreeElement interface
sub tree_element_find_innermost_accent_contents($$)
{
  my $self = shift;
  my $current = shift;

  my @accent_commands = ();
  my $debug = 0;
 ACCENT:
  while (1) {
    my $current_cmdname = $current->{'cmdname'};
    # the following can happen if called with a bad tree
    if (!$current_cmdname
        or !$Texinfo::Commands::accent_commands{$current_cmdname}) {
      #print STDERR "BUG: Not an accent command in accent\n";
      cluck "BUG: Not an accent command in accent\n";
      #print STDERR Texinfo::Convert::Texinfo::convert_to_texinfo($current)."\n";
      #print STDERR Data::Dumper->Dump([$current]);
      return (undef, \@accent_commands);
    }
    push @accent_commands, $current;
    # A bogus accent, that may happen
    if (!$current->children_number()) {
      return (undef, \@accent_commands);
    }

    my $arg = $current->get_child(0);
    my $contents = $arg->get_children();
    if (!$contents) {
      return (undef, \@accent_commands);
    }
    # inside the argument of an accent
    my $text_contents = [];

    foreach my $content (@$contents) {
      my $cmdname = $content->{'cmdname'};
      if ($cmdname) {
        if ($Texinfo::Commands::accent_commands{$cmdname}) {
        # if outer accent is tieaccent, keep accent inside and do not try to
        # nest more
          if ($current_cmdname ne 'tieaccent') {
            $current = $content;
            next ACCENT;
          }
        } elsif ($cmdname eq 'c' or $cmdname eq 'comment') {
          next;
        }
      }
      push @$text_contents, $content;
    }
    # we go here if there was no nested accent
    return ($self->new_tree_element({'contents' => $text_contents}),
            \@accent_commands);
  }
}

# same as in Texinfo::Convert::Converter, but using TreeElement interface
sub tree_element_convert_accents($$$;$$)
{
  my $self = shift;
  my $accent = shift;
  my $format_accents = shift;
  my $output_encoded_characters = shift;
  my $in_upper_case = shift;

  my ($contents_element, $stack)
   = tree_element_find_innermost_accent_contents($self, $accent);
  my $arg_text = '';
  if (defined($contents_element)) {
    $arg_text = $self->convert_tree($contents_element);
  }

  if ($output_encoded_characters) {
    my $encoded = Texinfo::Convert::Unicode::element_encoded_accents($self,
                                       $arg_text, $stack,
                                       $self->get_conf('OUTPUT_ENCODING_NAME'),
                                       $format_accents,
                                       $in_upper_case);
    if (defined($encoded)) {
      return $encoded;
    }
  }
  my $result = $arg_text;
  foreach my $accent_command (reverse(@$stack)) {
    $result = &$format_accents ($self, $result, $accent_command,
                                $in_upper_case);
  }
  return $result;
}

# same as in Texinfo::Convert::Converter, but using TreeElement interface
sub element_xml_accent($$$;$$$)
{
  my $self = shift;
  my $text = shift;
  my $command = shift;
  my $in_upper_case = shift;
  my $use_numeric_entities = shift;
  my $accent = $command->{'cmdname'};

  if ($in_upper_case and $text =~ /^\w$/) {
    $text = uc($text);
  }

  # do not return a dotless i or j as such if it is further composed
  # with an accented letter, return the letter as is
  if ($accent eq 'dotless'
      and $Texinfo::UnicodeData::unicode_accented_letters{$accent}
      and exists($Texinfo::UnicodeData::unicode_accented_letters{$accent}->{$text})) {
    my $parent = $command->parent();
    if ($parent) {
      my $parent_parent = $parent->parent();
      if ($parent_parent) {
        my $out_cmdname = $parent_parent->{'cmdname'};
        if ($out_cmdname
            and $Texinfo::UnicodeData::unicode_accented_letters{$out_cmdname}) {
          return $text;
        }
      }
    }
  }

  if ($use_numeric_entities) {
    my $formatted_accent
      = Texinfo::Convert::Converter::xml_numeric_entity_accent($accent, $text);
    if (defined($formatted_accent)) {
      return $formatted_accent;
    }
  } else {
    return "&${text}$xml_accent_entities{$accent};"
      if (defined($xml_accent_entities{$accent})
          and defined($xml_accent_text_with_entities{$accent})
          and ($text =~ /^[$xml_accent_text_with_entities{$accent}]$/));
    my $formatted_accent
      = Texinfo::Convert::Converter::xml_numeric_entity_accent($accent, $text);
    if (defined($formatted_accent)) {
      return $formatted_accent;
    }
  }

  # There are diacritics for every accent command except for dotless.
  # We should only get there with dotless if the argument is not recognized.
  return $text;
}

# same as in Texinfo::Convert::Converter, but using TreeElement interface
sub _element_xml_numeric_entities_accent($$$;$)
{
  my $self = shift;
  my $text = shift;
  my $command = shift;
  my $in_upper_case = shift;

  return element_xml_accent($self, $text, $command, $in_upper_case, 1);
}

# same as in Texinfo::Convert::Converter, but using TreeElement interface
sub tree_element_xml_accents($$;$)
{
  my $self = shift;
  my $accent = shift;
  my $in_upper_case = shift;

  my $format_accents;
  if ($self->get_conf('USE_NUMERIC_ENTITY')) {
    $format_accents = \&_element_xml_numeric_entities_accent;
  } else {
    $format_accents = \&element_xml_accent;
  }

  return $self->tree_element_convert_accents($accent, $format_accents,
                                $self->get_conf('OUTPUT_CHARACTERS'),
                                $in_upper_case);
}

1;

__END__

=head1 NAME

Texinfo::Convert::TreeElementConverter - Parent class for TreeElement based converters

=head1 SYNOPSIS

  package Texinfo::Convert::MyConverter;

  use Texinfo::Convert::Converter;
  use Texinfo::Convert::TreeElementConverter;
  our @isa = qw(Texinfo::Convert::Converter
                Texinfo::Convert::TreeElementConverter);

  sub converter_defaults ($;$) {
    return \%myconverter_defaults;
  }
  sub converter_initialize($) {
    my $self = shift;
    ...
  }

  sub conversion_initialization($;$) {
    my $self = shift;
    my $document = shift;

    if ($document) {
      $self->set_document($document);
    }

    $self->{'document_context'} = [{}];
    ...
  }

  sub conversion_finalization($) {
    my $self = shift;
  }

  sub convert_tree($$) {
    ...
  }

  sub convert($$) {
    my $self = shift;
    my $document = shift;

    $self->conversion_initialization($document);

    ...
    $self->conversion_finalization();
  }

  sub output($$) {
    my $self = shift;
    my $document = shift;

    $self->conversion_initialization($document);

    ...
    $self->conversion_finalization();
    ...
  }

  # end of Texinfo::Convert::MyConverter

  my $converter = Texinfo::Convert::MyConverter->converter();
  $converter->output($texinfo_parsed_document);

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

C<Texinfo::Convert::TreeElementConverter> is a super class that implements
functions present in other Texinfo modules, mainly
C<Texinfo::Convert::Converter> and C<Texinfo::Common> using the TreeElement
L<Texinfo::TreeElement> interfaces.

=over

=head1 METHODS

=head2 Translations in output documents

C<Texinfo::Convert::Converter> provides wrappers around
L<Texinfo::Translations> methods that sets the language to the current
C<documentlanguage>.

The C<cdt> and C<pcdt> methods are used to translate strings to be output in
converted documents, and return a Texinfo tree.  The C<cdt_string> is similar
but returns a simple string, for already converted strings.

=over

=item $tree = $converter->cdt($string, $replaced_substrings, $translation_context)

=item $string = $converter->cdt_string($string, $replaced_substrings, $translation_context)
X<C<cdt>> X<C<cdt_string>>

The I<$string> is a string to be translated.  With C<cdt>
the function returns a Texinfo tree, as the string is interpreted
as Texinfo code after translation.  With C<cdt_string> a string
is returned.

I<$replaced_substrings> is an optional hash reference specifying
some substitution to be done after the translation.  The key of the
I<$replaced_substrings> hash reference identifies what is to be substituted.
In the string to be translated word in brace matching keys of
I<$replaced_substrings> are replaced.
For C<cdt>, the value is a Texinfo tree that is substituted in the
resulting Texinfo tree. For C<cdt_string>, the value is a string that
is replaced in the resulting string.

The I<$translation_context> is optional.  If not C<undef> this is a translation
context string for I<$string>.  It is the first argument of C<pgettext>
in the C API of Gettext.

=item $tree = $object->pcdt($translation_context, $string, $replaced_substrings)
X<C<pcdt>>

Same to C<cdt> except that the I<$translation_context> is not optional.
This function is useful to mark strings with a translation context for
translation.  This function is similar to pgettext in the Gettext C API.

=back

=head2 Conversion to XML

Some C<Texinfo::Convert::Converter> methods target conversion to XML.
Most methods take a I<$converter> as argument to get some
information and use methods for error reporting.

=over

=item $formatted_text = $converter->xml_format_text_with_numeric_entities($text)
X<C<xml_format_text_with_numeric_entities>>

Replace quotation marks and hyphens used to represent dash in
Texinfo text with numeric XML entities.

=item $protected_text = $converter->xml_protect_text($text)
X<C<xml_protect_text>>

Protect special XML characters (&, E<lt>, E<gt>, ") of I<$text>.

=item $comment = $converter->xml_comment($text)
X<C<xml_comment>>

Returns an XML comment for I<$text>.

=item $result = xml_accent($text, $accent_command, $in_upper_case, $use_numeric_entities)
X<C<xml_accent>>

I<$text> is the text appearing within an accent command.  I<$accent_command>
should be a Texinfo tree element corresponding to an accent command taking
an argument.  I<$in_upper_case> is optional, and, if set, the text is put
in upper case.  The function returns the accented letter as XML named entity
if possible, falling back to numeric entities if there is no named entity
and returns the argument as last resort.  I<$use_numeric_entities>
is optional.  If set, numerical entities are used instead of named entities
if possible.

=item $result = $converter->xml_accents($accent_command, $in_upper_case)
X<C<xml_accents>>

I<$accent_command> is an accent command, which may have other accent
commands nested.  If I<$in_upper_case> is set, the result should be
upper cased.  The function returns the accents formatted as XML.

=item $result = xml_numeric_entity_accent($accent_command_name, $text)
X<C<xml_numeric_entity_accent>>

I<$accent_command_name> is the name of an accent command.  I<$text> is the text
appearing within the accent command.  Returns the accented letter as XML numeric
entity, or C<undef> is there is no such entity.

=back

The following hashes, defined as C<our> variable are also available:

=over

=item %xml_text_entity_no_arg_commands_formatting
X<C<%xml_text_entity_no_arg_commands_formatting>>

Values are entities or, if not available, ASCII representation of
single character non-alphabetical commands without brace such as C<*> or C<:>
and of commands with empty braces such as C<atchar>, C<LaTeX>, C<arrow>,
C<quoteleft> or C<AA>.

=back

=head2 Helper methods

The module provides methods that may be useful for converter.
Most methods take a I<$converter> as argument to get some
information and use methods for error reporting, see L</Registering error and
warning messages>.  Also to translate strings, see L</Translations in output
documents>.  For useful methods that need a converter optionally and can be
used in converters that do not inherit from C<Texinfo::Convert::Converter>, see
L<Texinfo::Convert::Utils>.

=over

=item $tree = $converter->expand_today()

Expand today's date, as a Texinfo tree with translations.

=item ($caption, $prepended) = $converter->float_name_caption($float)
X<C<float_name_caption>>

I<$float> is a Texinfo tree C<@float> element.  This function
returns the caption element that should be used for the float formatting
and the I<$prepended> Texinfo tree combining the type and label
of the float.

=item $tree = $converter->float_type_number($float)
X<C<float_type_number>>

I<$float> is a Texinfo tree C<@float> element.  This function
returns the type and number of the float as a Texinfo tree with
translations.

=item $end_line = $converter->format_comment_or_return_end_line($element)
X<C<format_comment_or_return_end_line>>

Format comment at end of line or return the end of line associated with
the element.  In many cases, converters ignore comments and output is
better formatted with new lines added independently of the presence
of newline or comment in the initial Texinfo line, so most converters
are better off not using this method.

=item $converter->set_global_document_commands($commands_location, $selected_commands)
X<C<set_global_document_commands>>

Set the Texinfo customization options for @-commands.  I<$selected_commands>
is an array reference containing the @-commands set.  I<$commands_location>
specifies where in the document the value should be taken from. The
possibilities are:

=over

=item before

Set to the values before document conversion, from defaults and command-line.

=item last

Set to the last value for the command.

=item preamble

Set sequentially to the values in the Texinfo preamble.

=item preamble_or_first

Set to the first value of the command if the first command is not
in the Texinfo preamble, else set as with I<preamble>,
sequentially to the values in the Texinfo preamble.

=back

Notice that the only effect of this function is to set a customization
variable value, no @-command side effects are run, no associated customization
variables are set.

For more information on the function used to set the value for each of the command, see
L<C<Texinfo::Common> C<set_global_document_command>|Texinfo::Common/$element = set_global_document_command($customization_information, $global_commands_information, $cmdname, $command_location)>.

=item $table_item_tree = $converter->table_item_content_tree($element)
X<C<table_item_content_tree>>

I<$element> should be an C<@item> or C<@itemx> tree element.
Returns a tree in which the @-command in argument of C<@*table>
of the I<$element> has been applied to the I<$element> line argument,
or C<undef>.

=item $tree = $converter->expand_verbatiminclude($verbatiminclude)
X<C<expand_verbatiminclude>>

I<$verbatiminclude> is a C<@verbatiminclude> tree element.  This function
returns a C<@verbatim> tree elements after finding the included file and
reading it.

=back

=head1 SEE ALSO

L<Texinfo::Common>, L<Texinfo::Convert::Unicode>, L<Texinfo::Report>,
L<Texinfo::Translations>, L<Texinfo::Convert::Utils>
and L<Texinfo::Convert::Converter>.

=head1 AUTHOR

Patrice Dumas, E<lt>pertusus@free.frE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2011- Free Software Foundation, Inc.  See the source file for
all copyright years.

This library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at
your option) any later version.

=cut
