use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'split_no_copying'} = '*document_root C7
 *before_node_section C3
  *paragraph C1
   {\\input texinfo\\n}
  *@setfilename C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |text_arg:{split_no_copying.info}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {split_no_copying.info}
  {empty_line:\\n}
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
 *1 @top C6 l5 {Top}
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
    {Top}
  {empty_line:\\n}
  *paragraph C1
   {This is the top node.\\n}
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
    |node_content:{Ch1}
    |normalized:{Ch1}
     {Ch1}
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
 *3 @node C1 l13 {Ch1}
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
 |normalized:{Ch1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Ch1}
 *4 @chapter C4 l14 {Ch1}
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
    {Ch1}
  {empty_line:\\n}
  *paragraph C1
   {First chapter.\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
 *postamble_after_end C1
  {text_after_end:\\n}
';


$result_texis{'split_no_copying'} = '\\input texinfo
@setfilename split_no_copying.info

@node Top
@top Top

This is the top node.

@menu
* Ch1::
@end menu

@node Ch1
@chapter Ch1

First chapter.

@bye

';


$result_texts{'split_no_copying'} = '\\input texinfo

Top
***

This is the top node.

* Ch1::

1 Ch1
*****

First chapter.

';

$result_errors{'split_no_copying'} = [];



$result_converted{'info'}->{'split_no_copying'} = 'This is split_no_copying.info, produced from .

\\input texinfo


File: split_no_copying.info,  Node: Top,  Next: Ch1,  Up: (dir)

Top
***

This is the top node.

* Menu:

* Ch1::


File: split_no_copying.info,  Node: Ch1,  Prev: Top,  Up: Top

1 Ch1
*****

First chapter.


Tag Table:
Node: Top64
Node: Ch1181

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
