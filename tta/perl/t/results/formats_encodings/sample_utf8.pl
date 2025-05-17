use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'sample_utf8'} = '*document_root C10
 *before_node_section C2
  *preamble_before_setfilename C2
   *preamble_before_beginning C1
    {text_before_beginning:\\input texinfo   @c -*-texinfo-*-\\n}
   *@c C1
    {rawline_arg: %**start of header\\n}
  *preamble_before_content C12
   *@setfilename C1 sample_utf8.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{sample_utf8.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {sample_utf8.info}
   *@settitle C1 sample_utf8.texi:l4
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {Sample 示例 ĄĘ ù}
   *@documentencoding C1 sample_utf8.texi:l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{utf-8}
   |text_arg:{UTF-8}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {UTF-8}
   *@c C1
    {rawline_arg: %**end of header\\n}
   {empty_line:\\n}
   *@copying C5 sample_utf8.texi:l8
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C1
     {This is a short example of a complete Texinfo file.\\n}
    {empty_line:\\n}
    *paragraph C2
     {Copyright (C) 2005 Someone.\\n}
     {Texinfo中文示例\\n}
    *@end C1 sample_utf8.texi:l13
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   {empty_line:\\n}
   *@titlepage C6 sample_utf8.texi:l15
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *@title C1 sample_utf8.texi:l16
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {标题示例 ĄĘ ae ąę Â ù}
    *@page C1
     {rawline_arg:\\n}
    *paragraph C2
     {Texinfo中文示例\\n}
     *@vskip C1
      {rawline_arg: 0pt plus 1filll\\n}
    *@insertcopying C1 sample_utf8.texi:l20
    |EXTRA
    |global_command_number:{1}
     {rawline_arg:\\n}
    *@end C1 sample_utf8.texi:l21
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{titlepage}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {titlepage}
   {empty_line:\\n}
   *@c C1
    {rawline_arg: Output the table of the contents at the beginning.\\n}
   *@contents C1 sample_utf8.texi:l24
   |EXTRA
   |global_command_number:{1}
    {rawline_arg:\\n}
   {empty_line:\\n}
   >SOURCEMARKS
   >expanded_conditional_command<start;1><p:1>
    >*@ifnottex C1 sample_utf8.texi:l26
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
 *0 @node C1 sample_utf8.texi:l27 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E3]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C7 sample_utf8.texi:l28 {Texinfo中文示例}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4|E6|E8]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Texinfo中文示例}
  {empty_line:\\n}
  *@insertcopying C1 sample_utf8.texi:l30
  |EXTRA
  |global_command_number:{2}
  >SOURCEMARKS
  >expanded_conditional_command<end;1>
   >*@end C1 sample_utf8.texi:l31
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{ifnottex}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{ifnottex}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *2 @menu C5 sample_utf8.texi:l33
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 sample_utf8.texi:l34
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{第一章（First Chapter）}
    |normalized:{_7b2c_4e00_7ae0_ff08First-Chapter_ff09}
     {第一章（First Chapter）}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C2
      {这是此示例文档的第一章\\n}
      {                           (with mixed cjk & latin char title)\\n}
   *menu_entry C4 sample_utf8.texi:l36
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Second Chapter AE ĄĘ ae ąę}
    |normalized:{Second-Chapter-AE-_0104_0118-ae-_0105_0119}
     {Second Chapter AE ĄĘ ae ąę}
    {menu_entry_separator:::  }
    *menu_entry_description C1
     *preformatted C1
      {this is chapter 2. AE ĄĘ ae ąę\\n}
   *menu_entry C4 sample_utf8.texi:l37
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Index node}
    |normalized:{Index-node}
     {Index node}
    {menu_entry_separator:::    }
    *menu_entry_description C1
     *preformatted C1
      {Complete index.\\n}
   *@end C1 sample_utf8.texi:l38
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
  {empty_line:\\n}
 *3 @node C1 sample_utf8.texi:l41 {第一章（First Chapter）}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E5|prev->E0|up->E0]
 |node_number:{2}
 |normalized:{_7b2c_4e00_7ae0_ff08First-Chapter_ff09}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {第一章（First Chapter）}
 *4 @chapter C10 sample_utf8.texi:l42 {第一章（First Chapter）}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E6|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {第一章（First Chapter）}
  {empty_line:\\n}
  *index_entry_command@cindex C1 sample_utf8.texi:l44
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E3]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter, first}
  {empty_line:\\n}
  *paragraph C4
   {This is the first chapter. 这是第一章。\\n}
   *index_entry_command@cindex C1 sample_utf8.texi:l47
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E3]
   |index_entry:I{cp,2}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {另一个，index entry}
   *index_entry_command@cindex C1 sample_utf8.texi:l48
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E3]
   |index_entry:I{cp,3}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ĄĘ ae ąę}
   *index_entry_command@cindex C1 sample_utf8.texi:l49
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E3]
   |index_entry:I{cp,4}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {é Â}
  {empty_line:\\n}
  *paragraph C1
   {Here is a numbered list.\\n}
  {empty_line:\\n}
  *@enumerate C4 sample_utf8.texi:l53
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@item C3 sample_utf8.texi:l54
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C2
     {第\\n}
     {This is the first item.\\n}
    {empty_line:\\n}
   *@item C2 sample_utf8.texi:l57
   |EXTRA
   |item_number:{2}
    {ignorable_spaces_after_command: }
    *paragraph C2
     {ĄĘ\\n}
     {This is the second item.\\n}
   *@end C1 sample_utf8.texi:l59
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
 *5 @node C1 sample_utf8.texi:l61 {Second Chapter AE ĄĘ ae ąę}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E7|prev->E3|up->E0]
 |node_number:{3}
 |normalized:{Second-Chapter-AE-_0104_0118-ae-_0105_0119}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Second Chapter AE ĄĘ ae ąę}
 *6 @chapter C4 sample_utf8.texi:l62 {Chapter 2 AE ĄĘ ae ąę}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E8|prev->E4|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E8|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter 2 AE ĄĘ ae ąę}
  {empty_line:\\n}
  *paragraph C1
   {Zażółć gęślą jaźń!\\n}
  {empty_line:\\n}
 *7 @node C1 sample_utf8.texi:l66 {Index node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E5|up->E0]
 |node_number:{4}
 |normalized:{Index-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Index node}
 *8 @unnumbered C4 sample_utf8.texi:l67 {Index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E6|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[prev->E6|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Index}
  {empty_line:\\n}
  *@printindex C1 sample_utf8.texi:l69
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'sample_utf8'} = '\\input texinfo   @c -*-texinfo-*-
@c %**start of header
@setfilename sample_utf8.info
@settitle Sample 示例 ĄĘ ù
@documentencoding UTF-8
@c %**end of header

@copying
This is a short example of a complete Texinfo file.

Copyright (C) 2005 Someone.
Texinfo中文示例
@end copying

@titlepage
@title 标题示例 ĄĘ ae ąę Â ù
@page
Texinfo中文示例
@vskip 0pt plus 1filll
@insertcopying
@end titlepage

@c Output the table of the contents at the beginning.
@contents

@node Top
@top Texinfo中文示例

@insertcopying

@menu
* 第一章（First Chapter）:: 这是此示例文档的第一章
                           (with mixed cjk & latin char title)
* Second Chapter AE ĄĘ ae ąę::  this is chapter 2. AE ĄĘ ae ąę
* Index node::    Complete index.
@end menu


@node 第一章（First Chapter）
@chapter 第一章（First Chapter）

@cindex chapter, first

This is the first chapter. 这是第一章。
@cindex 另一个，index entry
@cindex ĄĘ ae ąę
@cindex é Â

Here is a numbered list.

@enumerate
@item 第
This is the first item.

@item ĄĘ
This is the second item.
@end enumerate

@node Second Chapter AE ĄĘ ae ąę
@chapter Chapter 2 AE ĄĘ ae ąę

Zażółć gęślą jaźń!

@node Index node
@unnumbered Index

@printindex cp

@bye
';


$result_texts{'sample_utf8'} = '



Texinfo中文示例
***************


* 第一章（First Chapter）:: 这是此示例文档的第一章
                           (with mixed cjk & latin char title)
* Second Chapter AE ĄĘ ae ąę::  this is chapter 2. AE ĄĘ ae ąę
* Index node::    Complete index.


1 第一章（First Chapter）
*************************


This is the first chapter. 这是第一章。

Here is a numbered list.

1. 第
This is the first item.

2. ĄĘ
This is the second item.

2 Chapter 2 AE ĄĘ ae ąę
***********************

Zażółć gęślą jaźń!

Index
*****


';

$result_errors{'sample_utf8'} = [];


$result_nodes_list{'sample_utf8'} = '1|Top
 associated_section: Texinfo中文示例
 associated_title_command: Texinfo中文示例
 menus:
  第一章（First Chapter）
  Second Chapter AE ĄĘ ae ąę
  Index node
2|第一章（First Chapter）
 associated_section: 1 第一章（First Chapter）
 associated_title_command: 1 第一章（First Chapter）
 menu_directions:
  next->Second Chapter AE ĄĘ ae ąę
  up->Top
3|Second Chapter AE ĄĘ ae ąę
 associated_section: 2 Chapter 2 AE ĄĘ ae ąę
 associated_title_command: 2 Chapter 2 AE ĄĘ ae ąę
 menu_directions:
  next->Index node
  prev->第一章（First Chapter）
  up->Top
4|Index node
 associated_section: Index
 associated_title_command: Index
 menu_directions:
  prev->Second Chapter AE ĄĘ ae ąę
  up->Top
';

$result_sections_list{'sample_utf8'} = '1|Texinfo中文示例
 associated_anchor_command: Top
 associated_node: Top
2|第一章（First Chapter）
 associated_anchor_command: 第一章（First Chapter）
 associated_node: 第一章（First Chapter）
3|Chapter 2 AE ĄĘ ae ąę
 associated_anchor_command: Second Chapter AE ĄĘ ae ąę
 associated_node: Second Chapter AE ĄĘ ae ąę
4|Index
 associated_anchor_command: Index node
 associated_node: Index node
';

$result_headings_list{'sample_utf8'} = '';

$result_indices_sort_strings{'sample_utf8'} = 'cp:
 ĄĘ ae ąę
 chapter, first
 é Â
 另一个，index entry
';

1;
