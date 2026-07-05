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

# ALTIMP perl/XSTexinfo/parser_document/DocumentIndicesXS.xs
# ALTIMP C/main/document.c

package Texinfo::Document::Indices;

use strict;
use warnings;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

use Carp qw(cluck confess);

use Texinfo::Indices;

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

# for tests.  Used for overriding
sub print_document_indices_sort_strings($) {
  my $document = shift;

  # read from C data if needed
  $document->indices_information();

  my $merged_index_entries = merged_indices($document);

  # use merged indices here as there are only indices with
  # entries in that data
  return undef unless (defined($merged_index_entries));

  my $use_unicode_collation
    = $document->get_conf('USE_UNICODE_COLLATION');
  my $lang_sorting_locale;
  if (!(defined($use_unicode_collation) and !$use_unicode_collation)) {
    $lang_sorting_locale = $document->get_conf('COLLATION_LANGUAGE');
  }

  my $indices_sort_strings = _document_indices_sort_strings($document);

  my $sorted_index_entries
       = sorted_indices_by_index($document,
                            $use_unicode_collation, $lang_sorting_locale);

  return Texinfo::Indices::print_indices_sort_strings($sorted_index_entries,
                                                      $indices_sort_strings);
}

1;
