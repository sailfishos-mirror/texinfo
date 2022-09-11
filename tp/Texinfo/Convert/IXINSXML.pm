# IXIN.pm: output tree as IXIN with SXML converter.
#
# Copyright 2013, 2014, 2015, 2016, 2017, 2018 Free Software Foundation, Inc.
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

package Texinfo::Convert::IXINSXML;

use 5.00405;
use strict;

use Texinfo::Convert::TexinfoSXML;
use Texinfo::Convert::IXIN;

use Carp qw(cluck);

use vars qw($VERSION @ISA);
@ISA = qw(Texinfo::Convert::TexinfoSXML Texinfo::Convert::IXIN);

$VERSION = '6.8dev';


my %defaults = (
  'ENABLE_ENCODING'      => 0,
  'FORMAT_MENU'          => 'menu',
  'EXTENSION'            => 'ixin',
  #'output_perl_encoding' => 'utf8',
  'OUTPUT_ENCODING_NAME' => 'utf-8',
  # useful?
  'TEXINFO_DTD_VERSION'  => '5.0',
  'OUTFILE'              => undef,
  'SUBDIR'               => undef,
  'converted_format'     => 'ixinsxml',
  'SPLIT'                => 0,
  'documentlanguage'     => 'en',
  'USE_NODES'            => 1,
);

sub converter_defaults($$)
{
  return %defaults;
}

sub output($)
{
  my $self = shift;
  my $root = shift;

  return $self->output_ixin($root);
}

1;
