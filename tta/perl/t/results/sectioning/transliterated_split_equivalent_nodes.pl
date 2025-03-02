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

$result_sectioning{'transliterated_split_equivalent_nodes'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'Back' => {
              'directions' => {
                'Forward' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'This' => {}
              },
              'tree_unit_directions' => {},
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'Top'
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'Forward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
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
                      'normalized' => '_00e2'
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
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'n'
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
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => '_00e3'
            }
          },
          'unit_type' => 'unit'
        },
        'cmdname' => 'unnumbered',
        'extra' => {
          'associated_node' => {},
          'section_level' => 1,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'}{'directions'}{'NodeForward'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'}{'directions'}{'NodeNext'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeBack'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodePrev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeUp'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'};
$result_sectioning{'transliterated_split_equivalent_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'transliterated_split_equivalent_nodes'};

$result_nodes{'transliterated_split_equivalent_nodes'} = [
  {
    'associated_unit' => {
      'directions' => {
        'Forward' => {
          'directions' => {
            'Back' => {},
            'Forward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'Forward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
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
                              'prev' => {
                                'associated_unit' => {},
                                'cmdname' => 'node',
                                'extra' => {
                                  'associated_section' => {
                                    'associated_unit' => {},
                                    'cmdname' => 'unnumbered',
                                    'extra' => {}
                                  },
                                  'node_directions' => {
                                    'next' => {},
                                    'prev' => {},
                                    'up' => {}
                                  },
                                  'normalized' => '_00e3'
                                }
                              },
                              'up' => {}
                            },
                            'normalized' => 'n'
                          }
                        },
                        'up' => {}
                      },
                      'normalized' => '_00e2'
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
  {},
  {}
];
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0];
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0];
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0];
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0];
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'unit_command'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0];
$result_nodes{'transliterated_split_equivalent_nodes'}[0]{'extra'}{'node_directions'}{'next'} = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'transliterated_split_equivalent_nodes'}[1] = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'transliterated_split_equivalent_nodes'}[2] = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'transliterated_split_equivalent_nodes'}[3] = $result_nodes{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};

$result_menus{'transliterated_split_equivalent_nodes'} = [
  {
    'associated_unit' => {
      'directions' => {
        'Forward' => {
          'directions' => {
            'Back' => {},
            'Forward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'Forward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
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
                              'prev' => {
                                'associated_unit' => {},
                                'extra' => {
                                  'menu_directions' => {
                                    'next' => {},
                                    'up' => {}
                                  },
                                  'normalized' => '_00e3'
                                }
                              },
                              'up' => {}
                            },
                            'normalized' => 'n'
                          }
                        },
                        'up' => {}
                      },
                      'normalized' => '_00e2'
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
  {},
  {}
];
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'transliterated_split_equivalent_nodes'}[0];
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'transliterated_split_equivalent_nodes'}[0];
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'transliterated_split_equivalent_nodes'}[0];
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'unit_command'} = $result_menus{'transliterated_split_equivalent_nodes'}[0];
$result_menus{'transliterated_split_equivalent_nodes'}[1] = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'transliterated_split_equivalent_nodes'}[2] = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'transliterated_split_equivalent_nodes'}[3] = $result_menus{'transliterated_split_equivalent_nodes'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};

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


$result_floats{'transliterated_split_equivalent_nodes'} = {};


$result_elements{'transliterated_split_equivalent_nodes'} = [
  {
    'directions' => {
      'Forward' => {
        'directions' => {
          'Back' => {},
          'Forward' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'Forward' => {
                'directions' => {
                  'Back' => {},
                  'FastBack' => {},
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
                                'normalized' => '_00e3'
                              }
                            },
                            'up' => {}
                          },
                          'normalized' => 'n'
                        }
                      },
                      'up' => {}
                    },
                    'normalized' => '_00e2'
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
  {},
  {}
];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'associated_unit'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'unit_command'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'NodeForward'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'NodeNext'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'This'} = $result_elements{'transliterated_split_equivalent_nodes'}[0];
$result_elements{'transliterated_split_equivalent_nodes'}[0]{'unit_command'} = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'transliterated_split_equivalent_nodes'}[1] = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[2] = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'transliterated_split_equivalent_nodes'}[3] = $result_elements{'transliterated_split_equivalent_nodes'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};



$result_directions_text{'transliterated_split_equivalent_nodes'} = 'output unit: @node top
  This: @node top
  Forward: @node @~a
  NodeNext: @node @~a
  NodeForward: @node @~a
output unit: @node @~a
  This: @node @~a
  Forward: @node n
  Back: @node top
  NodeNext: @node n
  NodePrev: @node top
  NodeUp: @node top
  NodeForward: @node n
  NodeBack: @node top
output unit: @node n
  This: @node n
  Forward: @node @^a
  Back: @node @~a
  FastBack: @node @~a
  NodeNext: @node @^a
  NodePrev: @node @~a
  NodeUp: @node top
  NodeForward: @node @^a
  NodeBack: @node @~a
output unit: @node @^a
  This: @node @^a
  Back: @node n
  FastBack: @node @~a
  NodePrev: @node n
  NodeUp: @node top
  NodeBack: @node n
';

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
