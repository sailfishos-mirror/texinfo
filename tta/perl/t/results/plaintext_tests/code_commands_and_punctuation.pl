use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'code_commands_and_punctuation'} = '*document_root C1
 *before_node_section C1
  *paragraph C4
   *0 @code C1 l1
    *brace_container C1
     {AA}
   {. }
   *1 @samp C1 l1
    *brace_container C1
     {aa}
   {. After.\\n}
';


$result_texis{'code_commands_and_punctuation'} = '@code{AA}. @samp{aa}. After.
';


$result_texts{'code_commands_and_punctuation'} = 'AA. aa. After.
';

$result_errors{'code_commands_and_punctuation'} = [];



$result_converted{'plaintext'}->{'code_commands_and_punctuation'} = '‘AA’.  ‘aa’.  After.
';

1;
