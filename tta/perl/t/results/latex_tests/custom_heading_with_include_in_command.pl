use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'custom_heading_with_include_in_command'} = '*document_root C25
 *before_node_section C1
  *preamble_before_content C3
   *@setchapternewpage C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |misc_args:A{odd}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {odd}
   *@everyheading C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@thischapter
     { }
     *0 @emph C1 l2
      *brace_container C1
       *@thisfile
     { }
     *@|
     { }
     *@|
     { }
     *@thispage
   {empty_line:\\n}
 *1 @node C1 l4 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |associated_title_command:[E2]
 |is_target:{1}
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C4 l5 {top sectionning}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E1]
 |associated_node:[E1]
 |section_childs:EC[E4|E6|E13|E16|E19|E22|E26]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top sectionning}
  {empty_line:\\n}
  *@contents C1 l7
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
 *3 @node C1 l9 {in main}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |node_directions:D[next->E5|prev->E1|up->E1]
 |normalized:{in-main}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {in main}
 *4 @chapter C6 l10 {chap in main}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[next->E6|up->E2]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E2|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap in main}
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ do-top\\n}
  >SOURCEMARKS
  >include<start;1>
   >*@include C1 l13
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
   {rawline_arg:do-top}
   {rawline_arg:}
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
 *5 @node C1 section_file.texi:l12 {Chapter in included file}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
 |is_target:{1}
 |menus:EC[E7]
 |node_directions:D[prev->E3|up->E1]
 |normalized:{Chapter-in-included-file}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter in included file}
 *6 @chapter C4 section_file.texi:l13 {Chapter in included file}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |associated_node:[E5]
 |section_childs:EC[E9]
 |section_directions:D[next->E13|prev->E4|up->E2]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E13|prev->E4|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter in included file}
  {empty_line:\\n}
  *7 @menu C3 section_file.texi:l15
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
 *8 @node C1 section_file.texi:l19 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |associated_title_command:[E9]
 |is_target:{1}
 |menu_directions:D[up->E5]
 |menus:EC[E10]
 |node_directions:D[up->E5]
 |normalized:{Section}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
 *9 @section C4 section_file.texi:l20 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E8]
 |associated_node:[E8]
 |section_childs:EC[E12]
 |section_directions:D[up->E6]
 |section_level:{2}
 |section_number:{2.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
  {empty_line:\\n}
  *10 @menu C3 section_file.texi:l22
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
 *11 @node C1 section_file.texi:l26 {Subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |associated_title_command:[E12]
 |is_target:{1}
 |menu_directions:D[up->E8]
 |node_directions:D[up->E8]
 |normalized:{Subsection}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection}
 *12 @subsection C5 section_file.texi:l27 {Subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E11]
 |associated_node:[E11]
 |section_directions:D[up->E9]
 |section_level:{3}
 |section_number:{2.1.1}
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
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;2><p:1>
   >*@include C1 l15
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{section_file_no_node.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{section_file_no_node.texi}
  {empty_line:\\n}
 *13 @chapter C2 section_file_no_node.texi:l2 {Chapter in included file}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E14]
 |section_directions:D[next->E16|prev->E6|up->E2]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E16|prev->E6|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter in included file}
  {empty_line:\\n}
 *14 @section C2 section_file_no_node.texi:l4 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E15]
 |section_directions:D[up->E13]
 |section_level:{2}
 |section_number:{3.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
  {empty_line:\\n}
 *15 @subsection C5 section_file_no_node.texi:l6 {Subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E14]
 |section_level:{3}
 |section_number:{3.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<4><p:1>
   >*@ifset C3 section_file_no_node.texi:l8
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{subsub}
    >{raw:@subsubsection Subsubsection\\n}
    >*@end C1 section_file_no_node.texi:l10
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
  >include<end;2><p:1>
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;3><p:1>
   >*@include C1 l17
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{section_file_no_node_include.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{section_file_no_node_include.texi}
  {empty_line:\\n}
 *16 @chapter C2 section_file_no_node_include.texi:l2 {Chapter in included file Include}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E17]
 |section_directions:D[next->E19|prev->E13|up->E2]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E19|prev->E13|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter in included file Include}
  {empty_line:\\n}
 *17 @section C2 section_file_no_node_include.texi:l4 {Section Include}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E18]
 |section_directions:D[up->E16]
 |section_level:{2}
 |section_number:{4.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section Include}
  {empty_line:\\n}
 *18 @subsection C6 section_file_no_node_include.texi:l6 {Subsection Include}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E17]
 |section_level:{3}
 |section_number:{4.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection Include}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<5><p:1>
   >*@ifset C3 section_file_no_node_include.texi:l8
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{subsub}
    >{raw:@subsubsection Subsubsection Include\\n}
    >*@end C1 section_file_no_node_include.texi:l10
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
  *paragraph C1
   {Now include file\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;4><p:1>
   >*@include C1 section_file_no_node_include.texi:l14
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{section_file_no_node.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{section_file_no_node.texi}
  {empty_line:\\n}
 *19 @chapter C2 section_file_no_node.texi:l2 {Chapter in included file}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E20]
 |section_directions:D[next->E22|prev->E16|up->E2]
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[next->E22|prev->E16|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter in included file}
  {empty_line:\\n}
 *20 @section C2 section_file_no_node.texi:l4 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E21]
 |section_directions:D[up->E19]
 |section_level:{2}
 |section_number:{5.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
  {empty_line:\\n}
 *21 @subsection C6 section_file_no_node.texi:l6 {Subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E20]
 |section_level:{3}
 |section_number:{5.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<6><p:1>
   >*@ifset C3 section_file_no_node.texi:l8
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{subsub}
    >{raw:@subsubsection Subsubsection\\n}
    >*@end C1 section_file_no_node.texi:l10
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
  >include<end;4><p:1>
  {empty_line:\\n}
  >SOURCEMARKS
  >include<end;3><p:1>
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;5><p:1>
   >*@include C1 l19
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{section_file_no_node.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{section_file_no_node.texi}
  {empty_line:\\n}
 *22 @chapter C2 section_file_no_node.texi:l2 {Chapter in included file}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E23]
 |section_directions:D[next->E26|prev->E19|up->E2]
 |section_level:{1}
 |section_number:{6}
 |toplevel_directions:D[next->E26|prev->E19|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter in included file}
  {empty_line:\\n}
 *23 @section C2 section_file_no_node.texi:l4 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E24]
 |section_directions:D[up->E22]
 |section_level:{2}
 |section_number:{6.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
  {empty_line:\\n}
 *24 @subsection C4 section_file_no_node.texi:l6 {Subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E23]
 |section_level:{3}
 |section_number:{6.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<7><p:1>
   >*@ifset C3 section_file_no_node.texi:l8
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{subsub}
    >{raw:@subsubsection Subsubsection\\n}
    >*@end C1 section_file_no_node.texi:l10
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
  >include<end;5><p:1>
  {empty_line:\\n}
 *25 @node C1 l21 {last chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E26]
 |associated_title_command:[E26]
 |is_target:{1}
 |node_directions:D[up->E1]
 |normalized:{last-chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {last chap}
 *26 @chapter C2 l22 {A last}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E25]
 |associated_node:[E25]
 |section_directions:D[prev->E22|up->E2]
 |section_level:{1}
 |section_number:{7}
 |toplevel_directions:D[prev->E22|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {A last}
  {empty_line:\\n}
';


$result_texis{'custom_heading_with_include_in_command'} = '@setchapternewpage odd
@everyheading @thischapter @emph{@thisfile} @| @| @thispage

@node Top
@top top sectionning

@contents

@node in main
@chapter chap in main

@set do-top
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




@chapter Chapter in included file

@section Section

@subsection Subsection




@chapter Chapter in included file Include

@section Section Include

@subsection Subsection Include


Now include file


@chapter Chapter in included file

@section Section

@subsection Subsection





@chapter Chapter in included file

@section Section

@subsection Subsection



@node last chap
@chapter A last

';


$result_texts{'custom_heading_with_include_in_command'} = '
top sectionning
***************


1 chap in main
**************

\\input texinfo 

2 Chapter in included file
**************************

* Section::

2.1 Section
===========

* Subsection::

2.1.1 Subsection
----------------




3 Chapter in included file
**************************

3.1 Section
===========

3.1.1 Subsection
----------------




4 Chapter in included file Include
**********************************

4.1 Section Include
===================

4.1.1 Subsection Include
------------------------


Now include file


5 Chapter in included file
**************************

5.1 Section
===========

5.1.1 Subsection
----------------





6 Chapter in included file
**************************

6.1 Section
===========

6.1.1 Subsection
----------------



7 A last
********

';

$result_errors{'custom_heading_with_include_in_command'} = [];



$result_converted{'latex_text'}->{'custom_heading_with_include_in_command'} = '\\pagestyle{double}%
\\newpagestyle{custom}{%
\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{} \\emph{\\Texinfotheinclude{}}][][\\thepage{}]%
{\\chaptername{} \\thechapter{} \\chaptertitle{} \\emph{\\Texinfotheinclude{}}}{}{\\thepage{}}%
}%
\\pagestyle{custom}%

\\begin{document}
\\tableofcontents\\newpage
\\label{anchor:Top}%
\\chapter{{chap in main}}
\\label{anchor:in-main}%

\\renewcommand{\\Texinfotheinclude}{section\\_file.texi}%
\\textbackslash{}input texinfo 

\\chapter{{Chapter in included file}}
\\label{anchor:Chapter-in-included-file}%


\\section{{Section}}
\\label{anchor:Section}%


\\subsection{{Subsection}}
\\label{anchor:Subsection}%

\\renewcommand{\\Texinfotheinclude}{}%

\\renewcommand{\\Texinfotheinclude}{section\\_file\\_no\\_node.texi}%


\\chapter{{Chapter in included file}}

\\section{{Section}}

\\subsection{{Subsection}}

\\renewcommand{\\Texinfotheinclude}{}%

\\renewcommand{\\Texinfotheinclude}{section\\_file\\_no\\_node\\_include.texi}%


\\chapter{{Chapter in included file Include}}

\\section{{Section Include}}

\\subsection{{Subsection Include}}


Now include file
\\renewcommand{\\Texinfotheinclude}{section\\_file\\_no\\_node.texi}%


\\chapter{{Chapter in included file}}

\\section{{Section}}

\\subsection{{Subsection}}

\\renewcommand{\\Texinfotheinclude}{section\\_file\\_no\\_node\\_include.texi}%

\\renewcommand{\\Texinfotheinclude}{}%

\\renewcommand{\\Texinfotheinclude}{section\\_file\\_no\\_node.texi}%


\\chapter{{Chapter in included file}}

\\section{{Section}}

\\subsection{{Subsection}}

\\renewcommand{\\Texinfotheinclude}{}%


\\chapter{{A last}}
\\label{anchor:last-chap}%

';

1;
