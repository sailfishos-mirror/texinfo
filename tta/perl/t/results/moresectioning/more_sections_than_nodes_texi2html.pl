use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'more_sections_than_nodes_texi2html'} = '*document_root C19
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E5|E8|E14|E19]
 |section_level:{0}
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
  *2 @menu C5 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{n c2}
    |normalized:{n-c2}
     {n c2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{n c3}
    |normalized:{n-c3}
     {n c3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{n c3 s1 s2}
    |normalized:{n-c3-s1-s2}
     {n c3 s1 s2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *3 @chapter C2 l10 {c1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E5|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c1}
  {empty_line:\\n}
 *4 @node C1 l12 {n c2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |menu_directions:D[next->E7|up->E0]
 |node_directions:D[next->E7|prev->E0|up->E0]
 |normalized:{n-c2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {n c2}
 *5 @chapter C2 l13 {c2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_childs:EC[E6]
 |section_directions:D[next->E8|prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E8|prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c2}
  {empty_line:\\n}
 *6 @section C2 l15 {s1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E5]
 |section_level:{2}
 |section_number:{2.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {s1}
  {empty_line:\\n}
 *7 @node C1 l17 {n c3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |is_target:{1}
 |menu_directions:D[next->E17|prev->E4|up->E0]
 |menus:EC[E9]
 |node_directions:D[next->E17|prev->E4|up->E0]
 |normalized:{n-c3}
  *arguments_line C4
   *line_arg C1
    {n c3}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{n c3 s1 s2}
   |normalized:{n-c3-s1-s2}
    {n c3 s1 s2}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{n c2}
   |normalized:{n-c2}
    {n c2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *8 @chapter C4 l18 {c3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E7]
 |section_childs:EC[E10|E12|E13]
 |section_directions:D[next->E14|prev->E5|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E14|prev->E5|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3}
  {empty_line:\\n}
  *9 @menu C3 l20
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{ \\n}
   *menu_entry C4 l21
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{n c3 s 2}
    |normalized:{n-c3-s-2}
     {n c3 s 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l22
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *10 @section C2 l24 {C3 s1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E12|up->E8]
 |section_level:{2}
 |section_number:{3.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {C3 s1}
  {empty_line:\\n}
 *11 @node C1 l26 {n c3 s 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |is_target:{1}
 |menu_directions:D[up->E7]
 |node_directions:D[up->E7]
 |normalized:{n-c3-s-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {n c3 s 2}
 *12 @section C2 l27 {c3 s2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E11]
 |section_directions:D[next->E13|prev->E10|up->E8]
 |section_level:{2}
 |section_number:{3.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3 s2}
  {empty_line:\\n}
 *13 @section C2 l29 {c3 s3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E12|up->E8]
 |section_level:{2}
 |section_number:{3.3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3 s3}
  {empty_line:\\n}
 *14 @chapter C2 l31 {c4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E15]
 |section_directions:D[next->E19|prev->E8|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E19|prev->E8|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c4}
  {empty_line:\\n}
 *15 @section C2 l33 {c3 s1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E16|E18]
 |section_directions:D[up->E14]
 |section_level:{2}
 |section_number:{4.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3 s1}
  {empty_line:\\n}
 *16 @subsection C2 l35 {c3 s1 s1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E18|up->E15]
 |section_level:{3}
 |section_number:{4.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3 s1 s1}
  {empty_line:\\n}
 *17 @node C1 l37 {n c3 s1 s2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E18]
 |is_target:{1}
 |menu_directions:D[prev->E7|up->E0]
 |node_directions:D[prev->E7|up->E0]
 |normalized:{n-c3-s1-s2}
  *arguments_line C4
   *line_arg C1
    {n c3 s1 s2}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{n c3}
   |normalized:{n-c3}
    {n c3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *18 @subsection C2 l38 {c3 s1 s2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E17]
 |section_directions:D[prev->E16|up->E15]
 |section_level:{3}
 |section_number:{4.1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3 s1 s2}
  {empty_line:\\n}
 *19 @appendix C1 l40 {appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E14|up->E1]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E14|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendix}
';


$result_texis{'more_sections_than_nodes_texi2html'} = '@node Top
@top top

@menu
* n c2::
* n c3::
* n c3 s1 s2::
@end menu

@chapter c1

@node n c2
@chapter c2

@section s1

@node n c3, n c3 s1 s2, n c2, Top
@chapter c3

@menu 
* n c3 s 2::
@end menu

@section C3 s1

@node n c3 s 2
@section c3 s2

@section c3 s3

@chapter c4

@section c3 s1

@subsection c3 s1 s1

@node n c3 s1 s2,,n c3,Top
@subsection c3 s1 s2

@appendix appendix
';


$result_texts{'more_sections_than_nodes_texi2html'} = 'top
***

* n c2::
* n c3::
* n c3 s1 s2::

1 c1
****

2 c2
****

2.1 s1
======

3 c3
****

* n c3 s 2::

3.1 C3 s1
=========

3.2 c3 s2
=========

3.3 c3 s3
=========

4 c4
****

4.1 c3 s1
=========

4.1.1 c3 s1 s1
--------------

4.1.2 c3 s1 s2
--------------

Appendix A appendix
*******************
';

$result_errors{'more_sections_than_nodes_texi2html'} = [];


$result_floats{'more_sections_than_nodes_texi2html'} = {};


1;
