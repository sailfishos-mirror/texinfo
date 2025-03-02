use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_no_argument'} = '*document_root C1
 *before_node_section C1
  *0 @macro C1 l1
  |EXTRA
  |invalid_syntax:{1}
   *arguments_line C1
    {macro_line:}
';


$result_texis{'macro_no_argument'} = '@macro';


$result_texts{'macro_no_argument'} = '';

$result_errors{'macro_no_argument'} = [
  {
    'error_line' => '@macro requires a name
',
    'line_nr' => 1,
    'text' => '@macro requires a name',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end macro\'
',
    'line_nr' => 1,
    'text' => 'no matching `@end macro\'',
    'type' => 'error'
  }
];


$result_floats{'macro_no_argument'} = {};


1;
