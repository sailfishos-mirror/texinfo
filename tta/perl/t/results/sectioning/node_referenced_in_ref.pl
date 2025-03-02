use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_referenced_in_ref'} = '*document_root C4
 *before_node_section
 *0 @node C6 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E3]
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
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap first level node}
    |normalized:{chap-first-level-node}
     {chap first level node}
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
  *paragraph C2
   *2 @ref C1 l7
    *brace_arg C1
    |EXTRA
    |node_content:{second level node}
    |normalized:{second-level-node}
     {second level node}
   {.\\n}
  {empty_line:\\n}
 *3 @node C2 l9
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap-first-level-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap first level node}
  {empty_line:\\n}
 *4 @node C1 l11
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{second-level-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second level node}
';


$result_texis{'node_referenced_in_ref'} = '@node Top

@menu
* chap first level node::
@end menu

@ref{second level node}.

@node chap first level node

@node second level node
';


$result_texts{'node_referenced_in_ref'} = '
* chap first level node::

second level node.


';

$result_nodes{'node_referenced_in_ref'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap-first-level-node'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'second-level-node'
    }
  }
];
$result_nodes{'node_referenced_in_ref'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'node_referenced_in_ref'}[0];
$result_nodes{'node_referenced_in_ref'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'node_referenced_in_ref'}[0];
$result_nodes{'node_referenced_in_ref'}[1] = $result_nodes{'node_referenced_in_ref'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'node_referenced_in_ref'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'chap-first-level-node'
    }
  },
  {
    'extra' => {
      'normalized' => 'second-level-node'
    }
  }
];
$result_menus{'node_referenced_in_ref'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'node_referenced_in_ref'}[0];

$result_errors{'node_referenced_in_ref'} = [
  {
    'error_line' => 'warning: node `second level node\' not in menu
',
    'line_nr' => 11,
    'text' => 'node `second level node\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'node_referenced_in_ref'} = {};


1;
