use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'customize_translations'} = '*document_root C13
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@contents C1 l2
   |EXTRA
   |global_command_number:{1}
    {rawline_arg:\\n}
   {empty_line:\\n}
 *0 @node C1 l4 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
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
 *1 @top C2 l5 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E5|E9|E11]
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
 *2 @node C1 l7 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E4|prev->E0|up->E0]
 |node_number:{2}
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *3 @chapter C5 l8 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
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
    {chap}
  {empty_line:\\n}
  *paragraph C2
   *@error C1 l10
    *brace_container
   {.\\n}
  {empty_line:\\n}
  *@documentlanguage C1 l12
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |text_arg:{fr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fr}
 *4 @node C1 l13 {Chapter fr}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[next->E8|prev->E2|up->E0]
 |node_number:{3}
 |normalized:{Chapter-fr}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter fr}
 *5 @chapter C4 l14 {chap fr}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_childs:EC[E7]
 |section_directions:D[next->E9|prev->E3|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E9|prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap fr}
  {empty_line:\\n}
  *paragraph C2
   *@error C1 l16
    *brace_container
   {.\\n}
  {empty_line:\\n}
 *6 @node C1 l18 {section fr}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |node_directions:D[up->E4]
 |node_number:{4}
 |normalized:{section-fr}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section fr}
 *7 @section C3 l19 {sec fr}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_directions:D[up->E5]
 |section_heading_number:{2.1}
 |section_level:{2}
 |section_number:{4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec fr}
  {empty_line:\\n}
  *@documentlanguage C1 l21
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |text_arg:{de}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {de}
 *8 @node C1 l22 {Chapter de}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |associated_title_command:[E9]
 |is_target:{1}
 |node_directions:D[next->E10|prev->E4|up->E0]
 |node_number:{5}
 |normalized:{Chapter-de}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter de}
 *9 @chapter C4 l23 {chap de}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E8]
 |associated_node:[E8]
 |section_directions:D[next->E11|prev->E5|up->E1]
 |section_heading_number:{3}
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[next->E11|prev->E5|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap de}
  {empty_line:\\n}
  *paragraph C2
   *@error C1 l25
    *brace_container
   {.\\n}
  {empty_line:\\n}
 *10 @node C1 l27 {Last chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E11]
 |associated_title_command:[E11]
 |is_target:{1}
 |node_directions:D[prev->E8|up->E0]
 |node_number:{6}
 |normalized:{Last-chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Last chapter}
 *11 @chapter C2 l28 {Last Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E10]
 |associated_node:[E10]
 |section_directions:D[prev->E9|up->E1]
 |section_heading_number:{4}
 |section_level:{1}
 |section_number:{6}
 |toplevel_directions:D[prev->E9|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Last Chapter}
  {empty_line:\\n}
';


$result_texis{'customize_translations'} = '
@contents

@node Top
@top top

@node Chapter
@chapter chap

@error{}.

@documentlanguage fr
@node Chapter fr
@chapter chap fr

@error{}.

@node section fr
@section sec fr

@documentlanguage de
@node Chapter de
@chapter chap de

@error{}.

@node Last chapter
@chapter Last Chapter

';


$result_texts{'customize_translations'} = '
top
***

1 chap
******

error->.

2 chap fr
*********

error->.

2.1 sec fr
==========

3 chap de
*********

error->.

4 Last Chapter
**************

';

$result_errors{'customize_translations'} = [];


1;
