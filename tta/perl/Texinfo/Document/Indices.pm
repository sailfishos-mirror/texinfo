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

# This module could also have been in Texinfo::Document, but we separate it
# to avoid the following circular dependency:
#   Texinfo::Document -> Texinfo::Indices -> Texinfo::Translations
#     -> Texinfo::Parser -> Texinfo::Document

# ALTIMP C/main/document.c

package Texinfo::Document::Indices;

use 5.006;
use strict;
use warnings;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

use Carp qw(cluck confess);


use Texinfo::XSLoader;

# methods called on document
use Texinfo::Document;

use Texinfo::Indices;

our $VERSION = '7.3dev';

BEGIN {
  Texinfo::XSLoader::init (
    "Texinfo::Document::Indices",
    "Texinfo::Document::IndicesNonXS",
    'DocumentIndicesXS',
    undef,
    ['texinfo', 'texinfoxs'],
  );
}

# When the indexes are merged but not sorted, it is sensible to call this
# function directly, but in most cases, it is already called.  Also called
# directly in a few tests.
# An XS override is not needed:
#  * For functions used in tests, it is possible/needed to call
#    indices_information() before calling merged_indices to build the
#    'indices' from C.
#  * In converters, it is better if calling functions are implemented in C too,
#    rather than going through an XS interface.
sub merged_indices($) {
  my $self = shift;

  if (exists($self->{'indices'})) {
    if (!exists($self->{'merged_indices'})) {
      $self->{'merged_indices'}
        = Texinfo::Indices::merge_indices($self->{'indices'});
    }
  }
  return $self->{'merged_indices'};
}

# calls Texinfo::Indices::setup_index_entries_sort_strings and caches the
# result.
# Should only be used in tests.  Called by sorted_indices_by_index, in
# that case also used to get C Document data.
sub _document_indices_sort_strings($) {
  my $document = shift;

  if (!exists($document->{'index_entries_sort_strings'})) {
    # call before calling merged_indices to make sure that indices
    # are built from XS if needed.
    my $indices_information = $document->indices_information();

    my $indices_sort_strings
      = Texinfo::Indices::setup_index_entries_sort_strings($document,
              undef, merged_indices($document),
              $indices_information, 0,
              $document->get_conf('DEBUG'));
    $document->{'index_entries_sort_strings'} = $indices_sort_strings;
  }
  return $document->{'index_entries_sort_strings'};
}

# Unused
# calls Texinfo::Indices::sort_indices_by_letter and caches the result.
sub sorted_indices_by_letter($;$$) {
  my ($document, $use_unicode_collation, $lang_sorting_locale) = @_;

  my $lang_key;
  if (defined($use_unicode_collation) and !($use_unicode_collation)) {
    $lang_key = '';
  } elsif (!defined($lang_sorting_locale)) {
    # special name corresponding to Unicode Collation with 'Non-Ignorable'
    # set for variable collation elements
    $lang_key = '-';
  } else {
    $lang_key = $lang_sorting_locale;
  }

  $document->{'sorted_indices_by_letter'} = {}
    if (!exists($document->{'sorted_indices_by_letter'}));

  if (!exists($document->{'sorted_indices_by_letter'}->{$lang_key})) {
    my $indices_sort_strings = _document_indices_sort_strings($document);

    $document->{'sorted_indices_by_letter'}->{$lang_key}
      = Texinfo::Indices::sort_indices_by_letter(
                     $indices_sort_strings,
                     $use_unicode_collation, $lang_sorting_locale);
  }
  return $document->{'sorted_indices_by_letter'}->{$lang_key};
}

# calls Texinfo::Indices::sort_indices_by_index and caches the result.
# No XS override.
# There is no reason to call this function outside of tests.
# The interface to C Document index data is through the
# _document_indices_sort_strings call.
sub sorted_indices_by_index($;$$) {
  my ($document, $use_unicode_collation, $lang_sorting_locale) = @_;

  my $lang_key;
  if (defined($use_unicode_collation) and !$use_unicode_collation) {
    $lang_key = '';
  } elsif (!defined($lang_sorting_locale)) {
    # special name corresponding to Unicode Collation with 'Non-Ignorable'
    # set for variable collation elements
    $lang_key = '-';
  } else {
    $lang_key = $lang_sorting_locale;
  }

  $document->{'sorted_indices_by_index'} = {}
    if (!exists($document->{'sorted_indices_by_index'}));

  if (!exists($document->{'sorted_indices_by_index'}->{$lang_key})) {
    my $indices_sort_strings = _document_indices_sort_strings($document);

    $document->{'sorted_indices_by_index'}->{$lang_key}
      = Texinfo::Indices::sort_indices_by_index($indices_sort_strings,
                       $use_unicode_collation, $lang_sorting_locale);
  }
  return $document->{'sorted_indices_by_index'}->{$lang_key};
}


1;
__END__

=head1 NAME

Texinfo::Document::Indices - Texinfo document indices

=head1 SYNOPSIS

  use Texinfo::Document::Indices;

  Texinfo::Document::Indices::merged_indices($document);

  my $document_sorted_index_entries
   = Texinfo::Document::Indices::sorted_indices_by_index($document);

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

Merge and sort document indices.  Parsed indexes
are not merged nor sorted, L<Texinfo::Indices> functions are
called to merge or sort the indexes the first time the following
methods are called.  The results are afterwards associated to the
document and simply returned.

=head1 METHODS

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

In general, this module sorting methods should not be called except
maybe in tests, L<Texinfo::Convert::Converter/Index sorting> Converter methods
should be used.

=over

=item $sorted_indices = sorted_indices_by_index($document, $use_unicode_collation, $lang_sorting_locale)
X<C<sorted_indices_by_index>>

C<sorted_indices_by_index> returns the indexes with all entries
of an index together.

By default, indexes are sorted according to the I<Unicode Collation Algorithm>
defined in the L<Unicode Technical Standard
#10|http://www.unicode.org/reports/tr10/>, without language-specific collation
tailoring.  If the optional I<$use_unicode_collation> argument is set to 0,
the sorting will not use
the I<Unicode Collation Algorithm> and simply sort according to the codepoints.
The optional I<$lang_sorting_locale> language is used for linguistic
tailoring of the sorting, if possible.

The array of the sorted index entries is associated with the index name.

L<< C<Texinfo::Indices::sort_indices_by_index>|Texinfo::Indices/$index_entries_sorted = sort_indices_by_index($indices_sort_strings, $use_unicode_collation, $lang_sorting_locale) >>
is used to sort the indexes, if needed.

=back

=head1 SEE ALSO

L<Texinfo::Indices>. L<Texinfo::Document>.

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

