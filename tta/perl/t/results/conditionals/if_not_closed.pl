use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'if_not_closed'} = '*document_root C1
 *before_node_section C1
  {}
  >SOURCEMARKS
  >ignored_conditional_block<1>
   >*@iftex C1 l1
    >*arguments_line C1
     >*block_line_arg
';


$result_texis{'if_not_closed'} = '';


$result_texts{'if_not_closed'} = '';

$result_errors{'if_not_closed'} = [
  {
    'error_line' => 'no matching `@end iftex\'
',
    'line_nr' => 1,
    'text' => 'no matching `@end iftex\'',
    'type' => 'error'
  }
];


1;
