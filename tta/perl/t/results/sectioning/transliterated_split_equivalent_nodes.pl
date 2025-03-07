use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'transliterated_split_equivalent_nodes'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section C1
  *preamble_before_content
 *0 @node C4 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *1 @menu C5 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@~a}
    |normalized:{_00e3}
     *2 @~ C1 l4
      *following_arg C1
       {a}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{n}
    |normalized:{n}
     {n}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@^a}
    |normalized:{_00e2}
     *3 @^ C1 l6
      *following_arg C1
       {a}
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
U1 unit[E4]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
NodeNext: [U2]
NodePrev: [U0]
NodeUp: [U0]
NodeForward: [U2]
NodeBack: [U0]
 *4 @node C1 l9 {@~a}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
 |is_target:{1}
 |menu_directions:D[next->E8|up->E0]
 |node_directions:D[next->E8|prev->E0|up->E0]
 |normalized:{_00e3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *5 @~ C1 l9
     *following_arg C1
      {a}
 *6 @unnumbered C2 l10 {@~a}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_level:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E6]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *7 @~ C1 l10
     *following_arg C1
      {a}
  {empty_line:\\n}
U2 unit[E8]
unit_directions:D[next->[U3]|prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Forward: [U3]
Back: [U1]
FastBack: [U1]
NodeNext: [U3]
NodePrev: [U1]
NodeUp: [U0]
NodeForward: [U3]
NodeBack: [U1]
 *8 @node C2 l12 {n}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E9|prev->E4|up->E0]
 |node_directions:D[next->E9|prev->E4|up->E0]
 |normalized:{n}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {n}
  {empty_line:\\n}
U3 unit[E9]
unit_directions:D[prev->[U2]]
UNIT_DIRECTIONS
This: [U3]
Back: [U2]
FastBack: [U1]
NodePrev: [U2]
NodeUp: [U0]
NodeBack: [U2]
 *9 @node C1 l14 {@^a}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E8|up->E0]
 |node_directions:D[prev->E8|up->E0]
 |normalized:{_00e2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *10 @^ C1 l14
     *following_arg C1
      {a}
';


$result_texis{'transliterated_split_equivalent_nodes'} = '@node top

@menu
* @~a::
* n::
* @^a::
@end menu

@node @~a
@unnumbered @~a

@node n

@node @^a
';


$result_texts{'transliterated_split_equivalent_nodes'} = '
* a~::
* n::
* a^::

a~
**


';

$result_errors{'transliterated_split_equivalent_nodes'} = [
  {
    'error_line' => 'warning: node `n\' is next for `@~a\' in menu but not in sectioning
',
    'line_nr' => 9,
    'text' => 'node `n\' is next for `@~a\' in menu but not in sectioning',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `top\' is up for `@~a\' in menu but not in sectioning
',
    'line_nr' => 9,
    'text' => 'node `top\' is up for `@~a\' in menu but not in sectioning',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_html'}->{'transliterated_split_equivalent_nodes'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'transliterated_split_equivalent_nodes.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
