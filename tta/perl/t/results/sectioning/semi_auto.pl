use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'semi_auto'} = '*document_root C9
 *before_node_section
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
 *1 @top C4 l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4]
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
    {Top}
  {empty_line:\\n}
  *2 @menu C4 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Chap1}
    |normalized:{Chap1}
     {Chap1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Section non auto}
    |normalized:{Section-non-auto}
     {Section non auto}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l7
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
 *3 @node C1 l9 {Chap1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E8|up->E0]
 |menus:EC[E5]
 |node_directions:D[next->E8|prev->E0|up->E0]
 |normalized:{Chap1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap1}
 *4 @chapter C4 l10 {Chapter 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_childs:EC[E7|E9]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter 1}
  {empty_line:\\n}
  *5 @menu C3 l12
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l13
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Sec in chapter}
    |normalized:{Sec-in-chapter}
     {Sec in chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l14
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
 *6 @node C1 l16 {Sec in chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |menu_directions:D[up->E3]
 |node_directions:D[next->E8|up->E3]
 |normalized:{Sec-in-chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec in chapter}
 *7 @section C2 l17 {Sec in chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_directions:D[next->E9|up->E4]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec in chapter}
  {empty_line:\\n}
 *8 @node C1 l19 {Section non auto}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |associated_title_command:[E9]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E0]
 |node_directions:D[prev->E3|up->E0]
 |normalized:{Section-non-auto}
  *arguments_line C4
   *line_arg C1
    {Section non auto}
   *line_arg
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Chap1}
   |normalized:{Chap1}
    {Chap1}
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
 *9 @section C1 l20 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E8]
 |associated_node:[E8]
 |section_directions:D[prev->E7|up->E4]
 |section_level:{2}
 |section_number:{1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
';


$result_texis{'semi_auto'} = '@node Top
@top Top

@menu
* Chap1::
* Section non auto::
@end menu

@node Chap1
@chapter Chapter 1

@menu
* Sec in chapter::
@end menu

@node Sec in chapter
@section Sec in chapter

@node Section non auto,, Chap1, Top
@section Section
';


$result_texts{'semi_auto'} = 'Top
***

* Chap1::
* Section non auto::

1 Chapter 1
***********

* Sec in chapter::

1.1 Sec in chapter
==================

1.2 Section
===========
';

$result_errors{'semi_auto'} = [
  {
    'error_line' => 'warning: node `Section non auto\' is next for `Chap1\' in menu but not in sectioning
',
    'line_nr' => 9,
    'text' => 'node `Section non auto\' is next for `Chap1\' in menu but not in sectioning',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node next for `Sec in chapter\' is `Section non auto\' in sectioning but not in menu
',
    'line_nr' => 16,
    'text' => 'node next for `Sec in chapter\' is `Section non auto\' in sectioning but not in menu',
    'type' => 'warning'
  }
];


1;
