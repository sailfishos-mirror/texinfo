use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'redirection_same_labels'} = 'U0 unit[E1]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
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
 *1 @top C4 l2 {the top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4|E15]
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
    {the top}
  {empty_line:\\n}
  *2 @menu C5 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_comment C1
    *preformatted C3
     *@c C1
      {rawline_arg: * @"i::\\n}
     *@c C1
      {rawline_arg: * @~{@dotless{i}}::\\n}
     *@c C1
      {rawline_arg: * @^i::\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{umlaut}
    |normalized:{umlaut}
     {umlaut}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{circumflex}
    |normalized:{circumflex}
     {circumflex}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l10
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
FastForward: [U2]
FastBack: [U0]
Next: [U2]
Up: [U0]
NodeNext: [U2]
NodePrev: [U0]
NodeUp: [U0]
NodeForward: [U1]
NodeBack: [U0]
 *3 @node C1 l12 {umlaut}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E14|up->E0]
 |menus:EC[E5]
 |node_directions:D[next->E14|prev->E0|up->E0]
 |normalized:{umlaut}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {umlaut}
 *4 @chapter C4 l13 {umlaut}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[next->E15|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E15|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {umlaut}
  {empty_line:\\n}
  *5 @menu C4 l15
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l16
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@"i}
    |normalized:{_00ef}
     *6 @" C1 l16
      *following_arg C1
       {i}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l17
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@~{@dotless{i}}}
    |normalized:{_0129}
     *7 @~ C1 l17
      *brace_container C1
       *8 @dotless C1 l17
        *brace_container C1
         {i}
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
 *9 @node C2 l20 {@"i}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E11|up->E3]
 |node_directions:D[next->E11|up->E3]
 |normalized:{_00ef}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *10 @" C1 l20
     *following_arg C1
      {i}
  {empty_line:\\n}
 *11 @node C2 l22 {@~{@dotless{i}}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E9|up->E3]
 |node_directions:D[prev->E9|up->E3]
 |normalized:{_0129}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *12 @~ C1 l22
     *brace_container C1
      *13 @dotless C1 l22
       *brace_container C1
        {i}
  {empty_line:\\n}
U2 unit[E15]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
FastBack: [U1]
Prev: [U1]
Up: [U0]
NodePrev: [U1]
NodeUp: [U0]
NodeForward: [U2]
NodeBack: [U2]
 *14 @node C1 l24 {circumflex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E15]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E0]
 |menus:EC[E16]
 |node_directions:D[prev->E3|up->E0]
 |normalized:{circumflex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {circumflex}
 *15 @chapter C4 l25 {circumflex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E14]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {circumflex}
  {empty_line:\\n}
  *16 @menu C3 l27
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l28
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@^i}
    |normalized:{_00ee}
     *17 @^ C1 l28
      *following_arg C1
       {i}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l29
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
 *18 @node C1 l31 {@^i}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E14]
 |node_directions:D[up->E14]
 |normalized:{_00ee}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *19 @^ C1 l31
     *following_arg C1
      {i}
';


$result_texis{'redirection_same_labels'} = '@node Top
@top the top

@menu
@c * @"i::
@c * @~{@dotless{i}}::
@c * @^i::
* umlaut::
* circumflex::
@end menu

@node umlaut
@chapter umlaut

@menu
* @"i::
* @~{@dotless{i}}::
@end menu

@node @"i

@node @~{@dotless{i}}

@node circumflex
@chapter circumflex

@menu
* @^i::
@end menu

@node @^i
';


$result_texts{'redirection_same_labels'} = 'the top
*******

* umlaut::
* circumflex::

1 umlaut
********

* i"::
* i~::



2 circumflex
************

* i^::

';

$result_errors{'redirection_same_labels'} = [];


$result_converted_errors{'file_html'}->{'redirection_same_labels'} = [
  {
    'error_line' => 'warning: @node `@~{@dotless{i}}\' file i.html for redirection exists
',
    'line_nr' => 22,
    'text' => '@node `@~{@dotless{i}}\' file i.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with @node `@"i\' redirection file
',
    'line_nr' => 20,
    'text' => 'conflict with @node `@"i\' redirection file',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @node `@^i\' file i.html for redirection exists
',
    'line_nr' => 31,
    'text' => '@node `@^i\' file i.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with @node `@"i\' redirection file
',
    'line_nr' => 20,
    'text' => 'conflict with @node `@"i\' redirection file',
    'type' => 'warning'
  }
];


1;
