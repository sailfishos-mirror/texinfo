use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'explicit_node_directions'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section
 *0 @node C4 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  *paragraph C1
   {Top node\\n}
  *1 @menu C4 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
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
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{third node}
    |normalized:{third-node}
     {third node}
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
U1 unit[E2]
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
 *2 @node C4 l8 {chap node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E3|up->E0]
 |node_directions:D[next->E3|prev->E0|up->E0]
 |normalized:{chap-node}
  *arguments_line C4
   *line_arg C1
    {chap node}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{third node}
   |normalized:{third-node}
    {third node}
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
  *paragraph C1
   {second node\\n}
  {empty_line:\\n}
U2 unit[E3]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
NodePrev: [U1]
NodeUp: [U0]
NodeBack: [U1]
 *3 @node C1 l12 {third node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E2|up->E0]
 |node_directions:D[prev->E2|up->E0]
 |normalized:{third-node}
  *arguments_line C4
   *line_arg C1
    {third node}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{chap node}
   |normalized:{chap-node}
    {chap node}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
';


$result_texis{'explicit_node_directions'} = '@node Top
Top node
@menu
* chap node::
* third node::
@end menu

@node chap node, third node,Top,Top

second node

@node third node,,chap node,Top
';


$result_texts{'explicit_node_directions'} = 'Top node
* chap node::
* third node::


second node

';

$result_nodes{'explicit_node_directions'} = [
  {
    'associated_unit' => {
      'directions' => {
        'Forward' => {
          'directions' => {
            'Back' => {},
            'Forward' => {
              'directions' => {
                'Back' => {},
                'NodeBack' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'node_directions' => {
                    'prev' => {
                      'associated_unit' => {},
                      'cmdname' => 'node',
                      'extra' => {
                        'node_directions' => {
                          'next' => {},
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'chap-node'
                      }
                    },
                    'up' => {}
                  },
                  'normalized' => 'third-node'
                }
              },
              'unit_type' => 'unit'
            },
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'unit_command' => {},
      'unit_type' => 'unit'
    },
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {}
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'explicit_node_directions'}[0];
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'explicit_node_directions'}[0];
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'explicit_node_directions'}[0];
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'unit_command'} = $result_nodes{'explicit_node_directions'}[0];
$result_nodes{'explicit_node_directions'}[0]{'extra'}{'node_directions'}{'next'} = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'explicit_node_directions'}[1] = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'explicit_node_directions'}[2] = $result_nodes{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};

$result_menus{'explicit_node_directions'} = [
  {
    'associated_unit' => {
      'directions' => {
        'Forward' => {
          'directions' => {
            'Back' => {},
            'Forward' => {
              'directions' => {
                'Back' => {},
                'NodeBack' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'extra' => {
                  'menu_directions' => {
                    'prev' => {
                      'associated_unit' => {},
                      'extra' => {
                        'menu_directions' => {
                          'next' => {},
                          'up' => {}
                        },
                        'normalized' => 'chap-node'
                      }
                    },
                    'up' => {}
                  },
                  'normalized' => 'third-node'
                }
              },
              'unit_type' => 'unit'
            },
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'unit_command' => {},
      'unit_type' => 'unit'
    },
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'explicit_node_directions'}[0];
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'explicit_node_directions'}[0];
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'unit_command'} = $result_menus{'explicit_node_directions'}[0];
$result_menus{'explicit_node_directions'}[1] = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'explicit_node_directions'}[2] = $result_menus{'explicit_node_directions'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};

$result_errors{'explicit_node_directions'} = [];


$result_floats{'explicit_node_directions'} = {};


$result_elements{'explicit_node_directions'} = [
  {
    'directions' => {
      'Forward' => {
        'directions' => {
          'Back' => {},
          'Forward' => {
            'directions' => {
              'Back' => {},
              'NodeBack' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'This' => {}
            },
            'unit_command' => {
              'associated_unit' => {},
              'cmdname' => 'node',
              'extra' => {
                'menu_directions' => {
                  'prev' => {
                    'associated_unit' => {},
                    'cmdname' => 'node',
                    'extra' => {
                      'menu_directions' => {
                        'next' => {},
                        'up' => {
                          'associated_unit' => {},
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => 'Top'
                          }
                        }
                      },
                      'normalized' => 'chap-node'
                    }
                  },
                  'up' => {}
                },
                'normalized' => 'third-node'
              }
            },
            'unit_type' => 'unit'
          },
          'NodeBack' => {},
          'NodeForward' => {},
          'NodeNext' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {}
        },
        'unit_command' => {},
        'unit_type' => 'unit'
      },
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'unit_command' => {},
    'unit_type' => 'unit'
  },
  {},
  {}
];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'associated_unit'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'unit_command'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'NodeForward'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'NodeNext'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'This'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'unit_command'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'explicit_node_directions'}[1] = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[2] = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};



$result_directions_text{'explicit_node_directions'} = 'output unit: @node Top
  This: @node Top
  Forward: @node chap node
  NodeNext: @node chap node
  NodeForward: @node chap node
output unit: @node chap node
  This: @node chap node
  Forward: @node third node
  Back: @node Top
  NodeNext: @node third node
  NodePrev: @node Top
  NodeUp: @node Top
  NodeForward: @node third node
  NodeBack: @node Top
output unit: @node third node
  This: @node third node
  Back: @node chap node
  NodePrev: @node chap node
  NodeUp: @node Top
  NodeBack: @node chap node
';


$result_converted{'info'}->{'explicit_node_directions'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap node,  Up: (dir)

Top node
* Menu:

* chap node::
* third node::


File: ,  Node: chap node,  Next: third node,  Prev: Top,  Up: Top

second node


File: ,  Node: third node,  Prev: chap node,  Up: Top


Tag Table:
Node: Top27
Node: chap node127
Node: third node209

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'explicit_node_directions'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap-node" accesskey="n" rel="next">chap node</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<p>Top node
</p>
<hr>
<a class="node-id" id="chap-node"></a><div class="nav-panel">
<p>
Next: <a href="#third-node" accesskey="n" rel="next">third node</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Top</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap node<a class="copiable-link" href="#chap-node"> &para;</a></span></h4>

<p>second node
</p>
<hr>
<a class="node-id" id="third-node"></a><div class="nav-panel">
<p>
Previous: <a href="#chap-node" accesskey="p" rel="prev">chap node</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>third node<a class="copiable-link" href="#third-node"> &para;</a></span></h4>



</body>
</html>
';

$result_converted_errors{'html'}->{'explicit_node_directions'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'explicit_node_directions'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap node</nodenext></node>
<para>Top node
</para><menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chap node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>third node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="chap-node" spaces=" "><nodename>chap node</nodename><nodenext spaces=" ">third node</nodenext><nodeprev>Top</nodeprev><nodeup>Top</nodeup></node>

<para>second node
</para>
<node identifier="third-node" spaces=" "><nodename>third node</nodename><nodenext></nodenext><nodeprev>chap node</nodeprev><nodeup>Top</nodeup></node>
';

1;
