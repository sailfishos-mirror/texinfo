use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'two_nodes_between_chapters'} = 'U0 unit[E1]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
NodeNext: [U1]
NodeForward: [U1]
NodeBack: [U1]
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
 *1 @top C4 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4|E7]
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
    {top}
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
    |node_content:{chapter 1}
    |normalized:{chapter-1}
     {chapter 1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node between chapters}
    |normalized:{node-between-chapters}
     {node between chapters}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter 2}
    |normalized:{chapter-2}
     {chapter 2}
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
NodeNext: [U0]
NodePrev: [U1]
NodeUp: [U0]
NodeForward: [U0]
NodeBack: [U0]
 *3 @node C1 l10 {chapter 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E0|prev->E5|up->E0]
 |normalized:{chapter-1}
  *arguments_line C4
   *line_arg C1
    {chapter 1}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{node between chapters}
   |normalized:{node-between-chapters}
    {node between chapters}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *4 @chapter C2 l11 {chapter c1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[next->E7|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E7|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter c1}
  {empty_line:\\n}
 *5 @node C2 l13 {node between chapters}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E6|prev->E3|up->E0]
 |node_directions:D[next->E6|prev->E3|up->E0]
 |normalized:{node-between-chapters}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node between chapters}
  {empty_line:\\n}
U2 unit[E7]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
FastBack: [U1]
Prev: [U1]
Up: [U0]
NodePrev: [U1]
NodeUp: [U0]
 *6 @node C1 l15 {chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |menu_directions:D[prev->E5|up->E0]
 |node_directions:D[prev->E3|up->E0]
 |normalized:{chapter-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2}
 *7 @chapter C1 l16 {chapter c2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E6]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter c2}
';


$result_texis{'two_nodes_between_chapters'} = '@node Top
@top top

@menu
* chapter 1::
* node between chapters::
* chapter 2::
@end menu

@node chapter 1, Top, node between chapters, Top
@chapter chapter c1

@node node between chapters

@node chapter 2
@chapter chapter c2
';


$result_texts{'two_nodes_between_chapters'} = 'top
***

* chapter 1::
* node between chapters::
* chapter 2::

1 chapter c1
************


2 chapter c2
************
';

$result_sectioning{'two_nodes_between_chapters'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'FastForward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'Prev' => {},
                    'This' => {},
                    'Up' => {}
                  },
                  'tree_unit_directions' => {
                    'prev' => {}
                  },
                  'unit_command' => {
                    'associated_unit' => {},
                    'cmdname' => 'chapter',
                    'extra' => {
                      'associated_node' => {
                        'associated_unit' => {},
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'chapter-2'
                        }
                      },
                      'section_directions' => {
                        'prev' => {
                          'associated_unit' => {},
                          'cmdname' => 'chapter',
                          'extra' => {
                            'associated_node' => {
                              'associated_unit' => {},
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'chapter-1'
                              }
                            },
                            'section_directions' => {
                              'up' => {}
                            },
                            'section_level' => 1,
                            'section_number' => '1',
                            'toplevel_directions' => {
                              'prev' => {},
                              'up' => {}
                            }
                          }
                        },
                        'up' => {}
                      },
                      'section_level' => 1,
                      'section_number' => '2',
                      'toplevel_directions' => {
                        'prev' => {},
                        'up' => {}
                      }
                    }
                  },
                  'unit_type' => 'unit'
                },
                'Forward' => {},
                'Next' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {},
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {},
            {}
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'associated_unit'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0];
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0];
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0];
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0];
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0];
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeBack'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0];
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0] = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1] = $result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'two_nodes_between_chapters'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'two_nodes_between_chapters'};

$result_nodes{'two_nodes_between_chapters'} = [
  {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'Prev' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'chapter',
                'extra' => {
                  'section_number' => '2'
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'Next' => {},
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {},
            'Up' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'chapter',
            'extra' => {
              'section_number' => '1'
            }
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
        'NodeBack' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'unit_command' => {
        'associated_unit' => {},
        'cmdname' => 'top',
        'extra' => {}
      },
      'unit_type' => 'unit'
    },
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {},
      'node_directions' => {
        'next' => {
          'associated_unit' => {},
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {},
            'node_directions' => {
              'next' => {},
              'prev' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'node_directions' => {
                    'next' => {
                      'associated_unit' => {},
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {},
                        'node_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'chapter-2'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'node-between-chapters'
                }
              },
              'up' => {}
            },
            'normalized' => 'chapter-1'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {}
];
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'NodeBack'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'associated_section'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'unit_command'};
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'two_nodes_between_chapters'}[0];
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'} = $result_nodes{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'two_nodes_between_chapters'}[0];
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'two_nodes_between_chapters'}[0];
$result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'two_nodes_between_chapters'}[0];
$result_nodes{'two_nodes_between_chapters'}[1] = $result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'two_nodes_between_chapters'}[2] = $result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'two_nodes_between_chapters'}[3] = $result_nodes{'two_nodes_between_chapters'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'};

$result_menus{'two_nodes_between_chapters'} = [
  {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'Prev' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'extra' => {
                  'section_number' => '2'
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'Next' => {},
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {},
            'Up' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'extra' => {
              'section_number' => '1'
            }
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
        'NodeBack' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'unit_command' => {
        'associated_unit' => {},
        'extra' => {}
      },
      'unit_type' => 'unit'
    },
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'associated_unit' => {},
    'extra' => {
      'menu_directions' => {
        'next' => {
          'associated_unit' => {},
          'extra' => {
            'menu_directions' => {
              'next' => {
                'associated_unit' => {},
                'extra' => {
                  'menu_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'chapter-2'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'node-between-chapters'
          }
        },
        'up' => {}
      },
      'normalized' => 'chapter-1'
    }
  },
  {},
  {}
];
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'NodeBack'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'};
$result_menus{'two_nodes_between_chapters'}[1]{'associated_unit'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[1]{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'two_nodes_between_chapters'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'two_nodes_between_chapters'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'two_nodes_between_chapters'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'two_nodes_between_chapters'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'two_nodes_between_chapters'}[0];
$result_menus{'two_nodes_between_chapters'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'two_nodes_between_chapters'}[1];
$result_menus{'two_nodes_between_chapters'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'two_nodes_between_chapters'}[0];
$result_menus{'two_nodes_between_chapters'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'two_nodes_between_chapters'}[0];
$result_menus{'two_nodes_between_chapters'}[2] = $result_menus{'two_nodes_between_chapters'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'two_nodes_between_chapters'}[3] = $result_menus{'two_nodes_between_chapters'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'two_nodes_between_chapters'} = [
  {
    'error_line' => 'warning: node next pointer for `chapter 1\' is `Top\' but next is `node between chapters\' in menu
',
    'line_nr' => 10,
    'text' => 'node next pointer for `chapter 1\' is `Top\' but next is `node between chapters\' in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node prev pointer for `chapter 2\' is `chapter 1\' but prev is `node between chapters\' in menu
',
    'line_nr' => 15,
    'text' => 'node prev pointer for `chapter 2\' is `chapter 1\' but prev is `node between chapters\' in menu',
    'type' => 'warning'
  }
];


$result_floats{'two_nodes_between_chapters'} = {};


$result_elements{'two_nodes_between_chapters'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'FastForward' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'Prev' => {},
              'This' => {},
              'Up' => {}
            },
            'unit_command' => {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '2'
              }
            },
            'unit_type' => 'unit'
          },
          'Forward' => {},
          'Next' => {},
          'NodeBack' => {},
          'NodeForward' => {},
          'NodeNext' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {},
          'Up' => {}
        },
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'chapter',
          'extra' => {
            'section_number' => '1'
          }
        },
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'NodeBack' => {},
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'top',
      'extra' => {}
    },
    'unit_type' => 'unit'
  },
  {},
  {}
];
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'Forward'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'NodeBack'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'NodeForward'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'NodeNext'} = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'This'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'two_nodes_between_chapters'}[0];
$result_elements{'two_nodes_between_chapters'}[1] = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'};
$result_elements{'two_nodes_between_chapters'}[2] = $result_elements{'two_nodes_between_chapters'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};



$result_directions_text{'two_nodes_between_chapters'} = 'output unit: @top top
  This: @top top
  Forward: @chapter chapter c1
  FastForward: @chapter chapter c1
  NodeNext: @chapter chapter c1
  NodeForward: @chapter chapter c1
  NodeBack: @chapter chapter c1
output unit: @chapter chapter c1
  This: @chapter chapter c1
  Forward: @chapter chapter c2
  Back: @top top
  FastForward: @chapter chapter c2
  FastBack: @top top
  Next: @chapter chapter c2
  Up: @top top
  NodeNext: @top top
  NodePrev: @chapter chapter c1
  NodeUp: @top top
  NodeForward: @top top
  NodeBack: @top top
output unit: @chapter chapter c2
  This: @chapter chapter c2
  Back: @chapter chapter c1
  FastBack: @chapter chapter c1
  Prev: @chapter chapter c1
  Up: @top top
  NodePrev: @chapter chapter c1
  NodeUp: @top top
';


$result_converted{'plaintext'}->{'two_nodes_between_chapters'} = 'top
***

1 chapter c1
************

2 chapter c2
************

';


$result_converted{'html'}->{'two_nodes_between_chapters'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
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
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chapter-1" accesskey="n" rel="next">chapter c1</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<ul class="mini-toc">
<li><a href="#chapter-1" accesskey="1">chapter c1</a></li>
<li><a href="#chapter-2" accesskey="2">chapter c2</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-1">
<div class="nav-panel">
<p>
Next: <a href="#Top" accesskey="n" rel="next">top</a>, Previous: <a href="#node-between-chapters" accesskey="p" rel="prev">node between chapters</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-c1"><span>1 chapter c1<a class="copiable-link" href="#chapter-c1"> &para;</a></span></h2>

<hr>
<a class="node-id" id="node-between-chapters"></a><div class="nav-panel">
<p>
Next: <a href="#chapter-2" accesskey="n" rel="next">chapter c2</a>, Previous: <a href="#chapter-1" accesskey="p" rel="prev">chapter c1</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h4 class="node"><span>node between chapters<a class="copiable-link" href="#node-between-chapters"> &para;</a></span></h4>

<hr>
</div>
<div class="chapter-level-extent" id="chapter-2">
<div class="nav-panel">
<p>
Previous: <a href="#chapter-1" accesskey="p" rel="prev">chapter c1</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-c2"><span>2 chapter c2<a class="copiable-link" href="#chapter-c2"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'two_nodes_between_chapters'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter 1</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter 1</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>node between chapters</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter 2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="chapter-1" spaces=" "><nodename>chapter 1</nodename><nodenext spaces=" ">Top</nodenext><nodeprev spaces=" ">node between chapters</nodeprev><nodeup spaces=" ">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter c1</sectiontitle>

</chapter>
<node identifier="node-between-chapters" spaces=" "><nodename>node between chapters</nodename><nodenext automatic="on">chapter 2</nodenext><nodeprev automatic="on">chapter 1</nodeprev><nodeup automatic="on">Top</nodeup></node>

<node identifier="chapter-2" spaces=" "><nodename>chapter 2</nodename><nodeprev automatic="on">chapter 1</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter c2</sectiontitle>
</chapter>
';

1;
