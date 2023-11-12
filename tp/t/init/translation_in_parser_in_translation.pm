
use utf8;

package Texinfo::Config;

use strict;

use Texinfo::Common;
use Texinfo::Convert::NodeNameNormalization;

# a translation of the Next button for which there is a translation
# by the parser of index of @def* commands like '{name} of {class}'.
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
'},
            # this is not used, as it is translated in the parser.
            # To be used, should be in po/gmo file
            '{name} on {class}' => {''
               => '@deftypeop m n o p q r
CC
@end deftypeop

@documentlanguage fr

@deftypemethod s t u v w x
DD
@end deftypemethod
'},
});

sub _texi2any_test_translation_in_parser_format_translate_message($$$;$)
{
  my ($self, $string, $lang, $translation_context) = @_;
  $translation_context = '' if (!defined($translation_context));

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

# there are no indices id output for the @def* commands used in Next
# button translation, as their index information is with the tree used
# in gdt, not with the main tree.  Output an id in any case directly
# when formatting the definition line to check if it is translated.
sub _texi2any_tests_def_line_show_id($$$$)
{
  my $self = shift;
  my $type = shift;
  my $element = shift;
  my $content = shift;

  my $no_unidecode;
  $no_unidecode = 1 if (defined($self->get_conf('USE_UNIDECODE'))
                        and !$self->get_conf('USE_UNIDECODE'));


  my $region = '';
  $region = "$element->{'extra'}->{'element_region'}-"
    if (defined($element->{'extra'}->{'element_region'}));

  my $entry_reference_content_element
        = Texinfo::Common::index_content_element($element);

  my $normalized_index = '';
  if ($entry_reference_content_element) {
    $normalized_index =
     Texinfo::Convert::NodeNameNormalization::normalize_transliterate_texinfo(
        $entry_reference_content_element, $no_unidecode);
  }
  my $target_base = "index-" . $region .$normalized_index;


  return "<strong>INDEXID could be: $target_base</strong>"
       . &{$self->default_type_conversion($type)}($self, $type,
                                                $element, $content);
}

texinfo_register_type_formatting('def_line', \&_texi2any_tests_def_line_show_id);

1;
