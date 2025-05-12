use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_without_node_texi2html_no_use_nodes'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content
 *0 @top C3 l1 {top section}
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
    {top section}
  *paragraph C1
   {Top section\\n}
  {empty_line:\\n}
 *1 @node C1 l4 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E2]
 |is_target:{1}
 |node_directions:D[up->MISSING: (line_arg)[C3]]
 |node_number:{1}
 |normalized:{second}
  *arguments_line C4
   *line_arg C1
    {second}
   *line_arg
   *line_arg
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *2 @chapter C3 l5 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E1]
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
  *paragraph C1
   {Text of chapter\\n}
';


$result_texis{'top_without_node_texi2html_no_use_nodes'} = '@top top section
Top section

@node second,,,(dir)
@chapter Chapter

Text of chapter
';


$result_texts{'top_without_node_texi2html_no_use_nodes'} = 'top section
***********
Top section

1 Chapter
*********

Text of chapter
';

$result_errors{'top_without_node_texi2html_no_use_nodes'} = [];


$result_nodes_list{'top_without_node_texi2html_no_use_nodes'} = '1|second
 associated_section: 1 Chapter
';

$result_sections_list{'top_without_node_texi2html_no_use_nodes'} = '1|top section
2|Chapter
 associated_node: second
';

1;
