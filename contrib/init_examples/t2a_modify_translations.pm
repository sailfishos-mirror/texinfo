# Copyright 2022-2026 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# Based on documentation_examples.pm with additional code.
# Done based on Jamenson Espindula request on help-texinfo:
# https://lists.gnu.org/archive/html/help-texinfo/2026-03/msg00003.html

use strict;
use warnings;
use utf8;

my %translations = (
  'pt' => {
       # 'error@arrow{}' => {'' => ''},
       # 'Next' => {'NodeNext direction string' => ''},
       # ' &nbsp; ' => {'' => ''},
       # 'Table of contents' => {'Contents direction description' => ''},
       # 'Contents' => {'Contents direction string' => ''},
       # 'Index' => {'Index direction description' => ''},
       # 'Index' => {'Index direction string' => ''},
       # ' ? ' => {'' => ''},
       # '{number} {section_title}' => {'' => ''},
       # 'Appendix {number} {section_title}' => {'' => ''},
       # 'Short Table of Contents' => {'shortcontents section heading' => ''},
        'Table of Contents' => {'contents section heading' => 'Sumário'},
       # '{element_text} ({title})' => {'' => ''},
       # 'Previous' => {'NodePrev direction string' => ''},
       # 'Up' => {'NodeUp direction string' => ''},
       # 'see {reference_name}' => {'' => ''},
        'See {reference_name}' => {'' => 'Veja-se {reference_name}'},
       # '{reference} in @cite{{book}}' => {'' => ''},
       # 'see @cite{{book_reference}}' => {'' => ''},
       # 'see {reference} in @cite{{book}}' => {'' => ''},
       # '{reference_name}' => {'' => ''},
       # 'See @cite{{book_reference}}' => {'' => ''},
       # 'See {reference} in @cite{{book}}' => {'' => ''},
       # 'Footnotes' => {'footnotes section heading' => ''},
       # '{explained_string} ({explanation})' => {'' => ''},
       # '@b{{quotation_arg}:} ' => {'' => ''},
       # '@center --- @emph{{author}}' => {'' => ''},
       # '{category}: ' => {'' => ''},
       # '{category} of @code{{class}}: ' => {'' => ''},
       # '@cite{{book_reference}}' => {'' => ''},
       # 'Jump to' => {'' => ''},
       # 'The node you are looking for is at {href}.' => {'' => ''},
   },
);

my $seen_translated = {};
my $translated_lang = 'pt';

sub my_format_translate_message($$$;$) {   
  my ($converter, $string, $lang, $translation_context) = @_;

  $translation_context = '' if (!defined($translation_context));

  # uncomment next lines to have the strings to translate being printed
  #if (!exists($seen_translated->{"$string-$translation_context"})) {
  #  if (!exists($translations{$translated_lang})
  #      or !exists($translations{$translated_lang}->{$string})
  #      or !exists($translations{$translated_lang}->{$string}
  #                                        ->{$translation_context})) {
  #    print STDERR "       # '$string' => {'$translation_context' => ''},\n";
  #  }
  #  $seen_translated->{"$string-$translation_context"} = 1;
  #}

  return $string if (!defined($lang) or $lang eq '');
  if (exists($translations{$lang})
      and exists($translations{$lang}->{$string})
      and exists($translations{$lang}->{$string}->{$translation_context})) {
    my $translation = $translations{$lang}->{$string}->{$translation_context};
    return $translation;
  }
  return undef;
}

texinfo_register_formatting_function('format_translate_message',
                                          \&my_format_translate_message);

# This allows to reset to get the translated strings per manual.  Not
# obviously useful.
sub my_reset_seen_translated {
  $seen_translated = {};

  return 0;
}

texinfo_register_handler('setup', \&my_reset_seen_translated);

1;
