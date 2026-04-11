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
# The LANG_TRANSLATIONS argument is an array reference with the language
# translated to as first element, and as optional second element an hash
# that is used to hold translations already done for that language.
# If the language is undef or an empty string, no translation is needed.
sub cache_translate_string($$;$) {
  my ($string, $lang_translations, $translation_context) = @_;

  #if (!defined($string)) {
  #  confess("cache_translate_string: undef string\n");
  #}
  my $cached_lang;
  my $translations;
  if (defined($lang_translations)) {
    if (scalar(@$lang_translations) > 2) {
      $translations = $lang_translations->[2];
    }
    $cached_lang = $lang_translations->[0]->[0];
  } else {
    $cached_lang = '';
  }

  my $translation_context_str;
  if (defined($translation_context)) {
    $translation_context_str = $translation_context;
  } else {
    $translation_context_str = '';
  }
  my $strings_cache;
  # use default translated string and tree cache if none was passed
  if (!defined($translations)) {
    if (!exists($Texinfo::Translations::translation_cache->{$cached_lang})) {
      $Texinfo::Translations::translation_cache->{$cached_lang} = {}
    }
    $translations = $Texinfo::Translations::translation_cache->{$cached_lang};
  }

  if (exists($translations->{$translation_context_str})) {
    if (exists($translations->{$translation_context_str}->{$string})) {
      # return cached translation and tree
      return $translations->{$translation_context_str}->{$string};
    }
  } else {
    $translations->{$translation_context_str} = {};
  }

  $strings_cache = $translations->{$translation_context_str};

  # no translation, but still needed to setup caching for the associated
  # tree
  if ($cached_lang eq '') {
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
