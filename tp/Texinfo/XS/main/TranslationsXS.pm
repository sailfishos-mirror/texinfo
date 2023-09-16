# Copyright 2023 Free Software Foundation, Inc.
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

# To be loaded with Translations.xs
#
# Would need to add pgdt and maybe other functions.  But there is
# no hurry to finish, as, although the code is ok, the approach
# is flawed, as there won't be any substitution if the trees in
# replaced substrings are not registered in C data, as is the case in
# general.

package Texinfo::Translations;

use Encode qw(encode);

# FIXME $customization_information information should be encoded,
# and a hash
sub gdt ($$;$$$)
{
  my ($customization_information, $string, $replaced_substrings,
      $translation_context, $lang) = @_;

  my $utf8_string = Encode::encode('utf-8', $string);
  my $utf8_translation_context;
  $utf8_translation_context = Encode::encode('utf-8', $translation_context)
    if (defined($translation_context));
  my $utf8_lang;
  $utf8_lang = Encode::encode('utf-8', $lang)
    if (defined($lang));

  my $tree = gettree ($utf8_string, $customization_information,
                      $replaced_substrings,
                      $utf8_translation_context, $utf8_lang);

  return $tree;
}

1;

__END__
POD documentation in TranslationsNonXS
