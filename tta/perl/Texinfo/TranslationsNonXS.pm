# TranslationsNonXS.pm: translate strings in output.  Implementation of
#                       functions with an XS interface
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
#
# Original author: Patrice Dumas <pertusus@free.fr>
#
# ALTIMP perl/XSTexinfo/parser_document/TranslationsXS.xs
# ALTIMP C/main/translations.c

package Texinfo::Translations;

use 5.006;
use strict;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

use Carp qw(cluck confess);

# TODO remove second argument?  In that case remove the equivalent in
# C code too.  Right now, it is not possible to actually set a
# different domain, but it could theoretically be useful if users
# want to use their domain.  In that case, it should be settable
# simultaneously in Perl and C.
# Check if it could be useful for SWIG interface, maybe?
sub setup_output_strings($;$) {
  my ($localesdir, $in_strings_textdomain) = @_;

  if (defined($in_strings_textdomain)) {
    $Texinfo::Translations::strings_textdomain = $in_strings_textdomain;
  }
  if (defined($localesdir)) {
    Locale::Messages::bindtextdomain(
       $Texinfo::Translations::strings_textdomain, $localesdir);
  } else {
    warn 'WARNING: string textdomain directory undefined'."\n";
  }
}

# Return an array reference with a translated string.
# The LANG_TRANSLATIONS argument holds the current language information,
# including the string that can be used as gettext lang selection LANGUAGE,
# and possibly an hash that is used to hold translations already done for
# that language information.
# There is no such hash if the language information is passed from C.
# If the language information is undef or the language is an empty string,
# no translation is needed.
sub cache_translate_string($$;$) {
  my ($string, $lang_translations, $translation_context) = @_;

  #if (!defined($string)) {
  #  confess("cache_translate_string: undef string\n");
  #}

  my $translations;

  if (!defined($lang_translations)) {
    # unknown language, use default translated string and tree cache
    # associated to the empty string.
    $translations
      = $Texinfo::Translations::converters_translation_cache->{''}->[2];
  } else {
    $translations = $lang_translations->[2];
  }

  my $translation_context_str;

  if (defined($translation_context)) {
    $translation_context_str = $translation_context;
  } else {
    $translation_context_str = '';
  }

  if (exists($translations->{$translation_context_str})) {
    if (exists($translations->{$translation_context_str}->{$string})) {
      # return cached translation and tree
      return $translations->{$translation_context_str}->{$string};
    }
  } else {
    $translations->{$translation_context_str} = {};
  }

  my $strings_cache = $translations->{$translation_context_str};

  # no translation, but still needed to setup caching for the associated
  # tree
  if (!defined($lang_translations)
      or $lang_translations->[0]->{'bcp47_locale'} eq '') {
    my $result = [undef];
    $strings_cache->{$string} = $result;
    return $result;
  }

  my $translated_string = translate_string($string, $lang_translations->[1],
                                           $translation_context);

  my $result = [$translated_string];

  $strings_cache->{$string} = $result;

  #print STDERR "_GDT '$string' '$translated_string'\n";
  return $result;
}

1;
