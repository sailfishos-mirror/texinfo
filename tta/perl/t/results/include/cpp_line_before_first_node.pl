use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'cpp_line_before_first_node'} = '*document_root C2
 *before_node_section C4
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C3
   {empty_line:\\n}
   {empty_line:\\n}
   {empty_line:\\n}
  *paragraph C1
   {aaa\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'cpp_line_before_first_node'} = '\\input texinfo




aaa

@bye
';


$result_texts{'cpp_line_before_first_node'} = '


aaa

';

$result_errors{'cpp_line_before_first_node'} = [
  {
    'error_line' => 'unknown command `gggg\'
',
    'file_name' => 'foo.ptexi',
    'line_nr' => 102,
    'text' => 'unknown command `gggg\'',
    'type' => 'error'
  }
];


$result_floats{'cpp_line_before_first_node'} = {};


1;
