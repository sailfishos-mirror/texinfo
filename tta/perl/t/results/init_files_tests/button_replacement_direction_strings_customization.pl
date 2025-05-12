use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'button_replacement_direction_strings_customization'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@contents C1 l1
   |EXTRA
   |global_command_number:{1}
    {rawline_arg:\\n}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
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
 *1 @top C2 l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @node C1 l6 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C1 l7 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |section_directions:D[up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
';


$result_texis{'button_replacement_direction_strings_customization'} = '@contents

@node Top
@top top

@node chapter
@chapter chap
';


$result_texts{'button_replacement_direction_strings_customization'} = '
top
***

1 chap
******
';

$result_errors{'button_replacement_direction_strings_customization'} = [];


$result_nodes_list{'button_replacement_direction_strings_customization'} = '1|Top
 associated_section: top
2|chapter
 associated_section: 1 chap
';

$result_sections_list{'button_replacement_direction_strings_customization'} = '1|top
 associated_node: Top
2|chap
 associated_node: chapter
';

1;
