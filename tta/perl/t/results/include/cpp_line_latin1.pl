use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'cpp_line_latin1'} = '*document_root C5
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@documentencoding C1 cpp_line_latin1.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{iso-8859-1}
   |text_arg:{ISO-8859-1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ISO-8859-1}
   {empty_line:\\n}
 *0 @node C1 cpp_line_latin1.texi:l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 cpp_line_latin1.texi:l6
 |EXTRA
 |associated_anchor_command:[E0]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *2 @node C7 cpp_line_latin1.texi:l8 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E0]
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C1
   {aaa\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'cpp_line_latin1'} = '\\input texinfo

@documentencoding ISO-8859-1

@node Top
@top

@node chap




aaa

@bye
';


$result_texts{'cpp_line_latin1'} = '





aaa

';

$result_errors{'cpp_line_latin1'} = [
  {
    'error_line' => 'unknown command `gggg\'
',
    'file_name' => 'foo.ptèxi',
    'line_nr' => 102,
    'text' => 'unknown command `gggg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'file_name' => 'cpp_line_latin1.texi',
    'line_nr' => 8,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_nodes_list{'cpp_line_latin1'} = '1|Top
 associated_section
2|chap
';

$result_sections_list{'cpp_line_latin1'} = '1
 associated_node: Top
';

1;
