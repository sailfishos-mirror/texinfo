use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'insert_nodes_for_sectioning_commands'} = '*document_root C22
 *before_node_section
 *0 @node C1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l1 {top section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_directions:D[next->E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E2]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  {empty_line:\\n}
 *2 @part C2 l3 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E4]
 |section_childs:EC[E4|E18]
 |section_directions:D[prev->E1]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *3 @node C1 {chap@comma{} @code{a chap}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |node_directions:D[next->E17|prev->E0|up->E0]
 |normalized:{chap_002c-a-chap}
  *arguments_line C1
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
    *@comma C1
     *brace_container
    { }
    *@code C1
     *brace_container C1
      {a chap}
 *4 @chapter C2 l5 {chap, @code{a chap}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |associated_part:[E2]
 |section_childs:EC[E6|E8|E14|E16]
 |section_directions:D[next->E18|up->E2]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E18|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap, }
    *@code C1 l5
     *brace_container C1
      {a chap}
  {empty_line:\\n}
 *5 @node C1 l7 {a node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
 |is_target:{1}
 |node_directions:D[next->E7|up->E3]
 |normalized:{a-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a node}
 *6 @section C2 l8 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |associated_node:[E5]
 |section_directions:D[next->E8|up->E4]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *7 @node C1 {truc}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |is_target:{1}
 |node_directions:D[next->E13|prev->E5|up->E3]
 |normalized:{truc}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {truc}
 *8 @section C1 l10 {truc}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E7]
 |section_childs:EC[E10|E12]
 |section_directions:D[next->E14|prev->E6|up->E4]
 |section_level:{2}
 |section_number:{1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {truc}
 *9 @node C1 {sub1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |is_target:{1}
 |node_directions:D[next->E11|up->E7]
 |normalized:{sub1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sub1}
 *10 @subsection C4 l11 {sub1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E9]
 |section_directions:D[next->E12|up->E8]
 |section_level:{3}
 |section_number:{1.2.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sub1}
  {empty_line:\\n}
  *paragraph C1
   {Text.\\n}
  {empty_line:\\n}
 *11 @node C1 {sub2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |is_target:{1}
 |node_directions:D[prev->E9|up->E7]
 |normalized:{sub2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sub2}
 *12 @subsection C2 l15 {sub2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E11]
 |section_directions:D[prev->E10|up->E8]
 |section_level:{3}
 |section_number:{1.2.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: comment\\n}
   |spaces_after_argument:
    |{ }
    {sub2}
  {empty_line:\\n}
 *13 @node C1 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |is_target:{1}
 |node_directions:D[next->E15|prev->E7|up->E3]
 |normalized:{section}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
 *14 @section C2 l17 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E13]
 |section_directions:D[next->E16|prev->E8|up->E4]
 |section_level:{2}
 |section_number:{1.3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *15 @node C1 {section 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E16]
 |is_target:{1}
 |node_directions:D[prev->E13|up->E3]
 |normalized:{section-1}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
    { 1}
 *16 @section C2 l19 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E15]
 |section_directions:D[prev->E14|up->E4]
 |section_level:{2}
 |section_number:{1.4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *17 @node C1 { 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E18]
 |is_target:{1}
 |node_directions:D[prev->E3|up->E0]
 |normalized:{-1}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {}
    { 1}
 *18 @unnumbered C2 l21
 |EXTRA
 |associated_node:[E17]
 |section_childs:EC[E20]
 |section_directions:D[prev->E4|up->E2]
 |section_level:{1}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *19 @node C1 {@asis{} 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E20]
 |is_target:{1}
 |node_directions:D[up->E17]
 |normalized:{-2}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@asis C1
     *brace_container
    { 2}
 *20 @section C2 l23 {@asis{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E19]
 |section_directions:D[up->E18]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@asis C1 l23
     *brace_container
  {empty_line:\\n}
';


$result_texis{'insert_nodes_for_sectioning_commands'} = '@node Top
@top top section

@part part

@node chap@comma{} @code{a chap}
@chapter chap, @code{a chap}

@node a node
@section section

@node truc
@section truc
@node sub1
@subsection sub1

Text.

@node sub2
@subsection sub2 @c comment

@node section
@section section

@node section 1
@section section

@node  1
@unnumbered

@node @asis{} 2
@section @asis{}

';


$result_texts{'insert_nodes_for_sectioning_commands'} = 'top section
***********

part
****

1 chap, a chap
**************

1.1 section
===========

1.2 truc
========
1.2.1 sub1
----------

Text.

1.2.2 sub2
----------

1.3 section
===========

1.4 section
===========



';

$result_errors{'insert_nodes_for_sectioning_commands'} = [
  {
    'error_line' => 'warning: @unnumbered missing argument
',
    'line_nr' => 21,
    'text' => '@unnumbered missing argument',
    'type' => 'warning'
  }
];


1;
