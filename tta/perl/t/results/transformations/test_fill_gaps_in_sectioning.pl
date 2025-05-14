use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_fill_gaps_in_sectioning'} = '*document_root C6
 *before_node_section
 *0 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *1 @chapter C2 l3 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
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
    {Chap}
  {empty_line:\\n}
 *2 @section C2 l5 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_directions:D[up->E1]
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
 *3 @unnumberedsubsec C2 {@asis{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
 |section_directions:D[up->E2]
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
 *4 @subsubsection C1 l7 {There}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E3]
 |section_level:{4}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {There}
';


$result_texis{'test_fill_gaps_in_sectioning'} = '@top top

@chapter Chap

@section Section

@unnumberedsubsec @asis{}

@subsubsection There
';


$result_texts{'test_fill_gaps_in_sectioning'} = 'top
***

1 Chap
******

1.1 Section
===========


There
.....
';

$result_errors{'test_fill_gaps_in_sectioning'} = [];


$result_nodes_list{'test_fill_gaps_in_sectioning'} = '';

$result_sections_list{'test_fill_gaps_in_sectioning'} = '1|top
2|Chap
3|Section
4|@asis{}
5|There
';

$result_headings_list{'test_fill_gaps_in_sectioning'} = '';

1;
