use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_in_node'} = '*document_root C6
 *before_node_section C2
  *@set C2
  |INFO
  |arg_line:{ node1 Node 1\\n}
   {rawline_arg:node1}
   {rawline_arg:Node 1}
  {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->MISSING: (line_arg)[C3]|prev->MISSING: (line_arg)[C3]|up->MISSING: (line_arg)[C3]]
 |normalized:{Top}
  *arguments_line C4
   *line_arg C1
    {Top}
   *line_arg C3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
   *line_arg C3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *1 @top C4 l4 {Expansion in Node Names}
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
    {Expansion in Node Names}
  {empty_line:\\n}
  *2 @menu C3 l6
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C2
    |EXTRA
    |node_content:{Node 1  }
    |normalized:{Node-1}
     {Node 1}
     >SOURCEMARKS
     >value_expansion<start;1>{Node 1}
      >*@value C1
       >*brace_container C1
        >{node1}
     >value_expansion<end;1><p:6>
     {space_at_end_menu_node:  }
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
 *3 @node C1 l10 {Node 1}
 |INFO
 |spaces_before_argument:
  |{ }
  |>SOURCEMARKS
  |>value_expansion<start;2><p:1>{Node 1}
   |>*@value C1
    |>*brace_container C1
     |>{node1}
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |menus:EC[E5]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{Node-1}
  *arguments_line C4
   *line_arg C1
    {Node 1}
    >SOURCEMARKS
    >value_expansion<end;2><p:6>
   *line_arg
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
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *4 @chapter C6 l11 {Chapter 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
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
  *@set C2
  |INFO
  |arg_line:{ sec1 Section 1.1\\n}
   {rawline_arg:sec1}
   {rawline_arg:Section 1.1}
  {empty_line:\\n}
  *5 @menu C3 l15
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l16
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Section 1.1}
    |normalized:{Section-1_002e1}
     {Section 1.1}
     >SOURCEMARKS
     >value_expansion<start;3>{Section 1.1}
      >*@value C1
       >*brace_container C1
        >{sec1}
     >value_expansion<end;3><p:11>
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l17
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
 *6 @node C3 l19 {Section 1.1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E3]
 |node_directions:D[prev->E3|up->E3]
 |normalized:{Section-1_002e1}
  *arguments_line C4
   *line_arg C1
    {Section 1.1}
   *line_arg
   |INFO
   |spaces_before_argument:
    |{ }
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Node 1}
   |normalized:{Node-1}
    {Node 1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Node 1}
   |normalized:{Node-1}
    {Node 1}
  {empty_line:\\n}
  *paragraph C2
   *@xref C1 l21
    *brace_arg C1
    |EXTRA
    |node_content:{Node 1}
    |normalized:{Node-1}
     {Node 1}
     >SOURCEMARKS
     >value_expansion<start;4>{Node 1}
      >*@value C1
       >*brace_container C1
        >{node1}
     >value_expansion<end;4><p:6>
   {.\\n}
';


$result_texis{'value_in_node'} = '@set node1 Node 1

@node Top, (dir), (dir), (dir)
@top Expansion in Node Names

@menu
* Node 1  ::
@end menu

@node Node 1,, Top, Top
@chapter Chapter 1

@set sec1 Section 1.1

@menu
* Section 1.1::
@end menu

@node Section 1.1, , Node 1, Node 1

@xref{Node 1}.
';


$result_texts{'value_in_node'} = '
Expansion in Node Names
***********************

* Node 1  ::

1 Chapter 1
***********


* Section 1.1::


Node 1.
';

$result_errors{'value_in_node'} = [];


1;
