use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'footnotestyle_separate_late'} = 'U0 unit[E0]
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
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E6]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
U1 unit[E2]
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
NodeForward: [U2]
NodeBack: [U0]
 *2 @node C1 l4 {chap f}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{chap-f}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap f}
 *3 @chapter C4 l5 {Chapter f}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[next->E6|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter f}
  {empty_line:\\n}
  *paragraph C2
   *4 @footnote C1 l7
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {in fchap 1}
   {\\n}
  {empty_line:\\n}
U2 unit[E5]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
FastBack: [U1]
Prev: [U1]
Up: [U0]
NodePrev: [U1]
NodeUp: [U0]
NodeBack: [U1]
 *5 @node C1 l9 {chap s}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{chap-s}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap s}
 *6 @chapter C5 l10 {Chapter s}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter s}
  {empty_line:\\n}
  *paragraph C2
   *7 @footnote C1 l12
   |EXTRA
   |global_command_number:{2}
    *brace_command_context C1
     *paragraph C1
      {in fchap 2}
   {\\n}
  {empty_line:\\n}
  *@footnotestyle C1 l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{separate}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {separate}
';


$result_texis{'footnotestyle_separate_late'} = '@node Top
@top top

@node chap f
@chapter Chapter f

@footnote{in fchap 1}

@node chap s
@chapter Chapter s

@footnote{in fchap 2}

@footnotestyle separate
';


$result_texts{'footnotestyle_separate_late'} = 'top
***

1 Chapter f
***********



2 Chapter s
***********



';

$result_sectioning{'footnotestyle_separate_late'} = {
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
                    'NodeBack' => {},
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
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'chap-s'
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
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'chap-f'
                }
              },
              'unit_type' => 'unit'
            },
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
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {},
          'section_childs' => [
            {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {},
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
            {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {},
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
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
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'associated_node'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'footnotestyle_separate_late'};

$result_nodes{'footnotestyle_separate_late'} = [
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
                'NodeBack' => {},
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
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'associated_unit' => {},
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'prev' => {
                      'associated_unit' => {},
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'associated_unit' => {},
                          'cmdname' => 'chapter',
                          'extra' => {
                            'section_number' => '1'
                          }
                        },
                        'node_directions' => {
                          'next' => {},
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'chap-f'
                      }
                    },
                    'up' => {}
                  },
                  'normalized' => 'chap-s'
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
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'Forward' => {},
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
      'associated_section' => {
        'associated_unit' => {},
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {}
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'footnotestyle_separate_late'}[0];
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'footnotestyle_separate_late'}[0];
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'footnotestyle_separate_late'}[0];
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'unit_command'} = $result_nodes{'footnotestyle_separate_late'}[0];
$result_nodes{'footnotestyle_separate_late'}[0]{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}[0]{'extra'}{'node_directions'}{'next'} = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'footnotestyle_separate_late'}[1] = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'footnotestyle_separate_late'}[2] = $result_nodes{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};

$result_menus{'footnotestyle_separate_late'} = [
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
                'NodeBack' => {},
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
                  'normalized' => 'chap-s'
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
              'normalized' => 'chap-f'
            }
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
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
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'unit_command'} = $result_menus{'footnotestyle_separate_late'}[0];
$result_menus{'footnotestyle_separate_late'}[1] = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_menus{'footnotestyle_separate_late'}[2] = $result_menus{'footnotestyle_separate_late'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};

$result_errors{'footnotestyle_separate_late'} = [];


$result_floats{'footnotestyle_separate_late'} = {};


$result_elements{'footnotestyle_separate_late'} = [
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
              'NodeBack' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'Prev' => {},
              'This' => {},
              'Up' => {}
            },
            'unit_command' => {
              'associated_unit' => {},
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'chap-s'
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
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'chap-f'
          }
        },
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'Top'
      }
    },
    'unit_type' => 'unit'
  },
  {},
  {}
];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'Forward'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'NodeForward'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'NodeNext'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[1] = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[2] = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};



$result_directions_text{'footnotestyle_separate_late'} = 'output unit: @node Top
  This: @node Top
  Forward: @node chap f
  FastForward: @node chap f
  NodeNext: @node chap f
  NodeForward: @node chap f
output unit: @node chap f
  This: @node chap f
  Forward: @node chap s
  Back: @node Top
  FastForward: @node chap s
  FastBack: @node Top
  Next: @node chap s
  Up: @node Top
  NodeNext: @node chap s
  NodePrev: @node Top
  NodeUp: @node Top
  NodeForward: @node chap s
  NodeBack: @node Top
output unit: @node chap s
  This: @node chap s
  Back: @node chap f
  FastBack: @node chap f
  Prev: @node chap f
  Up: @node Top
  NodePrev: @node chap f
  NodeUp: @node Top
  NodeBack: @node chap f
';

1;
