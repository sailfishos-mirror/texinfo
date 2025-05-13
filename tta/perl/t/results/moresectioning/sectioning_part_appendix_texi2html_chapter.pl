use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'sectioning_part_appendix_texi2html_chapter'} = '*document_root C12
 *before_node_section C1
  *preamble_before_content
 *0 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1]
 |section_directions:D[next->E5]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E5|E9]
  ||section_level:{-1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *1 @chapter C2 l3 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_directions:D[up->E0]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
 *2 @section C2 l5 {section}
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
    {section}
  {empty_line:\\n}
 *3 @subsection C2 l7 {subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
 |section_directions:D[up->E2]
 |section_heading_number:{1.1.1}
 |section_level:{3}
 |section_number:{4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection}
  {empty_line:\\n}
 *4 @subsubsection C2 l9 {subsubsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E3]
 |section_heading_number:{1.1.1.1}
 |section_level:{4}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsubsection}
  {empty_line:\\n}
 *5 @part C2 l11 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E6]
 |section_childs:EC[E6|E7|E8]
 |section_directions:D[next->E9|prev->E0]
 |section_level:{0}
 |section_number:{6}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *6 @chapter C2 l13 {chapter in part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E5]
 |section_directions:D[next->E7|up->E5]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{7}
 |toplevel_directions:D[next->E7|prev->E1|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter in part}
  {empty_line:\\n}
 *7 @chapter C2 l15 {second chapter in part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E8|prev->E6|up->E5]
 |section_heading_number:{3}
 |section_level:{1}
 |section_number:{8}
 |toplevel_directions:D[next->E8|prev->E6|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second chapter in part}
  {empty_line:\\n}
 *8 @unnumbered C2 l17 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E7|up->E5]
 |section_level:{1}
 |section_number:{9}
 |toplevel_directions:D[next->E9|prev->E7|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  {empty_line:\\n}
 *9 @appendix C2 l19 {appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E10]
 |section_directions:D[prev->E5]
 |section_heading_number:{A}
 |section_level:{1}
 |section_number:{10}
 |toplevel_directions:D[prev->E8|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendix}
  {empty_line:\\n}
 *10 @appendixsec C1 l21 {appendixsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E9]
 |section_heading_number:{A.1}
 |section_level:{2}
 |section_number:{11}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendixsec}
';


$result_texis{'sectioning_part_appendix_texi2html_chapter'} = '@top top

@chapter chapter

@section section

@subsection subsection

@subsubsection subsubsection

@part part

@chapter chapter in part

@chapter second chapter in part

@unnumbered unnumbered

@appendix appendix

@appendixsec appendixsec
';


$result_texts{'sectioning_part_appendix_texi2html_chapter'} = 'top
***

1 chapter
*********

1.1 section
===========

1.1.1 subsection
----------------

1.1.1.1 subsubsection
.....................

part
****

2 chapter in part
*****************

3 second chapter in part
************************

unnumbered
**********

Appendix A appendix
*******************

A.1 appendixsec
===============
';

$result_errors{'sectioning_part_appendix_texi2html_chapter'} = [];


$result_nodes_list{'sectioning_part_appendix_texi2html_chapter'} = '';

$result_sections_list{'sectioning_part_appendix_texi2html_chapter'} = '1|top
2|chapter
3|section
4|subsection
5|subsubsection
6|part
7|chapter in part
8|second chapter in part
9|unnumbered
10|appendix
11|appendixsec
';

$result_headings_list{'sectioning_part_appendix_texi2html_chapter'} = '';

1;
