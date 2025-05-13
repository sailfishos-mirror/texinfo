use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'undef_split_and_big_rule'} = '*document_root C6
 *before_node_section C2
  *preamble_before_content
  *paragraph C1
   {node Top\\n}
 *0 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *1 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *2 @chapter C2 l5 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
 |section_directions:D[up->E0]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
 *3 @node C1 l7 {sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[up->E1]
 |node_number:{2}
 |normalized:{sec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec}
 *4 @section C1 l8 {Sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E2]
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec}
';


$result_texis{'undef_split_and_big_rule'} = 'node Top
@top top

@node chap
@chapter Chapter

@node sec
@section Sec
';


$result_texts{'undef_split_and_big_rule'} = 'node Top
top
***

1 Chapter
*********

1.1 Sec
=======
';

$result_errors{'undef_split_and_big_rule'} = [];


$result_nodes_list{'undef_split_and_big_rule'} = '1|chap
 associated_section: 1 Chapter
 associated_title_command: 1 Chapter
2|sec
 associated_section: 1.1 Sec
 associated_title_command: 1.1 Sec
';

$result_sections_list{'undef_split_and_big_rule'} = '1|top
2|Chapter
 associated_anchor_command: chap
 associated_node: chap
3|Sec
 associated_anchor_command: sec
 associated_node: sec
';

$result_headings_list{'undef_split_and_big_rule'} = '';

1;
