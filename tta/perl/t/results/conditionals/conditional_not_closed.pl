use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'conditional_not_closed'} = '*document_root C1
 *before_node_section C1
  {}
  >SOURCEMARKS
  >ignored_conditional_block<1>
   >*@ifhtml C2 l1
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
    >{raw:in ifhtml\\n}
';


$result_texis{'conditional_not_closed'} = '';


$result_texts{'conditional_not_closed'} = '';

$result_errors{'conditional_not_closed'} = [
  {
    'error_line' => 'no matching `@end ifhtml\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end ifhtml\'',
    'type' => 'error'
  }
];


$result_floats{'conditional_not_closed'} = {};


1;
