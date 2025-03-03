use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'lone_end_table'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   {Text.\\n}
';


$result_texis{'lone_end_table'} = 'Text.
';


$result_texts{'lone_end_table'} = 'Text.
';

$result_errors{'lone_end_table'} = [
  {
    'error_line' => 'unmatched `@end table\'
',
    'line_nr' => 2,
    'text' => 'unmatched `@end table\'',
    'type' => 'error'
  }
];


1;
