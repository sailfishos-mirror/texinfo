use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'space_at_menu_end'} = '*document_root C2
 *before_node_section
 *0 @node C5 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->MISSING: (menu_entry_node)[C3]]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @menu C4 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{out}
     {(}
     {out}
     {)}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
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
  *paragraph C1
   {A para.\\n}
';


$result_texis{'space_at_menu_end'} = '@node Top

@menu
* (out)::

@end menu

A para.
';


$result_texts{'space_at_menu_end'} = '
* (out)::


A para.
';

$result_nodes{'space_at_menu_end'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'menu_entry_node'
        }
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'space_at_menu_end'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  }
];

$result_errors{'space_at_menu_end'} = [];


$result_floats{'space_at_menu_end'} = {};



$result_converted{'info'}->{'space_at_menu_end'} = 'This is , produced from .


File: ,  Node: Top,  Next: (out),  Up: (dir)

* Menu:

* (out)::

A para.


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
