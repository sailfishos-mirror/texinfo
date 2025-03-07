use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'printindex_set_direction'} = '*document_root C11
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
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
 |associated_node:[E0]
 |section_childs:EC[E3|E8|E10|E12]
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
 *2 @node C1 l4 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E7|prev->E0|up->E0]
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *3 @chapter C6 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[next->E8|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E8|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *4 index_entry_command@cindex C1 l7
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {CC}
  *5 index_entry_command@vindex C1 l8
  |INFO
  |command_name:{vindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{vr,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {VV}
  *6 index_entry_command@findex C1 l9
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {FF}
  {empty_line:\\n}
 *7 @node C1 l11 {Vindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |associated_title_command:[E8]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[next->E9|prev->E2|up->E0]
 |normalized:{Vindex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Vindex}
 *8 @appendix C4 l12 {Vindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E7]
 |associated_node:[E7]
 |section_directions:D[next->E10|prev->E3|up->E1]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[next->E10|prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Vindex}
  {empty_line:\\n}
  *@printindex C1 l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{vr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {vr}
  {empty_line:\\n}
 *9 @node C1 l16 {Cindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |associated_title_command:[E10]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[next->E11|prev->E7|up->E0]
 |normalized:{Cindex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Cindex}
 *10 @appendix C4 l17 {Cindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E9]
 |associated_node:[E9]
 |section_directions:D[next->E12|prev->E8|up->E1]
 |section_level:{1}
 |section_number:{B}
 |toplevel_directions:D[next->E12|prev->E8|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Cindex}
  {empty_line:\\n}
  *@printindex C1 l19
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
 *11 @node C1 l21 {Findex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |associated_title_command:[E12]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E9|up->E0]
 |normalized:{Findex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Findex}
 *12 @appendix C3 l22 {Findex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E11]
 |associated_node:[E11]
 |section_directions:D[prev->E10|up->E1]
 |section_level:{1}
 |section_number:{C}
 |toplevel_directions:D[prev->E10|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Findex}
  {empty_line:\\n}
  *@printindex C1 l24
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
';


$result_texis{'printindex_set_direction'} = '@node Top
@top top

@node Chapter
@chapter chap

@cindex CC
@vindex VV
@findex FF

@node Vindex
@appendix Vindex

@printindex vr

@node Cindex
@appendix Cindex

@printindex cp

@node Findex
@appendix Findex

@printindex fn
';


$result_texts{'printindex_set_direction'} = 'top
***

1 chap
******


Appendix A Vindex
*****************


Appendix B Cindex
*****************


Appendix C Findex
*****************

';

$result_errors{'printindex_set_direction'} = [];


$result_indices_sort_strings{'printindex_set_direction'} = 'cp:
 CC
fn:
 FF
vr:
 VV
';

$result_converted_errors{'file_html'}->{'printindex_set_direction'} = [
  {
    'error_line' => 'warning: not setting an unknown direction: NewDirection
',
    'text' => 'not setting an unknown direction: NewDirection',
    'type' => 'warning'
  }
];


1;
