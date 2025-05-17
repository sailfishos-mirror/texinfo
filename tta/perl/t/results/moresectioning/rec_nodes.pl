use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'rec_nodes'} = '*document_root C6
 *before_node_section
 *0 @node C5 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  *paragraph C1
   {Top node\\n}
  {empty_line:\\n}
  *1 @menu C4 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap node}
    |normalized:{chap-node}
     {chap node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node following second}
    |normalized:{node-following-second}
     {node following second}
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
 *2 @node C4 l9 {chap node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E8|prev->E4|up->E2]
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chap-node}
  *arguments_line C4
   *line_arg C1
    {chap node}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *3 @menu C4 l11
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l12
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{other node}
    |normalized:{other-node}
     {other node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l13
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap node}
    |normalized:{chap-node}
     {chap node}
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
 *4 @node C4 l16 {other node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E2|up->E4]
 |node_directions:D[up->E2]
 |node_number:{3}
 |normalized:{other-node}
  *arguments_line C4
   *line_arg C1
    {other node}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{chap node}
   |normalized:{chap-node}
    {chap node}
  {empty_line:\\n}
  *5 @menu C3 l18
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{ \\n}
   *menu_entry C4 l19
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{other node}
    |normalized:{other-node}
     {other node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l20
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
 *6 @node C5 l22 {node up node following second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E8]
 |node_directions:D[up->E8]
 |node_number:{4}
 |normalized:{node-up-node-following-second}
  *arguments_line C4
   *line_arg C1
    {node up node following second}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{node following second}
   |normalized:{node-following-second}
    {node following second}
  *7 @menu C3 l23
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l24
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node following second}
    |normalized:{node-following-second}
     {node following second}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l25
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
  *paragraph C1
   {in node up node following second\\n}
  {empty_line:\\n}
 *8 @node C4 l29 {node following second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E2|up->E6]
 |node_directions:D[up->E6]
 |node_number:{5}
 |normalized:{node-following-second}
  *arguments_line C4
   *line_arg C1
    {node following second}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{node up node following second}
   |normalized:{node-up-node-following-second}
    {node up node following second}
  {empty_line:\\n}
  *paragraph C1
   {in node following second\\n}
  *9 @menu C3 l32
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l33
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node up node following second}
    |normalized:{node-up-node-following-second}
     {node up node following second}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l34
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
';


$result_texis{'rec_nodes'} = '@node Top
Top node

@menu
* chap node::
* node following second::
@end menu

@node chap node,,Top,Top

@menu
* other node::
* chap node::
@end menu

@node other node,,,chap node

@menu 
* other node::
@end menu

@node node up node following second,,,node following second
@menu
* node following second::
@end menu

in node up node following second

@node node following second,,,node up node following second

in node following second
@menu
* node up node following second::
@end menu
';


$result_texts{'rec_nodes'} = 'Top node

* chap node::
* node following second::


* other node::
* chap node::


* other node::

* node following second::

in node up node following second


in node following second
* node up node following second::
';

$result_errors{'rec_nodes'} = [
  {
    'error_line' => 'warning: node prev pointer for `chap node\' is `Top\' but prev is `other node\' in menu
',
    'line_nr' => 9,
    'text' => 'node prev pointer for `chap node\' is `Top\' but prev is `other node\' in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node up pointer for `chap node\' is `Top\' but up is `chap node\' in menu
',
    'line_nr' => 9,
    'text' => 'node up pointer for `chap node\' is `Top\' but up is `chap node\' in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node up pointer for `other node\' is `chap node\' but up is `other node\' in menu
',
    'line_nr' => 16,
    'text' => 'node up pointer for `other node\' is `chap node\' but up is `other node\' in menu',
    'type' => 'warning'
  }
];


$result_nodes_list{'rec_nodes'} = '1|Top
 menus:
  chap node
  node following second
2|chap node
 menus:
  other node
  chap node
3|other node
 menus:
  other node
4|node up node following second
 menus:
  node following second
5|node following second
 menus:
  node up node following second
';

$result_sections_list{'rec_nodes'} = '';

$result_headings_list{'rec_nodes'} = '';

1;
