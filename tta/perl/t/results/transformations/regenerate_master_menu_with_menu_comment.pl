use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'regenerate_master_menu_with_menu_comment'} = '*document_root C7
 *before_node_section
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
 |section_childs:EC[E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
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
    |node_content:{chap}
    |normalized:{chap}
     {chap}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C3
     {after_menu_description_line:\\n}
     {A MC.\\n}
     {empty_line:\\n}
   *3 @detailmenu C4
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_comment C1
     *preformatted C6
      { --- The Detailed Node Listing ---}
      {\\n}
      {empty_line:\\n}
      {Chapter}
      {empty_line:\\n}
      {empty_line:\\n}
    *menu_entry C4
     {menu_entry_leading_text:* }
     *menu_entry_node C1
     |EXTRA
     |node_content:{sec}
     |normalized:{sec}
      {sec}
     {menu_entry_separator:::}
     *menu_entry_description C1
      *preformatted C1
       {\\n}
    *@end C1
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{detailmenu}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {detailmenu}
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
 *4 @node C1 l10 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *5 @chapter C2 l11 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_childs:EC[E7]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
 *6 @node C1 l13 {sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |node_directions:D[up->E4]
 |normalized:{sec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec}
 *7 @section C1 l14 {Sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E6]
 |section_directions:D[up->E5]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec}
';


$result_texis{'regenerate_master_menu_with_menu_comment'} = '@node Top
@top top

@menu
* chap::

A MC.

@detailmenu
 --- The Detailed Node Listing ---

Chapter

* sec::
@end detailmenu
@end menu

@node chap
@chapter Chapter

@node sec
@section Sec
';


$result_texts{'regenerate_master_menu_with_menu_comment'} = 'top
***

* chap::

A MC.

 -- The Detailed Node Listing --

Chapter

* sec::

1 Chapter
*********

1.1 Sec
=======
';

$result_errors{'regenerate_master_menu_with_menu_comment'} = [];


1;
