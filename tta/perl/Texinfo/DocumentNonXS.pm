# Copyright 2023-2026 Free Software Foundation, Inc.
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

# This package provides a view of a parsed Texinfo document.
#
# ALTIMP perl/XSTexinfo/parser_document/DocumentXS.xs
# ALTIMP C/main/document.c

package Texinfo::Document;

use strict;
use warnings;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

use Carp qw(cluck confess);

use Texinfo::Indices;

sub set_document_global_info($$$) {
  my ($document, $key, $value) = @_;

  $document->{'global_info'}->{$key} = $value;
}

# $HANDLER_ONLY is only relevant in XS.
sub tree($;$) {
  my ($self, $handler_only) = @_;

  return $self->{'tree'};
}

# return indices information
sub indices_information($) {
  my $self = shift;

  return $self->{'indices'};
}

sub floats_information($) {
  my $self = shift;

  return $self->{'listoffloats_list'};
}

sub internal_references_information($) {
  my $self = shift;

  return $self->{'internal_references'};
}

sub global_commands_information($) {
  my $self = shift;

  return $self->{'commands_info'};
}

sub global_information($) {
  my $self = shift;

  return $self->{'global_info'};
}

sub labels_information($) {
  my $self = shift;

  return $self->{'identifiers_target'};
}

sub labels_list($) {
  my $self = shift;

  return $self->{'labels_list'};
}

sub nodes_list($) {
  my $self = shift;

  return $self->{'nodes_list'};
}

sub sections_list($) {
  my $self = shift;

  return $self->{'sections_list'};
}

sub sectioning_root($) {
  my $self = shift;

  return $self->{'sectioning_root'};
}

sub headings_list($) {
  my $self = shift;

  return $self->{'headings_list'};
}

# Useful for options used in structuring/tree transformations.
sub register_document_options($$) {
  my ($self, $options) = @_;

  $self->{'options'} = $options;
}

sub get_conf($$) {
  my ($self, $var) = @_;

  if (exists($self->{'options'})) {
    return $self->{'options'}->{$var};
  }

  # This may happen if a tree/document is manipulated without having
  # any configuration set.  This is or was the case for pod2texi.
  # This is allowed.
  return undef;
}



sub destroy_document($;$) {
  my ($document, $remove_references) = @_;

  remove_document_references($document, $remove_references);
}

# this method does nothing, but the XS override rebuilds the Perl
# tree based on XS data.
sub build_tree($;$) {
  my ($tree, $no_store) = @_;

  return $tree;
}

# do nothing, the XS code sets up the output strings translation
# paths.
sub configure_output_strings_translations($$) {
  my ($localesdir, $strings_textdomain) = @_;
}



# Errors and warnings handling

sub parser_errors($) {
  my $document = shift;

  my $errors_output = [@{$document->{'parser_error_messages'}}];

  $document->{'parser_error_messages'} = [];

  return $errors_output;
}

# The XS override pass C error messages to the document
# error_messages and remove error messages in C.
sub errors($) {
  my $document = shift;

  my $errors_output = [splice(@{$document->{'error_messages'}})];

  return $errors_output;
}



# Indices

# calls Texinfo::Indices::setup_index_entries_sort_strings and caches the
# result.
# In general, it is not needed to call that function directly,
# as it is called by Texinfo::Indices::sort_indices_by_*.  It could
# be called in advance if errors need to be collected early.
sub setup_indices_sort_strings($$) {
  my ($document, $converter) = @_;

  if (!exists($document->{'index_entries_sort_strings'})) {
    my $indices_sort_strings
      = Texinfo::Indices::setup_index_entries_sort_strings($document,
              $converter, $document->merged_indices(),
              $document->indices_information(), 0);
    $document->{'index_entries_sort_strings'} = $indices_sort_strings;
  }
}

# index_entries_sort_strings accessor.  A different function from
# setup_indices_sort_strings such that there is no necessity to build C data
# to Perl when setup_indices_sort_strings is called.  It is thus possible
# to delay building Perl data until indices_sort_strings function is called.
sub indices_sort_strings($$) {
  my ($document, $converter) = @_;

  setup_indices_sort_strings($document, $converter);
  return $document->{'index_entries_sort_strings'};
}



# wrapper on print_indices_information that can be used for XS overriding.
# Used in tests only.
sub print_document_indices_information($) {
  my $document = shift;

  my $indices_info_text;

  if (defined($document)) {
    my $indices_information = $document->indices_information();
    if (defined($indices_information)) {
      $indices_info_text
        = Texinfo::Indices::print_indices_information($indices_information);
    }
  }

  return $indices_info_text;
}

# for tests, to be used for overriding
sub print_document_indices_sort_strings($) {
  my $document = shift;

  # read from C data if needed
  $document->indices_information();

  my $merged_index_entries = $document->merged_indices();

  # use merged indices here as there are only indices with
  # entries in that data
  return undef unless (defined($merged_index_entries));

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

1;
