use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'split_test_before_first_node_no_empty_line'} = '*document_root C5
 *before_node_section C2
  *preamble_before_content C2
   *@setfilename C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{split_test_before_first_node_no_empty_line.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {split_test_before_first_node_no_empty_line.info}
   {empty_line:\\n}
  *paragraph C1
   {truc machin et reuc machin  ze aze zea zae eaz eaz zae\\n}
 *0 @node C1 l4 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
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
 *1 @top C6 l5 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
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
    {top}
  {empty_line:\\n}
  *paragraph C1
   {In top node\\n}
  {empty_line:\\n}
  *2 @menu C3 l9
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap1}
    |normalized:{chap1}
     {chap1}
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
 *3 @node C1 l13 {chap1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chap1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap1}
 *4 @chapter C4 l14 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
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
    {chap}
  {empty_line:\\n}
  *paragraph C1
   {In chap1.\\n}
  {empty_line:\\n}
';


$result_texis{'split_test_before_first_node_no_empty_line'} = '@setfilename split_test_before_first_node_no_empty_line.info

truc machin et reuc machin  ze aze zea zae eaz eaz zae
@node Top
@top top

In top node

@menu
* chap1::
@end menu

@node chap1
@chapter chap

In chap1.

';


$result_texts{'split_test_before_first_node_no_empty_line'} = '
truc machin et reuc machin  ze aze zea zae eaz eaz zae
top
***

In top node

* chap1::

1 chap
******

In chap1.

';

$result_errors{'split_test_before_first_node_no_empty_line'} = [];


1;
