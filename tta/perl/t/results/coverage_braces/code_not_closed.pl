use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'code_not_closed'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @code C1 l1
    *brace_container C1
     {in code}
';


$result_texis{'code_not_closed'} = '@code{in code}';


$result_texts{'code_not_closed'} = 'in code';

$result_errors{'code_not_closed'} = [
  {
    'error_line' => '@code missing closing brace
',
    'line_nr' => 1,
    'text' => '@code missing closing brace',
    'type' => 'error'
  }
];


1;
