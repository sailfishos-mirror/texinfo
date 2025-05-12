use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_file_name_and_node_name_collision'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {my node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{my-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {my node}
 *1 @chapter C2 l2 {chap my node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |section_directions:D[next->E3]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3|E4]
  ||section_level:{0}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap my node}
  {empty_line:\\n}
 *2 @node C1 l4 {other node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0]
 |node_number:{2}
 |normalized:{other-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {other node}
 *3 @chapter C2 l5 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |section_directions:D[next->E4|prev->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E4|prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
 *4 @top C2 l7 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E3]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
';


$result_texis{'top_file_name_and_node_name_collision'} = '@node my node
@chapter chap my node

@node other node
@chapter chapter

@top top

';


$result_texts{'top_file_name_and_node_name_collision'} = '1 chap my node
**************

2 chapter
*********

top
***

';

$result_errors{'top_file_name_and_node_name_collision'} = [
  {
    'error_line' => 'warning: lowering the section level of @top appearing after a lower element
',
    'line_nr' => 7,
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  }
];


$result_nodes_list{'top_file_name_and_node_name_collision'} = '1|my node
 associated_section: 1 chap my node
2|other node
 associated_section: 2 chapter
';

$result_sections_list{'top_file_name_and_node_name_collision'} = '1|chap my node
 associated_node: my node
2|chapter
 associated_node: other node
3|top
';

1;
