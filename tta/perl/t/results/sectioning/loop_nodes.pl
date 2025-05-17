use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'loop_nodes'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
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
 *1 @top C4 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *2 @menu C3 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap node up}
    |normalized:{chap-node-up}
     {chap node up}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l6
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
 *3 @node C4 l8 {chap node up}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[up->E7]
 |node_number:{2}
 |normalized:{chap-node-up}
  *arguments_line C4
   *line_arg C1
    {chap node up}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{node down}
   |normalized:{node-down}
    {node down}
  {empty_line:\\n}
  *4 @menu C3 l10
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node middle}
    |normalized:{node-middle}
     {node middle}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l12
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
 *5 @node C4 l14 {node middle}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E3]
 |node_directions:D[up->E3]
 |node_number:{3}
 |normalized:{node-middle}
  *arguments_line C4
   *line_arg C1
    {node middle}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{chap node up}
   |normalized:{chap-node-up}
    {chap node up}
  {empty_line:\\n}
  *6 @menu C3 l16
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l17
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node down}
    |normalized:{node-down}
     {node down}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l18
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
 *7 @node C1 l20 {node down}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E5]
 |node_directions:D[up->E5]
 |node_number:{4}
 |normalized:{node-down}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node down}
';


$result_texis{'loop_nodes'} = '@node Top
@top top

@menu
* chap node up::
@end menu

@node chap node up,,,node down

@menu
* node middle::
@end menu

@node node middle,,,chap node up

@menu
* node down::
@end menu

@node node down
';


$result_texts{'loop_nodes'} = 'top
***

* chap node up::


* node middle::


* node down::

';

$result_errors{'loop_nodes'} = [
  {
    'error_line' => 'warning: node up pointer for `chap node up\' is `node down\' but up is `Top\' in menu
',
    'line_nr' => 8,
    'text' => 'node up pointer for `chap node up\' is `node down\' but up is `Top\' in menu',
    'type' => 'warning'
  }
];


$result_nodes_list{'loop_nodes'} = '1|Top
 associated_section: top
 associated_title_command: top
 menus:
  chap node up
2|chap node up
 menus:
  node middle
3|node middle
 menus:
  node down
4|node down
';

$result_sections_list{'loop_nodes'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
';

$result_headings_list{'loop_nodes'} = '';


$result_converted{'latex_text'}->{'loop_nodes'} = '\\begin{document}
\\label{anchor:Top}%
\\label{anchor:chap-node-up}%


\\label{anchor:node-middle}%


\\label{anchor:node-down}%
';

1;
