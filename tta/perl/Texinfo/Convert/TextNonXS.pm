# TextNonXS.pm: output tree as simple text.
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

# ALTIMP perl/XSTexinfo/convert/ConvertTextXS.xs
# ALTIMP C/main/convert_to_text.c

# The functions here do not do anything interesting, but they need to
# be in a separate file such that the functions are not redefined if
# the XS interface is used.

package Texinfo::Convert::Text;

use 5.006;
use strict;

our $VERSION = '7.3dev';

# if the output or convert functions are overriden the following
# should probably be overriden using that kind of function
#"Texinfo::Convert::Text::get_converter_errors"
# => "Texinfo::Convert::ConvertConverterXS::get_converter_errors",

sub XS_convert_tree($$) {
  return undef;
}

# Nothing to do in perl.  XS function frees memory
sub destroy_converter($) {
}

1;
