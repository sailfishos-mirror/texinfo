# ConfigXS.pm: Texinfo Config XS functions.
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

package Texinfo::ConfigXS;

use strict;
use warnings;

our $VERSION = '7.2dev';

use Texinfo::XSLoader;

BEGIN {
  Texinfo::XSLoader::init (
      "Texinfo::ConfigXS",
      undef,
      "ConfigXS",
      undef,
      ['texinfo', 'texinfoxs'],
  );
}

1;
