use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'contents_in_middle_chapter_separate_element'} = '*document_root C8
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 contents_in_middle_chapter.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C6 contents_in_middle_chapter.texi:l4 {Contents in chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
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
    {Contents in chapter}
  {empty_line:\\n}
  *paragraph C1
   {Content in chapter.\\n}
  {empty_line:\\n}
  *2 @menu C3 contents_in_middle_chapter.texi:l8
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{ \\n}
   *menu_entry C4 contents_in_middle_chapter.texi:l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter}
    |normalized:{chapter}
     {chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 contents_in_middle_chapter.texi:l10
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
 *3 @node C1 contents_in_middle_chapter.texi:l12 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E0]
 |menus:EC[E5]
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *4 @chapter C7 contents_in_middle_chapter.texi:l13 {Chapter 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E7]
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
    {Chapter 1}
  {empty_line:\\n}
  *paragraph C1
   {The chapter with contents\\n}
  *@contents C1 contents_in_middle_chapter.texi:l16
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *5 @menu C3 contents_in_middle_chapter.texi:l18
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 contents_in_middle_chapter.texi:l19
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section}
    |normalized:{section}
     {section}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 contents_in_middle_chapter.texi:l20
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
 *6 @node C1 contents_in_middle_chapter.texi:l22 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E3]
 |node_directions:D[up->E3]
 |node_number:{3}
 |normalized:{section}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
 *7 @section C4 contents_in_middle_chapter.texi:l23 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E4]
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
  *paragraph C1
   {Section.\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'contents_in_middle_chapter_separate_element'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@top Contents in chapter

Content in chapter.

@menu 
* chapter::
@end menu

@node chapter
@chapter Chapter 1

The chapter with contents
@contents

@menu
* section::
@end menu

@node section
@section section

Section.

@bye
';


$result_texts{'contents_in_middle_chapter_separate_element'} = 'Contents in chapter
*******************

Content in chapter.

* chapter::

1 Chapter 1
***********

The chapter with contents

* section::

1.1 section
===========

Section.

';

$result_errors{'contents_in_middle_chapter_separate_element'} = [];


$result_nodes_list{'contents_in_middle_chapter_separate_element'} = '1|Top
 associated_section: Contents in chapter
 associated_title_command: Contents in chapter
2|chapter
 associated_section: 1 Chapter 1
 associated_title_command: 1 Chapter 1
3|section
 associated_section: 1.1 section
 associated_title_command: 1.1 section
';

$result_sections_list{'contents_in_middle_chapter_separate_element'} = '1|Contents in chapter
 associated_anchor_command: Top
 associated_node: Top
2|Chapter 1
 associated_anchor_command: chapter
 associated_node: chapter
3|section
 associated_anchor_command: section
 associated_node: section
';

$result_headings_list{'contents_in_middle_chapter_separate_element'} = '';

1;
