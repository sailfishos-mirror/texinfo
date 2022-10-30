
use utf8;

package Texinfo::Config;

use strict;

texinfo_register_direction_string_info('Forward', 'text', undef, 'Forward');
# register both Next and NodeNext as the one used depends on
# USE_NODE_DIRECTIONS/USE_NODES
texinfo_register_direction_string_info('Next', 'text', ' -&gt; ');
texinfo_register_direction_string_info('NodeNext', 'text', ' -&gt; ');

texinfo_register_no_arg_command_formatting('error', undef, undef, undef,
                                                            'error--&gt;');

my %translations = (
  'fr' => {
           ' &gt; ' => {'' => 'Vers l\'avant &gt;',},
           ' -&gt; ' => {'' => 'N&oelig; suivant'},
           'error--&gt;' => {'' => 'Erreur--&gt;',},

           'Table of contents' => {'' => 'La @emph{Table des mati@`eres}',},
           '{number} {section_title}' => {'' => '{number}@ : {section_title}'},
          },
  'de' => {
           ' &gt; ' => {'' => 'Nach vorne &gt;',},
           ' -&gt; ' => {'' => 'Nächster Knoten'},
           'error--&gt;' => {'' => 'Fehler--&gt;',},

           'Table of contents' => {'' => 'Das @emph{Inhaltsverzeichnis}',},
           '{number} {section_title}' => {'' => '{number}: {section_title}'},
          },
);

sub _my_format_translate_string($$$;$$$)
{
  my ($self, $string, $lang, $replaced_substrings,
                              $translation_context, $type) = @_;
  $translation_context = '' if (!defined($translation_context));
  if (exists($translations{$lang})
      and exists($translations{$lang}->{$string})
      and exists($translations{$lang}->{$string}->{$translation_context})) {
    my $translation = $translations{$lang}->{$string}->{$translation_context};
    return $self->replace_convert_substrings($translation, $replaced_substrings,
                                             $type);
  }
  return undef;
}

texinfo_register_formatting_function('format_translate_string',
                                       \&_my_format_translate_string);

1;
