use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_menu_entry_name'} = '*document_root C3
 *before_node_section
 *0 @node C4 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *1 @menu C4 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C6 l4
    {menu_entry_leading_text:* }
    *menu_entry_name
    {menu_entry_separator:: }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{vvv}
     {(}
     {vvv}
     {)}
    {menu_entry_separator:. }
    *menu_entry_description C1
     *preformatted C1
      {fff\\n}
   *menu_entry C6 l5
    {menu_entry_leading_text:* }
    *menu_entry_name
    {menu_entry_separator::}
    *menu_entry_node C1
    |EXTRA
    |node_content:{aaa}
    |normalized:{aaa}
     {aaa}
    {menu_entry_separator:,}
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
 *2 @node C1 l8 {aaa}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->MISSING: (menu_entry_node)[C3]|up->E0]
 |node_directions:D[up->E0]
 |normalized:{aaa}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aaa}
';


$result_texis{'empty_menu_entry_name'} = '@node first

@menu
* : (vvv). fff
* :aaa,
@end menu

@node aaa
';


$result_texts{'empty_menu_entry_name'} = '
* : (vvv). fff
* :aaa,

';

$result_errors{'empty_menu_entry_name'} = [
  {
    'error_line' => 'warning: empty menu entry name in `* : (vvv). \'
',
    'line_nr' => 4,
    'text' => 'empty menu entry name in `* : (vvv). \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty menu entry name in `* :aaa,\'
',
    'line_nr' => 5,
    'text' => 'empty menu entry name in `* :aaa,\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `first\' not in menu
',
    'line_nr' => 1,
    'text' => 'node `first\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'empty_menu_entry_name'} = {};


1;
