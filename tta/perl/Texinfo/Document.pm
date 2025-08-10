# Copyright 2023-2025 Free Software Foundation, Inc.
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

# This package provides a view of a parsed Texinfo document.  The
# instantiated objects are also used to carry information for the
# XS modules, mainly to be able to find the document information
# in memory.
# Also note that the initialization of the C library is done by
# this module XS code when XS extensions are used.

package Texinfo::Document;

use strict;
use warnings;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

use Carp qw(cluck confess);

#use Devel::Peek;
#use Devel::Refcount;
#use Devel::FindRef;
#use Devel::Cycle;

use Texinfo::DocumentXS;

use Texinfo::XSLoader;

use Texinfo::TreeElement;

use Texinfo::Common;

use Texinfo::Report;
use Texinfo::Indices;
use Texinfo::ManipulateTree;

our $VERSION = '7.2dev';

# There is a full coverage by the C implementation.
# Relevant XS interfaces are all implemented.
# See comments before methods definitions for an explanation of why some
# methods have no XS override.

my $XS_parser = Texinfo::XSLoader::XS_parser_enabled();

our %XS_overrides = (
  "Texinfo::Document::destroy_document"
    => "Texinfo::DocumentXS::destroy_document",
  "Texinfo::Document::set_document_global_info",
    => "Texinfo::DocumentXS::set_document_global_info",
  "Texinfo::Document::errors"
    => "Texinfo::DocumentXS::document_errors",
  "Texinfo::Document::parser_errors"
    => "Texinfo::DocumentXS::document_parser_errors",
  "Texinfo::Document::build_tree"
    => "Texinfo::DocumentXS::build_tree",
  "Texinfo::Document::tree"
    => "Texinfo::DocumentXS::document_tree",
  "Texinfo::Document::register_document_options"
    => "Texinfo::DocumentXS::register_document_options",
  "Texinfo::Document::get_conf",
    => "Texinfo::DocumentXS::document_get_conf",
  "Texinfo::Document::global_information"
    => "Texinfo::DocumentXS::document_global_information",
  "Texinfo::Document::indices_information"
    => "Texinfo::DocumentXS::document_indices_information",
  "Texinfo::Document::global_commands_information"
    => "Texinfo::DocumentXS::document_global_commands_information",
  "Texinfo::Document::labels_information"
    => "Texinfo::DocumentXS::document_labels_information",
  "Texinfo::Document::labels_list"
    => "Texinfo::DocumentXS::document_labels_list",
  "Texinfo::Document::nodes_list"
    => "Texinfo::DocumentXS::document_nodes_list",
  "Texinfo::Document::sections_list"
    => "Texinfo::DocumentXS::document_sections_list",
  "Texinfo::Document::sectioning_root"
    => "Texinfo::DocumentXS::document_sectioning_root",
  "Texinfo::Document::headings_list"
    => "Texinfo::DocumentXS::document_headings_list",
  "Texinfo::Document::floats_information"
    => "Texinfo::DocumentXS::document_floats_information",
  "Texinfo::Document::internal_references_information"
    => "Texinfo::DocumentXS::document_internal_references_information",

  "Texinfo::Document::setup_indices_sort_strings"
    => "Texinfo::DocumentXS::setup_indices_sort_strings",
  "Texinfo::Document::indices_sort_strings"
    => "Texinfo::DocumentXS::indices_sort_strings",

  "Texinfo::Document::print_document_indices_information"
    => "Texinfo::DocumentXS::print_document_indices_information",
  "Texinfo::Document::print_document_indices_sort_strings"
    => "Texinfo::DocumentXS::print_document_indices_sort_strings",
);

my $XS_structuring = Texinfo::XSLoader::XS_structuring_enabled();

our %XS_structure_overrides = (
  "Texinfo::Document::print_document_listoffloats"
    => "Texinfo::DocumentXS::print_document_listoffloats",

  # needed with the Reader/TreeElement interfaces only
  "Texinfo::Document::register_document_relations_lists_elements"
    => "Texinfo::DocumentXS::register_document_relations_lists_elements",
);


our $module_loaded = 0;
sub import {
  if (!$module_loaded) {
    if ($XS_parser) {
      for my $sub (keys %XS_overrides) {
        Texinfo::XSLoader::override ($sub, $XS_overrides{$sub});
      }
    }
    if ($XS_structuring) {
      for my $sub (keys %XS_structure_overrides) {
        Texinfo::XSLoader::override ($sub, $XS_structure_overrides{$sub});
      }
    }
    $module_loaded = 1;
  }
  # The usual import method
  goto &Exporter::import;
}

# No XS override, only called from Texinfo::ParserNonXS.
sub new_document($)
{
  my $indices_information = shift;
  my $document = {
    'indices' => $indices_information,
    'listoffloats_list' => {},
    'internal_references' => [],
    'global_info' => {'input_encoding_name' => 'utf-8',
                    #'included_files' => [],
                    },
    'commands_info' => {},
    'identifiers_target' => {},
    'labels_list' => [],
    'nodes_list' => [],
    'sections_list' => [],
    'headings_list' => [],
     # error messages for parsing
    'parser_error_messages' => [],
     # error messages for the document for structuring, not for parsing
    'error_messages' => [],
     # hold output unit lists, such that they can be retrieved.
     # In general, the lists are created and managed by converters or other
     # codes, not by code related to the Texinfo parsed Document, the
     # Document is merely used to store them, since it generally
     # outlives converters.
     'output_units_lists' => [],
  };

  bless $document;
  return $document;
}

sub register_tree($$)
{
  my $document = shift;
  my $tree = shift;
  $document->{'tree'} = $tree;
}

sub set_document_global_info($$$)
{
  my $document = shift;
  my $key = shift;
  my $value = shift;
  $document->{'global_info'}->{$key} = $value;
}

sub tree($;$)
{
  my $self = shift;
  return $self->{'tree'};
}

# return indices information
sub indices_information($)
{
  my $self = shift;
  return $self->{'indices'};
}

sub floats_information($)
{
  my $self = shift;
  return $self->{'listoffloats_list'};
}

sub internal_references_information($)
{
  my $self = shift;
  return $self->{'internal_references'};
}

sub global_commands_information($)
{
  my $self = shift;
  return $self->{'commands_info'};
}

sub global_information($)
{
  my $self = shift;
  return $self->{'global_info'};
}

sub labels_information($)
{
  my $self = shift;
  return $self->{'identifiers_target'};
}

sub labels_list($)
{
  my $self = shift;
  return $self->{'labels_list'};
}

sub nodes_list($)
{
  my $self = shift;
  return $self->{'nodes_list'};
}

sub sections_list($)
{
  my $self = shift;
  return $self->{'sections_list'};
}

sub sectioning_root($)
{
  my $self = shift;
  return $self->{'sectioning_root'};
}

sub headings_list($)
{
  my $self = shift;
  return $self->{'headings_list'};
}

# In the tests, output units are registered for several formats
sub register_output_units_lists($$) {
  my ($self, $output_units_lists) = @_;

  return unless defined($output_units_lists);

  foreach my $output_unit_list (@$output_units_lists) {
    push @{$self->{'output_units_lists'}}, $output_unit_list
      unless(!defined($output_unit_list));
  }
}

sub get_output_units_lists($) {
  my $self = shift;
  return $self->{'output_units_lists'};
}

# Useful for options used in structuring/tree transformations.
sub register_document_options($$)
{
  my $self = shift;
  my $options = shift;

  $self->{'options'} = $options;
}

sub get_conf($$)
{
  my $self = shift;
  my $var = shift;

  if ($self->{'options'}) {
    return $self->{'options'}->{$var};
  }

  # This may happen if a tree/document is manipulated without having
  # any configuration set.  This is or was the case for pod2texi.
  # This is allowed.
  return undef;
}



sub tree_remove_parents($);

sub tree_remove_parents($) {
  my $element = shift;

  confess() if (!defined($element));
  #print STDERR "TREE t_r_p $element: "
  #     .Devel::Refcount::refcount($element)."\n";
  #   .Texinfo::ManipulateTree::element_print_details($element)."\n";

  if (exists($element->{'source_marks'})) {
    foreach my $source_mark (@{$element->{'source_marks'}}) {
      if (exists($source_mark->{'element'})) {
        tree_remove_parents($source_mark->{'element'});
      }
    }
  }

  return if (exists($element->{'text'}));

  delete $element->{'parent'};

  if (exists($element->{'info'})) {
    foreach my $info_elt_key ('comment_at_end', 'spaces_before_argument',
                              'spaces_after_cmd_before_arg',
                              'spaces_after_argument') {
      # for spaces_* parents can only be in source marks
      if (exists($element->{'info'}->{$info_elt_key})) {
        tree_remove_parents($element->{'info'}->{$info_elt_key});
      }
    }
  }

  if (exists($element->{'contents'})) {
    foreach my $content (@{$element->{'contents'}}) {
      tree_remove_parents($content);
    }
    if (exists($element->{'extra'})) {
      if (exists($element->{'extra'}->{'def_index_element'})) {
        tree_remove_parents($element->{'extra'}->{'def_index_element'});
        if (exists($element->{'extra'}->{'def_index_ref_element'})) {
          tree_remove_parents($element->{'extra'}->{'def_index_ref_element'});
        }
      }
      # elements also in $element->{'contents'} (without parent when added).
      #foreach my $key ('node_content', 'manual_content') {
      #  if (exists($element->{'extra'}->{$key})) {
      #    tree_remove_parents($element->{'extra'}->{$key});
      #  }
      #}
    }
  }
}

sub tree_remove_references($);
sub tree_remove_references($)
{
  my $element = shift;

  if (exists($element->{'source_marks'})) {
    foreach my $source_mark (@{$element->{'source_marks'}}) {
      if (exists($source_mark->{'element'})) {
        tree_remove_references($source_mark->{'element'});
      }
      delete $source_mark->{'element'};
    }
  }

  if (!exists($element->{'text'})) {
    if (exists($element->{'info'})) {
      foreach my $info_elt_key ('comment_at_end', 'spaces_before_argument',
                                'spaces_after_cmd_before_arg',
                                'spaces_after_argument') {
        if (exists($element->{'info'}->{$info_elt_key})) {
          tree_remove_references($element->{'info'}->{$info_elt_key});
          delete $element->{'info'}->{$info_elt_key};
        }
      }
    }

    if (exists($element->{'contents'})) {
      if (exists($element->{'extra'})) {
        if (exists($element->{'extra'}->{'def_index_element'})) {
          tree_remove_references($element->{'extra'}->{'def_index_element'});
          delete $element->{'extra'}->{'def_index_element'};
          if (exists($element->{'extra'}->{'def_index_ref_element'})) {
            tree_remove_references(
              $element->{'extra'}->{'def_index_ref_element'});
            delete $element->{'extra'}->{'def_index_ref_element'};
          }
        }
        # holds duplicates of the element label contents
        foreach my $key ('node_content', 'manual_content') {
          if (exists($element->{'extra'}->{$key})) {
            delete $element->{'extra'}->{$key}->{'contents'};
          }
        }
      }
      for (my $i = 0; $i < scalar(@{$element->{'contents'}}); $i++) {
        tree_remove_references($element->{'contents'}->[$i]);
      }
      delete $element->{'contents'};
    }
  }

  #print STDERR "RRR $element ".
  #   Texinfo::ManipulateTree::element_print_details($element)."\n";

  #my $reference_count = Devel::Peek::SvREFCNT($element);
  #my $object_count = Devel::Refcount::refcount($element);
  # The $element variable owns one count to reference and to object.
  # The parent contents hash also holds a count to the object.
  # plus possibly one reference owned by the C code
  #if (1) {
  #if ($reference_count != 1 or $object_count != 2) {
  #  print STDERR "TREE t_r_r $element: $reference_count HV: $object_count\n"
  #     .Texinfo::ManipulateTree::element_print_details($element)."\n"
  #     .Devel::FindRef::track($element)."\n";
  #}
}

# remove cycles
sub _remove_section_relations_relations($) {
  my $section_relation = shift;
  foreach my $relation ('associated_anchor_command', 'associated_node',
                        'part_following_node', 'part_associated_section',
                        'section_children') {
    delete $section_relation->{$relation};
  }
  foreach my $directions ('section_directions', 'toplevel_directions') {
    if (exists($section_relation->{$directions})) {
      delete $section_relation->{$directions}->{'next'};
    }
  }
}

sub _remove_section_relations_references($) {
  my $section_relation = shift;
  foreach my $relation ('element') {
    delete $section_relation->{$relation};
  }
}

sub _remove_node_relations_references($) {
  my $node_relation = shift;
  foreach my $relation ('element', 'associated_title_command',
                        'node_description', 'node_long_description',
                        'menus', 'node_directions') {
    delete $node_relation->{$relation};
  }
}

sub _remove_heading_relations_references($) {
  my $heading_relation = shift;
  foreach my $relation ('element') {
    delete $heading_relation->{$relation};
  }
}

# remove cycles in output units
sub _remove_output_units_directions($) {
  my $document = shift;

  my $output_units_lists = $document->get_output_units_lists();

  my $i = -1;
  foreach my $output_units_list (@$output_units_lists) {
    $i++;
    foreach my $output_unit (@$output_units_list) {
      delete $output_unit->{'first_in_page'};
      if (exists($output_unit->{'tree_unit_directions'})) {
        delete $output_unit->{'tree_unit_directions'}->{'next'};
      }
      if (exists($output_unit->{'directions'})) {
        foreach my $direction (keys(%{$output_unit->{'directions'}})) {
          delete $output_unit->{'directions'}->{$direction};
        }
      }
      # not necessary to remove cycles in general, as the associated_unit
      # are removed from elements, however, some elements may not be in the
      # tree, in practice HTML special units elements.
      delete $output_unit->{'unit_command'};
      if (0) {
        print STDERR " $output_unit ["
               .(exists($output_unit->{'unit_contents'}) ?
                  scalar(@{$output_unit->{'unit_contents'}}) : '-')."]: ".
                     Devel::Peek::SvREFCNT($output_unit).
         " HV: ".Devel::Refcount::refcount($output_unit)."\n";
      }
    }
  }
}

# remove references to elements
sub _remove_output_units_references($) {
  my $document = shift;

  my $output_units_lists = $document->get_output_units_lists();

  foreach my $output_units_list (@$output_units_lists) {
    foreach my $output_unit (@$output_units_list) {
      #delete $output_unit->{'unit_command'};
      delete $output_unit->{'unit_contents'};
    }
  }
}

# for debugging
sub _print_tree_elements_ref($$);
sub _print_tree_elements_ref($$)
{
  my ($tree, $level) = @_;

  print STDERR "". (' ' x $level) . $tree."\n";

  if (exists($tree->{'contents'})) {
    for (my $i = 0; $i < scalar(@{$tree->{'contents'}}); $i++) {
      _print_tree_elements_ref($tree->{'contents'}->[$i], $level+1);
    }
  }
}

# can also be called from XS
# If $REMOVE_REFERENCES is not set, removing items objective is to remove
# cycles such that Perl can reclaim the removed memory.  If
# $REMOVE_REFERENCES is set, the references to elements are removed, in
# particular to be able to check that there is no reference remaining
# other than the reference kept in C code.
sub remove_document_references($;$) {
  my ($document, $remove_references) = @_;

  my $tree = $document->{'tree'};

  my $sections_list = $document->{'sections_list'};
  foreach my $section_relation (@$sections_list) {
    _remove_section_relations_relations($section_relation);
  }
  if ($remove_references) {
    foreach my $section_relation (@$sections_list) {
      _remove_section_relations_references($section_relation);
    }
    my $nodes_list = $document->{'nodes_list'};
    foreach my $node_relation (@$nodes_list) {
      _remove_node_relations_references($node_relation);
    }
    my $headings_list = $document->{'headings_list'};
    foreach my $heading_relation (@$headings_list) {
      _remove_heading_relations_references($heading_relation);
    }
    # Refers to section relations not directly to tree elements
    #if (exists($document->{'sectioning_root'})) {
    #}
  }

  # similar to unsplit
  # tree may not be defined if the input file was not found
  if (defined($tree) and exists($tree->{'contents'})) {
    foreach my $content (@{$tree->{'contents'}}) {
      delete $content->{'associated_unit'};
    }
  }

  if ($remove_references) {
    delete $document->{'identifiers_target'};
    delete $document->{'labels_list'};
    delete $document->{'internal_references'};
    delete $document->{'commands_info'};
    delete $document->{'listoffloats_list'};

    foreach my $index_name (keys(%{$document->{'indices'}})) {
      my $index = $document->{'indices'}->{$index_name};
      foreach my $index_entry (@{$index->{'index_entries'}}) {
        delete $index_entry->{'entry_element'};
        delete $index_entry->{'entry_associated_element'};
      }
    }
  }

  _remove_output_units_directions($document);
  if ($remove_references) {
    _remove_output_units_references($document);
  }

  if (0 and $remove_references) {
    foreach my $lang (sort(keys(
                         %{$Texinfo::Translations::translation_cache}))) {
      my $lang_cache = $Texinfo::Translations::translation_cache->{$lang};
      foreach my $string (sort(keys(%$lang_cache))) {
        foreach my $context (sort(keys(%{$lang_cache->{$string}}))) {
          my ($translation, $trans_tree)
            = @{$lang_cache->{$string}->{$context}};
          print STDERR "TRANSL: $string-$context: ";
          if (defined($trans_tree)) {
            _print_tree_elements_ref($trans_tree, 0);
          } else {
            print STDERR "NOT NEEDED\n";
          }
        }
      }
    }
  }


  if (defined($tree)) {
    tree_remove_parents($tree);
    if ($remove_references) {
      tree_remove_references($tree);
      delete $document->{'tree'};
    }
  }
}

sub destroy_document($;$) {
  my ($document, $remove_references) = @_;

  remove_document_references($document, $remove_references);

  #find_cycle($document);
  $document = undef;
}

# The XS override register a reference to the C element in Perl
# nodes, sectioning and heading commands.  Only needed if the
# TreeElement/Reader interfaces are used, which is not the case for
# converters used used in texi2any.
sub register_document_relations_lists_elements($)
{
  my $document = shift;
}

# this method does nothing, but the XS override rebuilds the Perl
# tree based on XS data.
sub build_tree($;$)
{
  my $tree = shift;
  my $no_store = shift;

  return $tree;
}

sub document_line_warn($$$;$)
{
  my $document = shift;
  my $text = shift;
  my $error_location_info = shift;
  my $continuation = shift;

  $continuation = 0 if !defined($continuation);

  my $error_messages = $document->{'error_messages'};
  my $debug = $document->get_conf('DEBUG');

  push @$error_messages, Texinfo::Report::line_warn($text,
                           $error_location_info, $continuation, $debug);
}

sub document_line_error($$$;$)
{
  my $document = shift;
  my $text = shift;
  my $error_location_info = shift;
  my $continuation = shift;

  $continuation = 0 if !defined($continuation);

  my $error_messages = $document->{'error_messages'};
  my $debug = $document->get_conf('DEBUG');

  push @$error_messages,
          Texinfo::Report::line_error($text, $error_location_info,
                                      $continuation, $debug);
}

sub parser_errors($)
{
  my $document = shift;

  my $errors_output = [@{$document->{'parser_error_messages'}}];

  $document->{'parser_error_messages'} = [];

  return $errors_output;
}

# The XS override pass C error messages to the document
# error_messages and destroys C associated data.
sub errors($)
{
  my $document = shift;

  my $errors_output = [@{$document->{'error_messages'}}];

  $document->{'error_messages'} = [];

  return $errors_output;
}



# No XS override.
# This method is already called by other methods, in particular
# sorted_indices_by_* when the indexes are sorted.  When the indexes
# are merged but not sorted, it is sensible to call this function
# directly.  Also called directly in tests.
# XS override is not needed, if the converters calling this function
# are implemented in C, even partly, they should call the C counterpart
# rather than go through an XS interface.
sub merged_indices($)
{
  my $self = shift;

  if ($self->{'indices'}) {
    if (!$self->{'merged_indices'}) {
      $self->{'merged_indices'}
        = Texinfo::Indices::merge_indices($self->{'indices'});
    }
  }
  return $self->{'merged_indices'};
}

# calls Texinfo::Indices::setup_index_entries_sort_strings and caches the
# result.
# In general, it is not needed to call that function directly,
# as it is called by Texinfo::Indices::sort_indices_by_*.  It could
# be called in advance if errors need to be collected early.
sub setup_indices_sort_strings($$)
{
  my $document = shift;
  my $converter = shift;

  if (!$document->{'index_entries_sort_strings'}) {
    my $indices_sort_strings
      = Texinfo::Indices::setup_index_entries_sort_strings($document,
              $converter, $document->merged_indices(),
              $document->indices_information(), 0);
    $document->{'index_entries_sort_strings'} = $indices_sort_strings;
  }
}

# index_entries_sort_strings accessor.  A different function from
# setup_indices_sort_strings such that there is no need to build C data
# to Perl when calling setup_indices_sort_strings, to make it possible
# to delay building Perl data for indices_sort_strings function call in XS.
sub indices_sort_strings($$)
{
  my $document = shift;
  my $converter = shift;

  setup_indices_sort_strings($document, $converter);
  return $document->{'index_entries_sort_strings'};
}

# calls Texinfo::Indices::sort_indices_by_letter and caches the result.
# No XS override, as there is no reason to call this function directly
# outside of tests, Texinfo::Convert::Converter
# get_converter_indices_sorted_by_letter should be called directly.
# In general a CONVERTER argument is given, but if not the DOCUMENT is
# used instead to register error messages.
sub sorted_indices_by_letter($$$$)
{
  my $document = shift;
  my $converter = shift;
  my $use_unicode_collation = shift;
  my $locale_lang = shift;

  my $lang_key;
  if (!$use_unicode_collation) {
    $lang_key = '';
  } elsif (!defined($locale_lang)) {
    # special name corresponding to Unicode Collation with 'Non-Ignorable'
    # set for variable collation elements
    $lang_key = '-';
  } else {
    $lang_key = $locale_lang;
  }

  $document->{'sorted_indices_by_letter'} = {}
    if (!$document->{'sorted_indices_by_letter'});

  if (!$document->{'sorted_indices_by_letter'}->{$lang_key}) {
    $document->merged_indices();
    $document->{'sorted_indices_by_letter'}->{$lang_key}
      = Texinfo::Indices::sort_indices_by_letter
                    ($document, $converter,
                     $use_unicode_collation, $locale_lang);
  }
  return $document->{'sorted_indices_by_letter'}->{$lang_key};
}

# calls Texinfo::Indices::sort_indices_by_index and caches the result.
# No XS override, as there is no reason to call this function directly
# outside of tests, Texinfo::Convert::Converter
# get_converter_indices_sorted_by_index should be called directly.
# In general a CONVERTER argument is given, but if not the DOCUMENT is
# used instead to register error messages.
sub sorted_indices_by_index($$$$)
{
  my $document = shift;
  my $converter = shift;
  my $use_unicode_collation = shift;
  my $locale_lang = shift;

  my $lang_key;
  if (!$use_unicode_collation) {
    $lang_key = '';
  } elsif (!defined($locale_lang)) {
    # special name corresponding to Unicode Collation with 'Non-Ignorable'
    # set for variable collation elements
    $lang_key = '-';
  } else {
    $lang_key = $locale_lang;
  }

  $document->{'sorted_indices_by_index'} = {}
    if (!$document->{'sorted_indices_by_index'});

  if (!$document->{'sorted_indices_by_index'}->{$lang_key}) {
    $document->merged_indices();
    $document->{'sorted_indices_by_index'}->{$lang_key}
      = Texinfo::Indices::sort_indices_by_index
                      ($document, $converter,
                       $use_unicode_collation, $locale_lang);
  }
  return $document->{'sorted_indices_by_index'}->{$lang_key};
}



# wrapper on print_listoffloats_types that can be used for XS overriding.
# Used in tests only.
sub print_document_listoffloats($)
{
  my $document = shift;

  my $float_text;

  if ($document) {
    my $floats = $document->floats_information();
    if ($floats) {
      $float_text
          = Texinfo::ManipulateTree::print_listoffloats_types($floats);
    }
  }

  return $float_text;
}

# wrapper on print_indices_information that can be used for XS overriding.
# Used in tests only.
sub print_document_indices_information($)
{
  my $document = shift;

  my $indices_info_text;

  if ($document) {
    my $indices_information = $document->indices_information();
    if ($indices_information) {
      $indices_info_text
        = Texinfo::Indices::print_indices_information($indices_information);
    }
  }

  return $indices_info_text;
}

# for tests, to be used for overriding
sub print_document_indices_sort_strings($)
{
  my $document = shift;

  # read from C data if needed
  $document->indices_information();

  my $merged_index_entries = $document->merged_indices();

  # use merged indices here as there are only indices with
  # entries in that data
  return undef unless ($merged_index_entries);

  my $use_unicode_collation
    = $document->get_conf('USE_UNICODE_COLLATION');
  my $locale_lang;
  if (!(defined($use_unicode_collation) and !$use_unicode_collation)) {
    $locale_lang
     = $document->get_conf('COLLATION_LANGUAGE');
  }

  my $indices_sort_strings = indices_sort_strings($document, undef);

  my $index_entries_sort_strings
   = Texinfo::Indices::format_index_entries_sort_strings(
                                                     $indices_sort_strings);

  my $sorted_index_entries
       = sorted_indices_by_index($document, undef,
                               $use_unicode_collation, $locale_lang);

  my $idx_sort_strings_str = '';
  foreach my $index_name (sort(keys(%$sorted_index_entries))) {
    # index entries sort strings sorted in the order of the index entries
    my $index_entries = $sorted_index_entries->{$index_name};
    if (scalar(@{$index_entries})) {
      $idx_sort_strings_str .= "${index_name}:\n";
      foreach my $index_entry (@{$index_entries}) {
        my $sort_string = $index_entries_sort_strings->{$index_entry};
        $idx_sort_strings_str .= " ${sort_string}\n";
      }
    }
  }
  return $idx_sort_strings_str;
}



# In general, we avoid passing error messages separate from the object holding
# them.  In that case, however, when called from parser, we want
# parser_error_messages error messages to be modified from a document, and not
# the error messages of the document, so we pass the error messages list
# separately.
sub _existing_label_error($$;$$)
{
  my $self = shift;
  my $element = shift;
  my $error_messages = shift;
  my $debug = shift;

  if ($element->{'extra'}
      and defined($element->{'extra'}->{'normalized'})) {
    my $normalized = $element->{'extra'}->{'normalized'};
    if (defined($error_messages)) {
      my $existing_target = $self->{'identifiers_target'}->{$normalized};
      my $label_element = Texinfo::Common::get_label_element($element);
      push @$error_messages, Texinfo::Report::line_error(
                       sprintf(__("\@%s `%s' previously defined"),
                                     $element->{'cmdname'},
                    Texinfo::Convert::Texinfo::convert_to_texinfo(
    Texinfo::TreeElement::new({'contents' => $label_element->{'contents'}}))),
                              $element->{'source_info'}, 0, $debug);
      push @$error_messages, Texinfo::Report::line_error(
                    sprintf(__("here is the previous definition as \@%s"),
                            $existing_target->{'cmdname'}),
                             $existing_target->{'source_info'}, 1, $debug);
    }
  }
}

sub _add_element_to_identifiers_target($$)
{
  my $self = shift;
  my $element = shift;

  if ($element->{'extra'}
      and defined($element->{'extra'}->{'normalized'})) {
    my $normalized = $element->{'extra'}->{'normalized'};
    if (!defined $self->{'identifiers_target'}->{$normalized}) {
      $self->{'identifiers_target'}->{$normalized} = $element;
      $element->{'extra'}->{'is_target'} = 1;
      return 1;
    }
  }
  return 0;
}

# No XS override, only called from Texinfo::ParserNonXS.
# This should be considered an internal function of the parser.
# It is here to reuse code.
# Sets $self->{'identifiers_target'} based on $self->{'labels_list'}.
sub set_labels_identifiers_target($$;$)
{
  my $self = shift;
  my $error_messages = shift;
  my $debug = shift;

  my @elements_with_error;

  $self->{'identifiers_target'} = {};
  if (defined $self->{'labels_list'}) {
    foreach my $element (@{$self->{'labels_list'}}) {
      my $retval = _add_element_to_identifiers_target($self, $element);
      if (!$retval and $element->{'extra'}
          and defined($element->{'extra'}->{'normalized'})) {
        push @elements_with_error, $element;
      }
    }
  }
  # when a sorted list was used for identifiers in C code, identifiers
  # order was used to have the same error messages order; otherwise document
  # order should be used
  if (scalar(@elements_with_error) > 0) {
    my @sorted
    # use document order since C code uses hashmap for identifiers.
     = #sort {$a->{'extra'}->{'normalized'} cmp $b->{'extra'}->{'normalized'}}
        @elements_with_error;
    foreach my $element (@sorted) {
      _existing_label_error($self, $element, $error_messages, $debug);
    }
  }
}

# Not clear whether this should be considered as a private function
# here solely to reuse code, or if it should be considered to be public.
# There is no XS override but the function modifies Perl data that is also
# in C when XS is used.  Therefore this function should only be called from
# Perl if there is no XS used.
sub register_label_element($$;$$)
{
  my $self = shift;
  my $element = shift;
  my $error_messages = shift;
  my $debug = shift;

  my $retval = _add_element_to_identifiers_target($self, $element);
  if (!$retval) {
    _existing_label_error($self, $element, $error_messages, $debug);
  }
  # TODO do not push at the end but have the caller give an information
  # on the element it should be after or before in the list?
  push @{$self->{'labels_list'}}, $element;
  return $retval;
}

1;
__END__
=head1 NAME

Texinfo::Document - Texinfo document tree and information

=head1 SYNOPSIS

  use Texinfo::Parser;

  my $parser = Texinfo::Parser::parser();
  my $document = $parser->parse_texi_file("somefile.texi");

  my $indices_information = $document->indices_information();
  my $float_types_arrays = $document->floats_information();
  my $internal_references_array
    = $document->internal_references_information();

  # $identifier_target is an hash reference on normalized
  # node/float/anchor/namedanchor names.
  my $identifier_target = $document->labels_information();

  # A hash reference, keys are @-command names, value is the
  # corresponding @-commands tree element or an
  # array reference holding all the corresponding @-commands.
  # Also contains dircategory and direntry list.
  my $global_commands_information
                 = $document->global_commands_information();

  # a hash reference on document information (encodings,
  # input file name, for example).
  my $global_information = $document->global_information();

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

This module is used to represent parsed Texinfo documents, with the Texinfo
tree and associated information.  A document is always obtained from
a Texinfo parser method call as the result of parsing a Texinfo text or file.

For example, the I<$document> obtained in the following example is a
C<Texinfo::Document> object:

  my $parser = Texinfo::Parser::parser();
  my $document = $parser->parse_texi_file("somefile.texi");

=head1 METHODS

=head2 Getting document information

The main purpose of Texinfo::Document methods is to retrieve information
on a Texinfo document.

The Texinfo tree obtained by parsing a Texinfo document is available through
C<tree>:

=over

=item $tree = tree($document, $handler_only)
X<C<tree>>

The I<$tree> is a hash reference.  It is described in
L<Texinfo::Parser/TEXINFO TREE>.

If I<$handler_only> is set and XS extensions are used, the returned
tree holds a reference to the C Texinfo tree data only, but no actual
Perl Texinfo tree.  This avoids building the Perl tree if all the
functions called with the tree as argument have XS interfaces and
directly use the C data and do not use the Perl tree.

=back

Some global information is available through C<global_information>:

=over

=item $info = global_information($document)
X<C<global_information>>

The I<$info> returned is a hash reference.  The possible keys are

=over

=item included_files

An array of included file paths as they appear in the document.  Binary
strings.  From both C<@include> and C<@verbatiminclude>.

=item input_encoding_name

C<input_encoding_name> string is the encoding name used for the
Texinfo code.

=item input_file_name

=item input_directory

The name of the main Texinfo input file and the associated directory.
Binary strings.  In C<texi2any>, they should come from the command line
(and can be decoded with the encoding in the customization variable
C<COMMAND_LINE_ENCODING>).

=back

If the global information changed, C<global_information> should be called
to update the hash returned by previous calls before accessing the hash again.

=back

Some command lists are available, such that it is possible to go through
the corresponding tree elements without walking the tree.  They are
available through C<global_commands_information>:

=over

=item $commands = global_commands_information($document)
X<C<global_commands_information>>

I<$commands> is an hash reference.  The keys are @-command names.  For
@-commands that may appear multiple time in the Texinfo document, the
associated values are array references containing all the corresponding
tree elements.  For @-commands that should appear only once, the associated
value is the tree element.

The following list of commands is also available as a key:

=over

=item dircategory_direntry

An array of successive C<@dircategory> and C<@direntry> as they appear
in the document.

=back

=back

All the @-commands that have an associated label (so can be the
target of cross references) -- C<@node>, C<@anchor>, C<@namedanchor>
and C<@float> with label -- have a normalized name associated, constructed as
described in the I<HTML Xref> node in the Texinfo documentation.  Those
normalized labels and the association with @-commands is available through
C<labels_information>:

=over

=item $identifier_target = labels_information($document)
X<C<labels_information>>

I<$identifier_target> is a hash reference whose keys are normalized
labels, and the associated value is the corresponding @-command.

=item $labels_list = labels_list ($document)
X<C<labels_list>>

I<$labels_list> is a list of Texinfo tree command elements that
could be the target of cross references.

=back

Information on C<@float> grouped by type of floats, each type corresponding
to potential C<@listoffloats> is available through C<floats_information>.

=over

=item $float_types = floats_information($document)
X<C<floats_information>>

I<$float_types> is a hash reference whose keys are normalized float
types (the first float argument, or the C<@listoffloats> argument).
The normalization is the same as for the first step of node names
normalization. The value is the list of array references with
first element the float tree elements appearing in the texinfo document
and second element the section element the float appeared in.

=back

Internal references, nodes and section information may also be available.

=over

=item $internal_references_array = internal_references_information($document)
X<C<internal_references_information>>

The function returns an array reference of cross-reference commands referring
to the same document with @-commands that refer to node, anchors or floats.

=item $nodes_list = nodes_list($document)

Returns an array reference containing information on each node.

=item $sections_list = sections_list($document)

Returns an array reference containing information on each section.

=item $sectioning_root = sectioning_root($document)

Return the sectioning root information.  It is an hash reference with the
I<sections_list> key, an array reference of the top level sectioning
commands relations.

=back

Information about defined indexes, indexes merging and index entries is
available through C<indices_information>.

=over

=item $indices_information = $document->indices_information()
X<C<indices_information>>

I<$indices_information> is a hash reference.  The keys are

=over

=item in_code

1 if the index entries should be formatted as code, 0 in the opposite case.

=item name

The index name.

=item prefix

An array reference of prefix associated to the index.

=item merged_in

In case the index is merged to another index, this key holds the name of
the index the index is merged into.  It takes into account indirectly
merged indexes.

=item index_entries

An array reference containing index entry structures for index entries
associated with the index.  The index entry could be associated to
@-commands like C<@cindex>, or C<@item> in C<@vtable>, or definition
commands entries like C<@deffn>.

The keys of the index entry structures are

=over

=item index_name

The index name associated to the command.  Not modified if the corresponding
index is merged in another index (with C<@synindex>, for example).

=item entry_element

The element in the parsed tree associated with the @-command holding the
index entry.

=item entry_number

The number of the index entry.

=back

=back

The following shows the references corresponding to the default indexes
I<cp> and I<fn>, the I<fn> index having its entries formatted as code and
the indexes corresponding to the following texinfo

  @defindex some
  @defcodeindex code

  $index_names = {'cp' => {'name' => 'cp', 'in_code' => 0, },
                  'fn' => {'name' => 'fn', 'in_code' => 1, },
                  'some' => {'in_code' => 0},
                  'code' => {'in_code' => 1}};

If C<name> is not set, it is set to the index name.

=back

=head2 Merging and sorting indexes

Merged and sorted document indexes are also available.  Parsed indexes
are not merged nor sorted, L<Texinfo::Indices> functions are
called to merge or sort the indexes the first time the following
methods are called.  The results are afterwards associated to the
document and simply returned.

=over

=item $merged_indices = $document->merged_indices()
X<C<merged_indices>>

Merge indexes if needed and return merged indexes.  The I<$merged_indices>
returned is a hash reference whose keys are the index names and values arrays
of index entry structures described in L</index_entries>.

L<< C<Texinfo::Indices::merge_indices>|Texinfo::Indices/$merged_indices = merge_indices($indices_information) >>
is used to merge the indexes.

It is not useful to call this function directly if indexes are sorted, as
it is already called by index sorting functions.

=back

In general, the sorting methods should not be called directly, instead
L<Texinfo::Convert::Converter/Index sorting> Converter methods should be
used, which already call the following functions.

=over

=item $sorted_indices = sorted_indices_by_index($document, $converter, $use_unicode_collation, $locale_lang)

=item $sorted_indices = sorted_indices_by_letter($document, $converter, $use_unicode_collation, $locale_lang)
X<C<sorted_indices_by_index>> X<C<sorted_indices_by_letter>>

C<sorted_indices_by_letter> returns the indices sorted by index and letter,
while C<sorted_indices_by_index> returns the indexes with all entries
of an index together.

By default, indexes are sorted according to the I<Unicode Collation Algorithm>
defined in the L<Unicode Technical Standard
#10|http://www.unicode.org/reports/tr10/>, without language-specific collation
tailoring.  If I<$use_unicode_collation> is set to 0, the sorting will not use
the I<Unicode Collation Algorithm> and simply sort according to the codepoints.
If I<$locale_lang> is set, the language is used for linguistic tailoring of the
sorting, if possible.

When sorting by letter, an array reference of letter hash references is
associated with each index name.  Each letter hash reference has two
keys, a I<letter> key with the letter, and an I<entries> key with an array
reference of sorted index entries beginning with the letter.  The letter
is a character string suitable for sorting letters, but is not necessarily
the best to use for output.

When simply sorting, the array of the sorted index entries is associated
with the index name.

The optional I<$converter> argument is used for error reporting, if not
defined, the I<$document> is used.

L<< C<Texinfo::Indices::sort_indices_by_index>|Texinfo::Indices/$index_entries_sorted = sort_indices_by_index($document, $converter, $use_unicode_collation, $locale_lang) >>
and L<< C<Texinfo::Indices::sort_indices_by_letter>|Texinfo::Indices/$index_entries_sorted = sort_indices_by_letter($document, $converter, $use_unicode_collation, $locale_lang) >>
are used to sort the indexes, if needed.

In general, those methods should not be called directly, instead
L<< C<Texinfo::Convert::Converter::get_converter_indices_sorted_by_index>|Texinfo::Convert::Converter/$sorted_indices = $converter->get_converter_indices_sorted_by_index() >>
and L<< C<Texinfo::Convert::Converter::get_converter_indices_sorted_by_letter>|Texinfo::Convert::Converter/$sorted_indices = $converter->get_converter_indices_sorted_by_letter() >>
should be used.  The C<Texinfo::Convert::Converter> methods call
C<sorted_indices_by_index> and C<sorted_indices_by_letter>.

=back

=head2 Getting errors and warnings

A document has a list of error and warning messages associated, that is used to
register errors and warning messages in.  To get the errors registered in the
document, the C<errors> method should be called.

=over

=item $error_warnings_list = errors($document)

This function returns as the errors since setting
up the I<$document> (or calling the function). The returned
I<$error_warnings_list> is an array of hash references
one for each error, warning or error line continuation.  The format of
these hash references is described
L<Texinfo::Report::count_errors|Texinfo::Report/$error_count  = count_errors ($error_messages)>.

=back

=head2 Getting customization options values registered in document

By default, customization information is registered in a document object
just after parsing the Texinfo code. Structuring and tree transformation
methods then get customization variables values from the document object
they have in argument. The customization variables set by default may be a
subset selected to be useful for structuring and tree transformation codes.

To retrieve Texinfo customization variables you can call C<get_conf>:

=over

=item $value = $document->get_conf($variable_name)

Returns the value of the Texinfo customization variable I<$variable_name>
(possibly C<undef>), if the variable value was registered in the document,
or C<undef>.

=back

=head2 Registering information in document

Some information can be registered in the document.

=over

=item register_document_options ($document, $options)
X<C<register_document_options>>

The I<$options> hash reference holds options for the document. These options
should be Texinfo customization options.  Usually, the options registered in
the document contain those useful for structuring and tree transformation
getting place between Texinfo code parsing and conversion to output formats.
Indeed, document customization options are mainly accessed by structuring and
tree transformation methods (by calling L<< C<get_conf>|/$value = $document->get_conf($variable_name) >>). The options should in general be registered before
the calls to C<get_conf>.

=item set_document_global_info($document, $key, $value)
X<C<set_document_global_info>>

Add I<$value> I<$key> global information to I<$document>.  This method
should not be generally useful, as document global information is already
set by the Texinfo parser.  The information set should be available through
the next calls to L<global_information|/$info = global_information($document)>.
The method should in general be called before the calls to
C<global_information>.

=back

=head2 Methods for Perl and C code interactions

The parsing of Texinfo code, structuring and transformations of the document
and tree called through Texinfo Perl modules may be done by pure Perl modules
or by Perl XS extensions in native code (written in C).
In general, it makes no difference whether pure Perl or C code is used.  When
the document and tree are modified through native code based on C code, the
Perl data are automatically rebuilt when calling the accessors described
previously.  In some cases, however, specific functions need to be called to
pass information from C data to Perl or perform actions related to C data.

When the tree is directly accessed in Perl (not through a document)
but is modified by C code, when the Perl tree holds only a reference to
C data, but no Perl data, or when you want to update all the Perl data
before doing changes in Perl only, you can build the Perl data from the C data
with C<build_tree>:

=over

=item $tree = build_tree($tree, $no_store)
X<C<build_tree>>

Return a I<$tree>, built from C data.  If there is no Perl extensions in C,
the tree is returned as is.  The tree built is based on the Texinfo parsed
document associated to the Texinfo tree I<$tree>.

If the optional I<$no_store> argument is set, remove the C data.  It may be
useful if you call functions that modify the Perl tree only, and not the C data,
followed by functions call that output the result and uses the C data if present.
Removing the C data makes sure that the output is not based on unmodified C data,
but on the modified Perl data.

=back

Note that the Perl tree associated to a document is rebuilt from C data
when calling C<< $document->tree() >>.  Similarly, the tree is rebuilt when
calling other accessors that depend on the document tree.  Therefore
C<build_tree> should mainly be called when there is no document associated to a
tree and C<< $document->tree() >> cannot be called to rebuild the tree,
or with the I<$no_store> argument, if you want to remove the link with C data.

Some methods allow to release the memory held by C data associated
to a Texinfo parsed document:

=over

=item destroy_document($document)
X<C<destroy_document>>

Release the C data corresponding to I<$document>.

=back

=head1 SEE ALSO

L<Texinfo::Parser>. L<Texinfo::Structuring>.

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
