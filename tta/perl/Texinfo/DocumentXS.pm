# DocumentXS.pm: load parsed Texinfo tree document XS functions.
#
# Copyright 2010-2025 Free Software Foundation, Inc.
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

package Texinfo::DocumentXS;

use strict;
use warnings;

our $VERSION = '7.2dev';

use Texinfo::XSLoader;

# Used from C/XS to initialize the C libraries when Texinfo::Document is
# used but the Document XS extension is not loaded.  Not used from Perl.
our $XS_package;

BEGIN {
  $XS_package = Texinfo::XSLoader::init (
      "Texinfo::DocumentXS",
      undef,
      "DocumentXS",
      undef,
      ['texinfo', 'texinfoxs'],
  );
}

1;
