use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_node_in_html_title_no_sec_name'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2 {top}
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
 *2 @node C1 l4
 |EXTRA
 |associated_title_command:[E3]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
 *3 @chapter C1 l5 {chap}
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


$result_texis{'empty_node_in_html_title_no_sec_name'} = '@node Top
@top top

@node
@chapter chap
';


$result_texts{'empty_node_in_html_title_no_sec_name'} = 'top
***

1 chap
******
';

$result_errors{'empty_node_in_html_title_no_sec_name'} = [
  {
    'error_line' => 'empty argument in @node
',
    'line_nr' => 4,
    'text' => 'empty argument in @node',
    'type' => 'error'
  }
];


$result_nodes_list{'empty_node_in_html_title_no_sec_name'} = '1|Top
 associated_section: top
';

$result_sections_list{'empty_node_in_html_title_no_sec_name'} = '1|top
 associated_node: Top
2|chap
';

1;
