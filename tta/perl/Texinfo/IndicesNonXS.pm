# Indices.pm: merge and sort indices.  Implementation of functions with
#             an XS interface
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
# ALTIMP XSTexinfo/parser_document/IndicesXS.xs
# ALTIMP C/main/manipulate_indices.c

package Texinfo::Indices;

use 5.006;

# See comment at start of HTML.pm
use if $] >= 5.012, feature => 'unicode_strings';

use strict;

# Can be used to check that there is no incorrect autovivfication
#no autovivification qw(fetch delete exists store strict);

use Carp qw(cluck confess);

use Texinfo::Common;

use Texinfo::Convert::Text;

our $VERSION = '7.3dev';

# There is a full coverage by the C implementation.
# Relevant XS interfaces are all implemented.
# index_entry_first_letter_text_or_command has a C implementation, but no
# XS override, because it is only a helper function, if needed the calling
# functions should have XS interfaces.

# Only called from converters.  Has an XS override
sub setup_index_entry_keys_formatting($) {
  my $customization_information = shift;

  my $text_options;

  my $additional_options = {};

  if (not $customization_information->get_conf('ENABLE_ENCODING')
      or ($customization_information->get_conf('OUTPUT_ENCODING_NAME')
          and lc($customization_information->get_conf('OUTPUT_ENCODING_NAME'))
                  ne 'utf-8')) {
    $additional_options->{'sort_string'} = 1;
  }

  $text_options
    = Texinfo::Convert::Text::copy_options_for_convert_text(
                             $customization_information, $additional_options);
  return $text_options;
}

# can be used for subentries.
# $DOCUMENT_INFO is used in XS to retrieve the document.
sub index_entry_element_sort_string($$$$;$) {
  my ($document_info, $main_entry, $index_entry_element, $options,
      $prefer_reference_element) = @_;

  my $sort_string;
  if (exists($index_entry_element->{'extra'})
      and exists($index_entry_element->{'extra'}->{'sortas'})) {
    $sort_string = $index_entry_element->{'extra'}->{'sortas'};
  } else {
    my $entry_tree_element
      = Texinfo::Common::index_content_element($index_entry_element,
                                               $prefer_reference_element);
    $sort_string = Texinfo::Convert::Text::convert_to_text(
                              $entry_tree_element, $options);
    # Not done for @sortas, in particular to be able to still sort using
    # the ignored characters for index sorting for some entries.
    if (defined($main_entry->{'entry_element'}
                       ->{'extra'}->{'index_ignore_chars'})) {
      my $ignore_chars = quotemeta($main_entry->{'entry_element'}
                                  ->{'extra'}->{'index_ignore_chars'});
      if ($ignore_chars ne '') {
        $sort_string =~ s/[$ignore_chars]//g;
      }
    }
  }
  return $sort_string;
}

1;
