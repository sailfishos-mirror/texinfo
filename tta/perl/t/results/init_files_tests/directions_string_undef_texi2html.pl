use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'directions_string_undef_texi2html'} = '*document_root C13
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3|E5]
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
 *2 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E4|prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C2 l5 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E5|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
 *4 @node C1 l7 {chap2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |node_number:{3}
 |normalized:{chap2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap2}
 *5 @chapter C2 l8 {Chap 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E7|E9|E11]
 |section_directions:D[prev->E3|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap 2}
  {empty_line:\\n}
 *6 @node C1 l10 {sec1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E8|up->E4]
 |node_number:{4}
 |normalized:{sec1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec1}
 *7 @section C2 l11 {Sec 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E9|up->E5]
 |section_heading_number:{2.1}
 |section_level:{2}
 |section_number:{4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec 1}
  {empty_line:\\n}
 *8 @node C1 l13 {sec2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E10|prev->E6|up->E4]
 |node_number:{5}
 |normalized:{sec2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec2}
 *9 @section C2 l14 {Sec 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E11|prev->E7|up->E5]
 |section_heading_number:{2.2}
 |section_level:{2}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec 2}
  {empty_line:\\n}
 *10 @node C1 l16 {sec3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E8|up->E4]
 |node_number:{6}
 |normalized:{sec3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec3}
 *11 @section C1 l17 {Sec 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E9|up->E5]
 |section_heading_number:{2.3}
 |section_level:{2}
 |section_number:{6}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec 3}
';


$result_texis{'directions_string_undef_texi2html'} = '@node Top
@top top

@node chap
@chapter Chap

@node chap2
@chapter Chap 2

@node sec1
@section Sec 1

@node sec2
@section Sec 2

@node sec3
@section Sec 3
';


$result_texts{'directions_string_undef_texi2html'} = 'top
***

1 Chap
******

2 Chap 2
********

2.1 Sec 1
=========

2.2 Sec 2
=========

2.3 Sec 3
=========
';

$result_errors{'directions_string_undef_texi2html'} = [];


$result_nodes_list{'directions_string_undef_texi2html'} = '1|Top
 associated_section: top
 associated_title_command: top
2|chap
 associated_section: 1 Chap
 associated_title_command: 1 Chap
3|chap2
 associated_section: 2 Chap 2
 associated_title_command: 2 Chap 2
4|sec1
 associated_section: 2.1 Sec 1
 associated_title_command: 2.1 Sec 1
5|sec2
 associated_section: 2.2 Sec 2
 associated_title_command: 2.2 Sec 2
6|sec3
 associated_section: 2.3 Sec 3
 associated_title_command: 2.3 Sec 3
';

$result_sections_list{'directions_string_undef_texi2html'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
2|Chap
 associated_anchor_command: chap
 associated_node: chap
3|Chap 2
 associated_anchor_command: chap2
 associated_node: chap2
4|Sec 1
 associated_anchor_command: sec1
 associated_node: sec1
5|Sec 2
 associated_anchor_command: sec2
 associated_node: sec2
6|Sec 3
 associated_anchor_command: sec3
 associated_node: sec3
';

$result_headings_list{'directions_string_undef_texi2html'} = '';

1;
