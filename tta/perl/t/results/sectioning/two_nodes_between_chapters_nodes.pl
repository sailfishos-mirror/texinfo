use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'two_nodes_between_chapters_nodes'} = '*document_root C8
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
 |menus:EC[E2]
 |node_directions:D[next->E3]
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
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E7]
 |section_level:{0}
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
    |node_content:{chapter 1}
    |normalized:{chapter-1}
     {chapter 1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node between chapters}
    |normalized:{node-between-chapters}
     {node between chapters}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter 2}
    |normalized:{chapter-2}
     {chapter 2}
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
 *3 @node C1 l10 {chapter 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E0|prev->E5|up->E0]
 |normalized:{chapter-1}
  *arguments_line C4
   *line_arg C1
    {chapter 1}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{node between chapters}
   |normalized:{node-between-chapters}
    {node between chapters}
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
 *4 @chapter C2 l11 {chapter c1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[next->E7|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E7|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter c1}
  {empty_line:\\n}
 *5 @node C2 l13 {node between chapters}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E6|prev->E3|up->E0]
 |node_directions:D[next->E6|prev->E3|up->E0]
 |normalized:{node-between-chapters}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node between chapters}
  {empty_line:\\n}
 *6 @node C1 l15 {chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |menu_directions:D[prev->E5|up->E0]
 |node_directions:D[prev->E3|up->E0]
 |normalized:{chapter-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2}
 *7 @chapter C1 l16 {chapter c2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter c2}
';


$result_texis{'two_nodes_between_chapters_nodes'} = '@node Top
@top top

@menu
* chapter 1::
* node between chapters::
* chapter 2::
@end menu

@node chapter 1, Top, node between chapters, Top
@chapter chapter c1

@node node between chapters

@node chapter 2
@chapter chapter c2
';


$result_texts{'two_nodes_between_chapters_nodes'} = 'top
***

* chapter 1::
* node between chapters::
* chapter 2::

1 chapter c1
************


2 chapter c2
************
';

$result_errors{'two_nodes_between_chapters_nodes'} = [
  {
    'error_line' => 'warning: node next pointer for `chapter 1\' is `Top\' but next is `node between chapters\' in menu
',
    'line_nr' => 10,
    'text' => 'node next pointer for `chapter 1\' is `Top\' but next is `node between chapters\' in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node prev pointer for `chapter 2\' is `chapter 1\' but prev is `node between chapters\' in menu
',
    'line_nr' => 15,
    'text' => 'node prev pointer for `chapter 2\' is `chapter 1\' but prev is `node between chapters\' in menu',
    'type' => 'warning'
  }
];


1;
