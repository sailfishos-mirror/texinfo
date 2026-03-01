# TexinfoNonXS.pm: no-op non XS implementation of XS conversion to Texinfo.
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

# ALTIMP perl/XSTexinfo/convert/ConvertTexinfoXS.xs

package Texinfo::Convert::Texinfo;

use 5.006;
use strict;
use warnings;

use Carp qw(confess);

# Simply return undef to signal that there was no conversion done in XS.
sub _XS_texinfo_convert_tree($) {
  my $element = shift;

  return undef;
}

1;
