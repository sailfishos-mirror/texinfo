use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'menutextorder'} = '*document_root C15
 *before_node_section C2
  *0 @menu C4 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l2
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{foo}
    |normalized:{foo}
     {foo}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l3
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{bar}
    |normalized:{bar}
     {bar}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l4
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
 *1 @node C1 l6 {bar}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |is_target:{1}
 |menus:EC[E3]
 |node_directions:D[next->E8]
 |normalized:{bar}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {bar}
 *2 @chapter C4 l7 {bar}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E1]
 |section_childs:EC[E5|E7]
 |section_directions:D[next->E9]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2|E9]
  ||section_level:{0}
 |toplevel_directions:D[next->E9]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {bar}
  {empty_line:\\n}
  *3 @menu C3 l9
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{onesub2}
    |normalized:{onesub2}
     {onesub2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l11
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
 *4 @node C1 l13 {onesub1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |node_directions:D[next->E6|up->E1]
 |normalized:{onesub1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {onesub1}
 *5 @section C2 l14 {One sub 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_directions:D[next->E7|up->E2]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {One sub 1}
  {empty_line:\\n}
 *6 @node C1 l16 {onesub2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |menu_directions:D[up->E1]
 |node_directions:D[prev->E4|up->E1]
 |normalized:{onesub2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {onesub2}
 *7 @section C3 l17 {One sub 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E6]
 |section_directions:D[prev->E5|up->E2]
 |section_level:{2}
 |section_number:{1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {One sub 2}
  {empty_line:\\n}
  {empty_line:\\n}
 *8 @node C1 l20 {foo}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |is_target:{1}
 |menus:EC[E10]
 |node_directions:D[prev->E1]
 |normalized:{foo}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {foo}
 *9 @chapter C4 l21 {foo}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E8]
 |section_childs:EC[E12|E14|E16]
 |section_directions:D[prev->E2]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {foo}
  {empty_line:\\n}
  *10 @menu C5 l23
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l24
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{sub1}
    |normalized:{sub1}
     {sub1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l25
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{sub3}
    |normalized:{sub3}
     {sub3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l26
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{sub2}
    |normalized:{sub2}
     {sub2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l27
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
 *11 @node C1 l29 {sub1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |is_target:{1}
 |menu_directions:D[next->E15|up->E8]
 |node_directions:D[next->E13|up->E8]
 |normalized:{sub1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sub1}
 *12 @section C2 l30 {Sub1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E11]
 |section_directions:D[next->E14|up->E9]
 |section_level:{2}
 |section_number:{2.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sub1}
  {empty_line:\\n}
 *13 @node C1 l32 {sub2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |is_target:{1}
 |menu_directions:D[prev->E15|up->E8]
 |node_directions:D[next->E15|prev->E11|up->E8]
 |normalized:{sub2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sub2}
 *14 @section C2 l33 {Sub2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E13]
 |section_directions:D[next->E16|prev->E12|up->E9]
 |section_level:{2}
 |section_number:{2.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sub2}
  {empty_line:\\n}
 *15 @node C1 l35 {sub3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E16]
 |is_target:{1}
 |menu_directions:D[next->E13|prev->E11|up->E8]
 |node_directions:D[next->E13|prev->E13|up->E8]
 |normalized:{sub3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sub3}
 *16 @section C1 l36 {Sub3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E15]
 |section_directions:D[prev->E14|up->E9]
 |section_level:{2}
 |section_number:{2.3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sub3}
';


$result_texis{'menutextorder'} = '@menu
* foo::
* bar::
@end menu

@node bar
@chapter bar

@menu
* onesub2::
@end menu

@node onesub1
@section One sub 1

@node onesub2
@section One sub 2


@node foo
@chapter foo

@menu
* sub1::
* sub3::
* sub2::
@end menu

@node sub1
@section Sub1

@node sub2
@section Sub2

@node sub3
@section Sub3
';


$result_texts{'menutextorder'} = '* foo::
* bar::

1 bar
*****

* onesub2::

1.1 One sub 1
=============

1.2 One sub 2
=============


2 foo
*****

* sub1::
* sub3::
* sub2::

2.1 Sub1
========

2.2 Sub2
========

2.3 Sub3
========
';

$result_errors{'menutextorder'} = [
  {
    'error_line' => 'warning: node next for `onesub1\' is `onesub2\' in sectioning but not in menu
',
    'line_nr' => 13,
    'text' => 'node next for `onesub1\' is `onesub2\' in sectioning but not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node up for `onesub1\' is `bar\' in sectioning but not in menu
',
    'line_nr' => 13,
    'text' => 'node up for `onesub1\' is `bar\' in sectioning but not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `bar\' lacks menu item for `onesub1\' despite being its Up target
',
    'line_nr' => 6,
    'text' => 'node `bar\' lacks menu item for `onesub1\' despite being its Up target',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node prev for `onesub2\' is `onesub1\' in sectioning but not in menu
',
    'line_nr' => 16,
    'text' => 'node prev for `onesub2\' is `onesub1\' in sectioning but not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node next pointer for `sub1\' is `sub2\' but next is `sub3\' in menu
',
    'line_nr' => 29,
    'text' => 'node next pointer for `sub1\' is `sub2\' but next is `sub3\' in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node next for `sub2\' is `sub3\' in sectioning but not in menu
',
    'line_nr' => 32,
    'text' => 'node next for `sub2\' is `sub3\' in sectioning but not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node prev pointer for `sub2\' is `sub1\' but prev is `sub3\' in menu
',
    'line_nr' => 32,
    'text' => 'node prev pointer for `sub2\' is `sub1\' but prev is `sub3\' in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `sub2\' is next for `sub3\' in menu but not in sectioning
',
    'line_nr' => 35,
    'text' => 'node `sub2\' is next for `sub3\' in menu but not in sectioning',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node prev pointer for `sub3\' is `sub2\' but prev is `sub1\' in menu
',
    'line_nr' => 35,
    'text' => 'node prev pointer for `sub3\' is `sub2\' but prev is `sub1\' in menu',
    'type' => 'warning'
  }
];


$result_floats{'menutextorder'} = {};


1;
