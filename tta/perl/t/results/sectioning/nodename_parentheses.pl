use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodename_parentheses'} = '*document_root C9
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
 *1 @top C4 l2 {The top node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E6|E8]
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
    {The top node}
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
    |node_content:{Node (with parentheses)}
    |normalized:{Node-_0028with-parentheses_0029}
     {Node (with parentheses)}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Other node}
    |normalized:{Other-node}
     {Other node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C4
    |EXTRA
    |manual_content:{manual}
    |node_content:{node}
    |normalized:{node}
     {(}
     {manual}
     {)}
     {node}
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
 *3 @node C1 l10 {Node (with parentheses)}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{Node-_0028with-parentheses_0029}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Node (with parentheses)}
 *4 @chapter C4 l11 {Section (nodename with parentheses)}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[next->E6|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section (nodename with parentheses)}
  {empty_line:\\n}
  *paragraph C1
   {Dummy section\\n}
  {empty_line:\\n}
 *5 @node C1 l15 {Other node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
 |is_target:{1}
 |menu_directions:D[next->MISSING: (menu_entry_node)[C4]|prev->E3|up->E0]
 |node_directions:D[next->E7|prev->E3|up->E0]
 |normalized:{Other-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Other node}
 *6 @chapter C6 l16 {Section (nodename without parentheses)}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |associated_node:[E5]
 |section_directions:D[next->E8|prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E8|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section (nodename without parentheses)}
  {empty_line:\\n}
  *paragraph C3
   {Dummy link to }
   *@ref C1 l18
    *brace_arg C1
    |EXTRA
    |node_content:{Node (with parentheses)}
    |normalized:{Node-_0028with-parentheses_0029}
     {Node (with parentheses)}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {Dummy link to }
   *@ref C1 l20
    *brace_arg C4
    |EXTRA
    |manual_content:{manual}
    |node_content:{node}
     {(}
     {manual}
     {)}
     {node}
   {.\\n}
  {empty_line:\\n}
 *7 @node C1 l22 {(manual)node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |associated_title_command:[E8]
 |is_target:{1}
 |node_directions:D[prev->E5|up->E0]
 |normalized:{_0028manual_0029node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {(manual)node}
 *8 @chapter C7 l23 {(manual)node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E7]
 |associated_node:[E7]
 |section_directions:D[prev->E6|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E6|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {(manual)node}
  {empty_line:\\n}
  *paragraph C1
   {Dummy section with (manual)node node syntax.\\n}
  {empty_line:\\n}
  *9 @anchor C1 l27
  |EXTRA
  |is_target:{1}
  |normalized:{_0028manual_0029anchor}
   *brace_arg C1
    {(manual)anchor}
  *paragraph C1
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'nodename_parentheses'} = '@node Top
@top The top node

@menu
* Node (with parentheses)::
* Other node::
* (manual)node::
@end menu

@node Node (with parentheses)
@chapter Section (nodename with parentheses)

Dummy section

@node Other node
@chapter Section (nodename without parentheses)

Dummy link to @ref{Node (with parentheses)}.

Dummy link to @ref{(manual)node}.

@node (manual)node
@chapter (manual)node

Dummy section with (manual)node node syntax.

@anchor{(manual)anchor}.

';


$result_texts{'nodename_parentheses'} = 'The top node
************

* Node (with parentheses)::
* Other node::
* (manual)node::

1 Section (nodename with parentheses)
*************************************

Dummy section

2 Section (nodename without parentheses)
****************************************

Dummy link to Node (with parentheses).

Dummy link to (manual)node.

3 (manual)node
**************

Dummy section with (manual)node node syntax.

.

';

$result_errors{'nodename_parentheses'} = [
  {
    'error_line' => 'syntax for an external node used for `(manual)node\'
',
    'line_nr' => 22,
    'text' => 'syntax for an external node used for `(manual)node\'',
    'type' => 'error'
  },
  {
    'error_line' => 'syntax for an external node used for `(manual)anchor\'
',
    'line_nr' => 27,
    'text' => 'syntax for an external node used for `(manual)anchor\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: node prev for `(manual)node\' is `Other node\' in sectioning but not in menu
',
    'line_nr' => 22,
    'text' => 'node prev for `(manual)node\' is `Other node\' in sectioning but not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node up for `(manual)node\' is `Top\' in sectioning but not in menu
',
    'line_nr' => 22,
    'text' => 'node up for `(manual)node\' is `Top\' in sectioning but not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `Top\' lacks menu item for `(manual)node\' despite being its Up target
',
    'line_nr' => 1,
    'text' => 'node `Top\' lacks menu item for `(manual)node\' despite being its Up target',
    'type' => 'warning'
  }
];


1;
