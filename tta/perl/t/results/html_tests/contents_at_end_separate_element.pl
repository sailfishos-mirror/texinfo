use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'contents_at_end_separate_element'} = '*document_root C6
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 contents_at_end.texi:l3 {Top}
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
 *1 @top C6 contents_at_end.texi:l4 {Contents at end}
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
    {Contents at end}
  {empty_line:\\n}
  *paragraph C1
   {Content at end.\\n}
  {empty_line:\\n}
  *2 @menu C3 contents_at_end.texi:l8
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{ \\n}
   *menu_entry C4 contents_at_end.texi:l9
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
   *@end C1 contents_at_end.texi:l10
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
 *3 @node C1 contents_at_end.texi:l12 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *4 @chapter C5 contents_at_end.texi:l13 {Chapter 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
   {The chapter\\n}
  {empty_line:\\n}
  *@contents C1 contents_at_end.texi:l17
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'contents_at_end_separate_element'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@top Contents at end

Content at end.

@menu 
* chapter::
@end menu

@node chapter
@chapter Chapter 1

The chapter

@contents
@bye
';


$result_texts{'contents_at_end_separate_element'} = 'Contents at end
***************

Content at end.

* chapter::

1 Chapter 1
***********

The chapter

';

$result_errors{'contents_at_end_separate_element'} = [];


$result_nodes_list{'contents_at_end_separate_element'} = '1|Top
 associated_section: Contents at end
 associated_title_command: Contents at end
 menus:
  chapter
2|chapter
 associated_section: 1 Chapter 1
 associated_title_command: 1 Chapter 1
';

$result_sections_list{'contents_at_end_separate_element'} = '1|Contents at end
 associated_anchor_command: Top
 associated_node: Top
2|Chapter 1
 associated_anchor_command: chapter
 associated_node: chapter
';

$result_headings_list{'contents_at_end_separate_element'} = '';

1;
