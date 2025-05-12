use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'headings_nodes_before_chapter'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content C2
   *@settitle C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {headings nodes before chapter}
   {empty_line:\\n}
 *0 @node C3 l3 {Node 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |menu_directions:D[next->E2|up->E4]
 |node_directions:D[next->E2|up->E4]
 |node_number:{1}
 |normalized:{Node-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Node 1}
  *1 @heading C1 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |associated_anchor_command:[E0]
  |global_command_number:{1}
  |heading_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Topic One}
  {empty_line:\\n}
 *2 @node C3 l6 {Node 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E3]
 |is_target:{1}
 |menu_directions:D[prev->E0|up->E4]
 |node_directions:D[prev->E0|up->E4]
 |node_number:{2}
 |normalized:{Node-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Node 2}
  *3 @heading C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |associated_anchor_command:[E2]
  |global_command_number:{2}
  |heading_number:{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Topic Two}
  {empty_line:\\n}
 *4 @node C1 l9 {Cap 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E5]
 |is_target:{1}
 |menus:EC[E6]
 |node_directions:D[next->E7]
 |node_number:{3}
 |normalized:{Cap-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Cap 1}
 *5 @chapter C4 l10 {Chapter One}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |section_directions:D[next->E8]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E5|E8]
  ||section_level:{0}
 |toplevel_directions:D[next->E8]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter One}
  {empty_line:\\n}
  *6 @menu C4 l12
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l13
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Node 1}
    |normalized:{Node-1}
     {Node 1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l14
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Node 2}
    |normalized:{Node-2}
     {Node 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l15
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
 *7 @node C1 l17 {Cap 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E8]
 |is_target:{1}
 |node_directions:D[prev->E4]
 |node_number:{4}
 |normalized:{Cap-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Cap 2}
 *8 @chapter C1 l18 {Chapter Two}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E7]
 |section_directions:D[prev->E5]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter Two}
';


$result_texis{'headings_nodes_before_chapter'} = '@settitle headings nodes before chapter

@node Node 1
@heading Topic One

@node Node 2
@heading Topic Two

@node Cap 1
@chapter Chapter One

@menu
* Node 1::
* Node 2::
@end menu

@node Cap 2
@chapter Chapter Two
';


$result_texts{'headings_nodes_before_chapter'} = '
Topic One
=========

Topic Two
=========

1 Chapter One
*************

* Node 1::
* Node 2::

2 Chapter Two
*************
';

$result_errors{'headings_nodes_before_chapter'} = [];


$result_nodes_list{'headings_nodes_before_chapter'} = '1|Node 1
2|Node 2
3|Cap 1
 associated_section: 1 Chapter One
4|Cap 2
 associated_section: 2 Chapter Two
';

$result_sections_list{'headings_nodes_before_chapter'} = '1|Chapter One
 associated_node: Cap 1
2|Chapter Two
 associated_node: Cap 2
';

1;
