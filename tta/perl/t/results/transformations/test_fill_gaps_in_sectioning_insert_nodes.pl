use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_fill_gaps_in_sectioning_insert_nodes'} = '*document_root C11
 *before_node_section
 *0 @node C1 {Top}
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
 *1 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
 *2 @node C1 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{Chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
 *3 @chapter C2 l3 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E5]
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
    {Chap}
  {empty_line:\\n}
 *4 @node C1 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[up->E2]
 |node_number:{3}
 |normalized:{Section}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
 *5 @section C2 l5 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E7]
 |section_directions:D[up->E3]
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
  {empty_line:\\n}
 *6 @node C1 {@asis{} 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[up->E4]
 |node_number:{4}
 |normalized:{-1}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@asis C1
     *brace_container
    { 1}
 *7 @unnumberedsubsec C2 {@asis{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E9]
 |section_directions:D[up->E5]
 |section_level:{3}
 |section_number:{4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@asis C1
     *brace_container
  {empty_line:\\n}
 *8 @node C1 {There}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[up->E6]
 |node_number:{5}
 |normalized:{There}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {There}
 *9 @subsubsection C1 l7 {There}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E7]
 |section_level:{4}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {There}
';


$result_texis{'test_fill_gaps_in_sectioning_insert_nodes'} = '@node Top
@top top

@node Chap
@chapter Chap

@node Section
@section Section

@node @asis{} 1
@unnumberedsubsec @asis{}

@node There
@subsubsection There
';


$result_texts{'test_fill_gaps_in_sectioning_insert_nodes'} = 'top
***

1 Chap
******

1.1 Section
===========


There
.....
';

$result_errors{'test_fill_gaps_in_sectioning_insert_nodes'} = [];


$result_nodes_list{'test_fill_gaps_in_sectioning_insert_nodes'} = '1|Top
 associated_section: top
2|Chap
 associated_section: 1 Chap
3|Section
 associated_section: 1.1 Section
4|@asis{} 1
 associated_section: @asis{}
5|There
 associated_section: There
';

$result_sections_list{'test_fill_gaps_in_sectioning_insert_nodes'} = '1|top
 associated_node: Top
2|Chap
 associated_node: Chap
3|Section
 associated_node: Section
4|@asis{}
 associated_node: @asis{} 1
5|There
 associated_node: There
';

$result_headings_list{'test_fill_gaps_in_sectioning_insert_nodes'} = '';

1;
