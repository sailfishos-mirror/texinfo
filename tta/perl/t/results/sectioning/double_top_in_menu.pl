use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_top_in_menu'} = '*document_root C3
 *before_node_section
 *0 @node C5 l1 {ToP}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E0|prev->E0|up->E0]
 |menus:EC[E1]
 |node_directions:D[next->E0]
 |normalized:{Top}
  *arguments_line C2
   *line_arg C1
    {ToP}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{top}
   |normalized:{Top}
    {top}
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
    |node_content:{top}
    |normalized:{Top}
     {top}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{TOP}
    |normalized:{Top}
     {TOP}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {myself\\n}
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
 *2 @node C2 l9 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |node_directions:D[prev->E0|up->E0]
 |normalized:{Top}
  *arguments_line C4
   *line_arg C1
    {top}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{ToP}
   |normalized:{Top}
    {ToP}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  *paragraph C1
   {second node.\\n}
';


$result_texis{'double_top_in_menu'} = '@node ToP, top
Top node

@menu
* top::
* TOP:: myself
@end menu

@node top,,ToP,Top
second node.
';


$result_texts{'double_top_in_menu'} = 'Top node

* top::
* TOP:: myself

second node.
';

$result_nodes{'double_top_in_menu'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {}
      },
      'normalized' => 'Top'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'prev' => {},
        'up' => {}
      },
      'normalized' => 'Top'
    }
  }
];
$result_nodes{'double_top_in_menu'}[0]{'extra'}{'node_directions'}{'next'} = $result_nodes{'double_top_in_menu'}[0];
$result_nodes{'double_top_in_menu'}[1]{'extra'}{'node_directions'}{'prev'} = $result_nodes{'double_top_in_menu'}[0];
$result_nodes{'double_top_in_menu'}[1]{'extra'}{'node_directions'}{'up'} = $result_nodes{'double_top_in_menu'}[0];

$result_menus{'double_top_in_menu'} = [
  {
    'extra' => {
      'menu_directions' => {
        'next' => {},
        'prev' => {},
        'up' => {}
      },
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];
$result_menus{'double_top_in_menu'}[0]{'extra'}{'menu_directions'}{'next'} = $result_menus{'double_top_in_menu'}[0];
$result_menus{'double_top_in_menu'}[0]{'extra'}{'menu_directions'}{'prev'} = $result_menus{'double_top_in_menu'}[0];
$result_menus{'double_top_in_menu'}[0]{'extra'}{'menu_directions'}{'up'} = $result_menus{'double_top_in_menu'}[0];

$result_errors{'double_top_in_menu'} = [
  {
    'error_line' => '@node `top\' previously defined
',
    'line_nr' => 9,
    'text' => '@node `top\' previously defined',
    'type' => 'error'
  },
  {
    'continuation' => 1,
    'error_line' => 'here is the previous definition as @node
',
    'line_nr' => 1,
    'text' => 'here is the previous definition as @node',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: Next pointer `top\' (for node `ToP\') different from node name `ToP\'
',
    'line_nr' => 1,
    'text' => 'Next pointer `top\' (for node `ToP\') different from node name `ToP\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: Up pointer `Top\' (for node `top\') different from node name `ToP\'
',
    'line_nr' => 9,
    'text' => 'Up pointer `Top\' (for node `top\') different from node name `ToP\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `top\' different from node name `ToP\'
',
    'line_nr' => 5,
    'text' => '@menu entry node name `top\' different from node name `ToP\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `TOP\' different from node name `ToP\'
',
    'line_nr' => 6,
    'text' => '@menu entry node name `TOP\' different from node name `ToP\'',
    'type' => 'warning'
  }
];


$result_floats{'double_top_in_menu'} = {};


1;
