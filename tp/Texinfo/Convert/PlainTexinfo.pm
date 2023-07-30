# PlainTexinfo.pm: convert the Texinfo tree as Texinfo
#
# Copyright 2012-2023 Free Software Foundation, Inc.
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

# This calls Texinfo::Convert::Texinfo::convert_to_texinfo while
# inheriting standard functions from Texinfo::Convert::Converter.

package Texinfo::Convert::PlainTexinfo;

use 5.00405;
use strict;

use Texinfo::Convert::ConvertXS;

use Texinfo::Convert::Texinfo;
use Texinfo::Convert::Converter;

use vars qw($VERSION @ISA);
@ISA = qw(Texinfo::Convert::Converter);

$VERSION = '7.1';

our $module_loaded = 0;
sub import {
  if (!$module_loaded) {
    if (defined $ENV{TEXINFO_XS_CONVERT}
        and $ENV{TEXINFO_XS_CONVERT} eq '1') {
      # We do not simply override, we must check at runtime
      # that the document tree was stored by the XS parser.
      Texinfo::XSLoader::override(
        "Texinfo::Convert::PlainTexinfo::_convert_with_XS",
        "Texinfo::Convert::ConvertXS::plain_texinfo_convert"
      );
    }
    $module_loaded = 1;
  }
  # The usual import method
  goto &Exporter::import;
}


my %defaults = (
  # Customization option variables
  'EXTENSION'            => 'texi',
  # different from the default, which is undef
  'OUTFILE'              => '-',
);

sub converter_defaults($$)
{
  return %defaults;
}

sub convert_tree($$)
{
  my $self = shift;
  my $root = shift;

  return $self->_convert($root);
}

sub convert($$)
{
  my $self = shift;
  my $document = shift;

  if (defined($document->{'document_descriptor'})) {
    return _convert_with_XS($self, $document);
  }
  my $root = $document->tree();

  return $self->_convert($root);
}

# This is used if the tree is available for XS, but XS is not
# used (most likely because of $TEXINFO_XS_CONVERT value).
sub _convert_with_XS($$)
{
  my $self = shift;
  my $document = shift;

  my $root = $document->tree();

  return $self->_convert($root);
}

sub _convert($$);

sub _convert($$)
{
  my $self = shift;
  my $root = shift;
  
  return Texinfo::Convert::Texinfo::convert_to_texinfo($root);
}

1;
