use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'contents_at_begin_chapter_without_node'} = '*document_root C4
 *before_node_section C2
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
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l4 {contents at document begin}
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
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {contents at document begin}
  {empty_line:\\n}
 *2 @chapter C1 l6 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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


$result_texis{'contents_at_begin_chapter_without_node'} = '@contents

@node Top
@top contents at document begin

@chapter chap
';


$result_texts{'contents_at_begin_chapter_without_node'} = '
contents at document begin
**************************

1 chap
******
';

$result_errors{'contents_at_begin_chapter_without_node'} = [];


$result_nodes_list{'contents_at_begin_chapter_without_node'} = '1|Top
 associated_section: contents at document begin
 associated_title_command: contents at document begin
';

$result_sections_list{'contents_at_begin_chapter_without_node'} = '1|contents at document begin
 associated_anchor_command: Top
 associated_node: Top
2|chap
';

$result_headings_list{'contents_at_begin_chapter_without_node'} = '';

1;
