use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'multiple_menus'} = '*document_root C2
 *before_node_section
 *0 @node C5 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1|E2]
 |node_directions:D[next->MISSING: (menu_entry_node)[C4]]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @menu C3 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C4
    |EXTRA
    |manual_content:{a}
    |node_content:{a}
    |normalized:{a}
     {(}
     {a}
     {)}
     {a}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l5
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
  *2 @menu C3 l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C4
    |EXTRA
    |manual_content:{b}
    |node_content:{b}
    |normalized:{b}
     {(}
     {b}
     {)}
     {b}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l9
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


$result_texis{'multiple_menus'} = '@node Top

@menu
* (a)a::
@end menu

@menu
* (b)b::
@end menu
';


$result_texts{'multiple_menus'} = '
* (a)a::

* (b)b::
';

$result_errors{'multiple_menus'} = [
  {
    'error_line' => 'warning: multiple @menu
',
    'line_nr' => 7,
    'text' => 'multiple @menu',
    'type' => 'warning'
  }
];


1;
