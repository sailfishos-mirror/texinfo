use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_not_closed'} = '*document_root C1
 *before_node_section C1
  *0 @macro C2 l1
  |EXTRA
  |macro_name:{name}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: name\\n}
   {raw:in macro\\n}
';


$result_texis{'macro_not_closed'} = '@macro name
in macro
';


$result_texts{'macro_not_closed'} = '';

$result_errors{'macro_not_closed'} = [
  {
    'error_line' => 'no matching `@end macro\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end macro\'',
    'type' => 'error'
  }
];


1;
