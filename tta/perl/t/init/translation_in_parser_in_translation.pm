
use utf8;

package Texinfo::Config;

use strict;

use Texinfo::Common;
use Texinfo::Convert::NodeNameNormalization;

# a translation of the Next button with @-commands needing translation.
# also test commands in 'parser restricted mode' with NO_INDEX and similar set.
# Also the parsing of translation is done in line context, therefore there
# are no paragraphs, such that the quotation title is never collected.
my %translations = (
  'fr' => {
           'Next' => {'NodeNext direction string'
               => '
@deftypeop a b c d e f
AA
@end deftypeop

@documentlanguage fr

@deftypemethod g h i j k l
BB
@end deftypemethod

@error{}

@quotation qtitle
a quotation
@author someone
@end quotation

@defcodeindex xx
@xxindex entry

@synindex fn xx

@printindex fn
@printindex xx
'},
# translations are parsed with NO_INDEX and similar set, therefore printindex
# argument is not set in misc_args and therefore there is no conversion,
# and no actual test of translation of '{name} on {class}'.
            '{name} on {class}' => {''
               => '@deftypeop m n o p q r
CC
@end deftypeop

@documentlanguage de

@deftypemethod s t u v w x
DD
@end deftypemethod

@defcodeindex xx
@xxindex entry

@synindex fn xx

@printindex fn
@printindex xx
'},
            '@center --- @emph{{author}}' => {''
               => '@center --- Toto et @code{{author}}'
},
});

sub _texi2any_test_translation_in_parser_format_translate_message($$$;$) {
  my ($converter, $string, $lang_info, $translation_context) = @_;

  my $lang = $lang_info->xpg_locale();
  return $string if (!defined($lang) or $lang eq '');
  $translation_context = '' if (!defined($translation_context));
  #print STDERR "translatable ($lang): '$string'\n";

  if (exists($translations{$lang})
      and exists($translations{$lang}->{$string})
      and exists($translations{$lang}->{$string}->{$translation_context})) {
    my $translation = $translations{$lang}->{$string}->{$translation_context};
    return $translation;
  }
  return undef;
}

texinfo_register_formatting_function('format_translate_message',
       \&_texi2any_test_translation_in_parser_format_translate_message);

1;
