use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'accent_command_punctuation'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   *0 @dotaccent C1 l1
    *brace_container C1
     {e}
   { after}
';


$result_texis{'accent_command_punctuation'} = '@dotaccent{e} after';


$result_texts{'accent_command_punctuation'} = 'e. after';

$result_errors{'accent_command_punctuation'} = [];



$result_converted{'plaintext'}->{'accent_command_punctuation'} = 'ė after
';

1;
