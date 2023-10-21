# Translations.pm: translate strings.
#
# Copyright 2010-2023 Free Software Foundation, Inc.
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

package Texinfo::Translations;

use strict;
use warnings;

our $VERSION = '7.1';

use Texinfo::XSLoader;

# BEWARE the setup is weird here, because we load the NonXS module in any case.
# Indeed, the XS module does not work, except for the configure(_XS) function
# that we want to call.  So, we load the XS code here, but also the NonXS
# module, and the functions used are those of the NonXS module.  No function
# from the XS called code is called by the NonXS module without overriding
# NonXS functions.  We override a function with configure(_XS) in the NonXS
# module to call the XS code configure(_XS).

BEGIN {
  our $warning_message = undef;
  our $fatal_message = undef;

  my $package = Texinfo::XSLoader::init (
      "Texinfo::Translations",
      "Texinfo::TranslationsNonXS",
      "Translations",
   # the XS module calling the XS code does not work currently, as Texinfo
   # trees in substituted strings are not registered with the XS code.
   # The NonXS module is loaded instead, which does not call the XS code
   # without explict functions overriding.
      #"Texinfo::XS::main::TranslationsXS",
      "Texinfo::TranslationsNonXS",
      0,
      $warning_message,
      $fatal_message
  );
}

1;
