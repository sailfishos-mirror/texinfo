use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'raiselowersections'} = '*document_root C14
 *before_node_section C2
  *paragraph C2
   {\\input texinfo }
   *@c C1
    {rawline_arg: -*-texinfo-*-\\n}
  {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C3 l4
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4|E15]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  *2 @menu C4 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Chapter}
    |normalized:{Chapter}
     {Chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Second chapter}
    |normalized:{Second-chapter}
     {Second chapter}
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
 *3 @node C1 l10 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E14|up->E0]
 |menus:EC[E5]
 |node_directions:D[next->E14|prev->E0|up->E0]
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *4 @chapter C11 l11 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_childs:EC[E7]
 |section_directions:D[next->E15|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E15|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *5 @menu C4 l13
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_comment
   >SOURCEMARKS
   >expanded_conditional_command<start;1>
    >*@ifclear C1 l14
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{include}
   *menu_entry C4 l15
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Chapter in included file}
    |normalized:{Chapter-in-included-file}
     {Chapter in included file}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
      >SOURCEMARKS
      >expanded_conditional_command<end;1><p:1>
       >*@end C1 l16
       >|INFO
       >|spaces_before_argument:
        >|{ }
       >|EXTRA
       >|text_arg:{ifclear}
        >*line_arg C1
        >|INFO
        >|spaces_after_argument:
         >|{\\n}
         >{ifclear}
   *@end C1 l17
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
  *@set C2
  |INFO
  |arg_line:{ do-top\\n}
   {rawline_arg:do-top}
   {rawline_arg:}
  {empty_line:\\n}
  *@lowersections C1
   {rawline_arg:\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;2><p:1>
   >*@ifclear C1 l23
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{include}
  >include<start;1><p:1>
   >*@include C1 l24
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{section_file.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{section_file.texi}
  *paragraph C2
   {\\input texinfo }
   *@c C1
    {rawline_arg: -*-texinfo-*-\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<1><p:1>
   >*@ifclear C8 section_file.texi:l3
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{do-top}
    >{raw:@node Top\\n}
    >{raw:@top\\n}
    >{raw:\\n}
    >{raw:@menu\\n}
    >{raw:* Chapter in included file::\\n}
    >{raw:@end menu\\n}
    >*@end C1 section_file.texi:l10
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifclear}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifclear}
  {empty_line:\\n}
 *6 @node C1 section_file.texi:l12 {Chapter in included file}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |menu_directions:D[up->E3]
 |menus:EC[E8]
 |node_directions:D[up->E3]
 |normalized:{Chapter-in-included-file}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter in included file}
 *7 @chapter C4 section_file.texi:l13 {Chapter in included file}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E6]
 |level_modifier:{-1}
 |section_childs:EC[E10]
 |section_directions:D[up->E4]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter in included file}
  {empty_line:\\n}
  *8 @menu C3 section_file.texi:l15
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_file.texi:l16
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Section}
    |normalized:{Section}
     {Section}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_file.texi:l17
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
 *9 @node C1 section_file.texi:l19 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |is_target:{1}
 |menu_directions:D[up->E6]
 |menus:EC[E11]
 |node_directions:D[up->E6]
 |normalized:{Section}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
 *10 @section C4 section_file.texi:l20 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E9]
 |level_modifier:{-1}
 |section_childs:EC[E13]
 |section_directions:D[up->E7]
 |section_level:{3}
 |section_number:{1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
  {empty_line:\\n}
  *11 @menu C3 section_file.texi:l22
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_file.texi:l23
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Subsection}
    |normalized:{Subsection}
     {Subsection}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_file.texi:l24
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
 *12 @node C1 section_file.texi:l26 {Subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E13]
 |is_target:{1}
 |menu_directions:D[up->E9]
 |node_directions:D[up->E9]
 |normalized:{Subsection}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection}
 *13 @subsection C7 section_file.texi:l27 {Subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E12]
 |level_modifier:{-1}
 |section_directions:D[up->E10]
 |section_level:{4}
 |section_number:{1.1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<2><p:1>
   >*@ifset C8 section_file.texi:l29
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{subsub}
    >{raw:@menu\\n}
    >{raw:* Subsubsection::\\n}
    >{raw:@end menu\\n}
    >{raw:\\n}
    >{raw:@node Subsubsection\\n}
    >{raw:@subsubsection Subsubsection\\n}
    >*@end C1 section_file.texi:l36
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifset}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifset}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<3><p:1>
   >*@ifclear C4 section_file.texi:l38
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{do-top}
    >{raw:@contents\\n}
    >{raw:@bye\\n}
    >*@end C1 section_file.texi:l41
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifclear}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifclear}
  >include<end;1><p:1>
  >expanded_conditional_command<end;2><p:1>
   >*@end C1 l25
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{ifclear}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{ifclear}
  *@raisesections C1
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@clear C1
  |INFO
  |arg_line:{ do-top\\n}
   {rawline_arg:do-top}
  {empty_line:\\n}
 *14 @node C1 l30 {Second chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E15]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E0]
 |node_directions:D[prev->E3|up->E0]
 |normalized:{Second-chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Second chapter}
 *15 @chapter C5 l31 {Second chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E14]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Second chapter}
  {empty_line:\\n}
  *paragraph C1
   {Second chapter\\n}
  {empty_line:\\n}
  *@contents C1 l35
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'raiselowersections'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@top
@menu
* Chapter::
* Second chapter::
@end menu

@node Chapter
@chapter Chapter

@menu
* Chapter in included file::
@end menu

@set do-top

@lowersections

\\input texinfo @c -*-texinfo-*-


@node Chapter in included file
@chapter Chapter in included file

@menu
* Section::
@end menu

@node Section
@section Section

@menu
* Subsection::
@end menu

@node Subsection
@subsection Subsection


@raisesections

@clear do-top

@node Second chapter
@chapter Second chapter

Second chapter

@contents
@bye
';


$result_texts{'raiselowersections'} = '\\input texinfo 
* Chapter::
* Second chapter::

1 Chapter
*********

* Chapter in included file::



\\input texinfo 

1.1 Chapter in included file
============================

* Section::

1.1.1 Section
-------------

* Subsection::

1.1.1.1 Subsection
..................




2 Second chapter
****************

Second chapter

';

$result_errors{'raiselowersections'} = [];


$result_floats{'raiselowersections'} = {};


1;
