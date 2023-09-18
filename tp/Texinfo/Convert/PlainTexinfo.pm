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

use Texinfo::Convert::Texinfo qw(convert_to_texinfo);
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
        "Texinfo::Convert::PlainTexinfo::_convert_tree_with_XS",
        "Texinfo::Convert::ConvertXS::plain_texinfo_convert_tree"
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

# This is used if the document is available for XS, but XS is not
# used (most likely $TEXINFO_XS_CONVERT is 0).
sub _convert_tree_with_XS($)
{
  my $root = shift;

  return convert_to_texinfo($root);
}

sub convert_tree($$)
{
  my $self = shift;
  my $root = shift;

  if (defined($root->{'tree_document_descriptor'})) {
    return _convert_tree_with_XS($root);
  }

  return convert_to_texinfo($root);
}

#sub output($$)
#{
#  my $self = shift;
#  my $document = shift;
#
#  return Texinfo::Convert::Converter::output($self, $document);
#}

sub convert($$)
{
  my $self = shift;
  my $document = shift;

  my $root = $document->tree();

  if (defined($document->document_descriptor())) {
    return _convert_tree_with_XS($root);
  }

  return convert_to_texinfo($root);
}

1;
