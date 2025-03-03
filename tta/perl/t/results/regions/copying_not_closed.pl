use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'copying_not_closed'} = '*document_root C1
 *before_node_section C1
  *0 @copying C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *paragraph C1
    {This is a copyright notice\\n}
';


$result_texis{'copying_not_closed'} = '@copying

This is a copyright notice
';


$result_texts{'copying_not_closed'} = '';

$result_errors{'copying_not_closed'} = [
  {
    'error_line' => 'no matching `@end copying\'
',
    'line_nr' => 3,
    'text' => 'no matching `@end copying\'',
    'type' => 'error'
  }
];


1;
