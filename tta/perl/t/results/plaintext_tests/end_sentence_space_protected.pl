use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'end_sentence_space_protected'} = '*document_root C1
 *before_node_section C1
  *paragraph C3
   {Some text. }
   *@\\n
   {Next sentence.\\n}
';


$result_texis{'end_sentence_space_protected'} = 'Some text. @
Next sentence.
';


$result_texts{'end_sentence_space_protected'} = 'Some text.  Next sentence.
';

$result_errors{'end_sentence_space_protected'} = [];



$result_converted{'plaintext'}->{'end_sentence_space_protected'} = 'Some text.   Next sentence.
';

1;
