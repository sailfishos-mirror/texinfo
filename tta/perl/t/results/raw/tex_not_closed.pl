use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'tex_not_closed'} = '*document_root C1
 *before_node_section C1
  *0 @tex C2 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *rawpreformatted C2
    {empty_line:\\n}
    {This is some \\LaTeX{}\\n}
';


$result_texis{'tex_not_closed'} = '@tex

This is some \\LaTeX{}
';


$result_texts{'tex_not_closed'} = '
This is some \\LaTeX{}
';

$result_errors{'tex_not_closed'} = [
  {
    'error_line' => 'no matching `@end tex\'
',
    'line_nr' => 3,
    'text' => 'no matching `@end tex\'',
    'type' => 'error'
  }
];


1;
