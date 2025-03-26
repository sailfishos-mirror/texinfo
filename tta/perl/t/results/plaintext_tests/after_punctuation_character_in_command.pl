use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'after_punctuation_character_in_command'} = '*document_root C1
 *before_node_section C1
  *paragraph C3
   {Text.}
   *@asis C1 l1
    *brace_container C2
     {)\\n}
     {follows}
   {.\\n}
';


$result_texis{'after_punctuation_character_in_command'} = 'Text.@asis{)
follows}.
';


$result_texts{'after_punctuation_character_in_command'} = 'Text.)
follows.
';

$result_errors{'after_punctuation_character_in_command'} = [];



$result_converted{'plaintext'}->{'after_punctuation_character_in_command'} = 'Text.)  follows.
';

1;
