use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'unnumbered_top_without_node_sections'} = 'U0 unit[E1]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
Next: [U1]
NodeUp: (dir)

 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[up->MISSING: (line_arg)[C3]]
 |normalized:{a-node}
  *arguments_line C4
   *line_arg C1
    {a node}
   *line_arg
   *line_arg
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *1 @unnumbered C4 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_directions:D[next->E2]
 |section_level:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E2|E4]
  ||section_level:{0}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  {empty_line:\\n}
  *paragraph C1
   {in unnumbered\\n}
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
Prev: [U0]
 *2 @top C3 l6
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E4|prev->E1]
 |section_level:{1}
 |toplevel_directions:D[next->E4|prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  *paragraph C1
   {Top section\\n}
  {empty_line:\\n}
U2 unit[E4]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
FastBack: [U1]
Prev: [U1]
NodeUp: (dir)

 *3 @node C1 l9
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |node_directions:D[up->MISSING: (line_arg)[C3]]
 |normalized:{second}
  *arguments_line C4
   *line_arg C1
    {second}
   *line_arg
   *line_arg
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *4 @chapter C3 l10
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[prev->E2]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E2|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C1
   {Text of chapter\\n}
';


$result_texis{'unnumbered_top_without_node_sections'} = '@node a node,,,(dir)
@unnumbered unnumbered

in unnumbered

@top top section
Top section

@node second,,,(dir)
@chapter Chapter

Text of chapter
';


$result_texts{'unnumbered_top_without_node_sections'} = 'unnumbered
**********

in unnumbered

top section
***********
Top section

1 Chapter
*********

Text of chapter
';

$result_sectioning{'unnumbered_top_without_node_sections'} = {
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
                    'NodeUp' => {
                      'unit_command' => {
                        'extra' => {},
                        'type' => 'line_arg'
                      },
                      'unit_type' => 'external_node_unit'
                    },
                    'Prev' => {},
                    'This' => {}
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
                          'normalized' => 'second'
                        }
                      },
                      'section_directions' => {
                        'prev' => {
                          'associated_unit' => {},
                          'cmdname' => 'top',
                          'extra' => {
                            'section_directions' => {
                              'prev' => {}
                            },
                            'section_level' => 1,
                            'toplevel_directions' => {
                              'prev' => {}
                            }
                          }
                        }
                      },
                      'section_level' => 1,
                      'section_number' => '1',
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
                'Prev' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {},
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'Next' => {},
            'NodeUp' => {
              'unit_command' => {
                'extra' => {},
                'type' => 'line_arg'
              },
              'unit_type' => 'external_node_unit'
            },
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'unnumbered',
        'extra' => {
          'associated_node' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'a-node'
            }
          },
          'section_directions' => {},
          'section_level' => 1,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {},
      {}
    ],
    'section_level' => 0
  }
};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'associated_unit'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'unnumbered_top_without_node_sections'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[1] = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[2] = $result_sectioning{'unnumbered_top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};

$result_nodes{'unnumbered_top_without_node_sections'} = [
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
                'NodeUp' => {
                  'unit_command' => {
                    'extra' => {
                      'manual_content' => {}
                    },
                    'type' => 'line_arg'
                  },
                  'unit_type' => 'external_node_unit'
                },
                'Prev' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
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
            'Next' => {},
            'Prev' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'top',
            'extra' => {}
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
        'NodeUp' => {
          'unit_command' => {
            'extra' => {
              'manual_content' => {}
            },
            'type' => 'line_arg'
          },
          'unit_type' => 'external_node_unit'
        },
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'unit_command' => {
        'associated_unit' => {},
        'cmdname' => 'unnumbered',
        'extra' => {}
      },
      'unit_type' => 'unit'
    },
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {},
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'a-node'
    }
  },
  {
    'associated_unit' => {},
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {},
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'second'
    }
  }
];
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'extra'}{'associated_section'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'unit_command'};
$result_nodes{'unnumbered_top_without_node_sections'}[0]{'extra'}{'node_directions'}{'up'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'NodeUp'}{'unit_command'};
$result_nodes{'unnumbered_top_without_node_sections'}[1]{'associated_unit'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'unnumbered_top_without_node_sections'}[1]{'extra'}{'associated_section'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'unnumbered_top_without_node_sections'}[1]{'extra'}{'node_directions'}{'up'} = $result_nodes{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'}{'unit_command'};

$result_menus{'unnumbered_top_without_node_sections'} = [
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
                'NodeUp' => {
                  'unit_command' => {
                    'extra' => {
                      'manual_content' => {}
                    },
                    'type' => 'line_arg'
                  },
                  'unit_type' => 'external_node_unit'
                },
                'Prev' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
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
            'Next' => {},
            'Prev' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'extra' => {}
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
        'NodeUp' => {
          'unit_command' => {
            'extra' => {
              'manual_content' => {}
            },
            'type' => 'line_arg'
          },
          'unit_type' => 'external_node_unit'
        },
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
      'normalized' => 'a-node'
    }
  },
  {
    'associated_unit' => {},
    'extra' => {
      'normalized' => 'second'
    }
  }
];
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'};
$result_menus{'unnumbered_top_without_node_sections'}[1]{'associated_unit'} = $result_menus{'unnumbered_top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};

$result_errors{'unnumbered_top_without_node_sections'} = [
  {
    'error_line' => 'warning: lowering the section level of @top appearing after a lower element
',
    'line_nr' => 6,
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `a node\' not in menu
',
    'line_nr' => 1,
    'text' => 'node `a node\' not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `second\' unreferenced
',
    'line_nr' => 9,
    'text' => 'node `second\' unreferenced',
    'type' => 'warning'
  }
];


$result_floats{'unnumbered_top_without_node_sections'} = {};


$result_elements{'unnumbered_top_without_node_sections'} = [
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
              'NodeUp' => {
                'unit_command' => {
                  'extra' => {
                    'manual_content' => {}
                  },
                  'type' => 'line_arg'
                },
                'unit_type' => 'external_node_unit'
              },
              'Prev' => {},
              'This' => {}
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
          'Next' => {},
          'Prev' => {},
          'This' => {}
        },
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'top',
          'extra' => {}
        },
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'Next' => {},
      'NodeUp' => {
        'unit_command' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        },
        'unit_type' => 'external_node_unit'
      },
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'unnumbered',
      'extra' => {}
    },
    'unit_type' => 'unit'
  },
  {},
  {}
];
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'unnumbered_top_without_node_sections'}[0];
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'unnumbered_top_without_node_sections'}[0];
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'unnumbered_top_without_node_sections'}[0];
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'Forward'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'Next'} = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'This'} = $result_elements{'unnumbered_top_without_node_sections'}[0];
$result_elements{'unnumbered_top_without_node_sections'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'unnumbered_top_without_node_sections'}[0];
$result_elements{'unnumbered_top_without_node_sections'}[1] = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'unnumbered_top_without_node_sections'}[2] = $result_elements{'unnumbered_top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};



$result_directions_text{'unnumbered_top_without_node_sections'} = 'output unit: @unnumbered unnumbered
  This: @unnumbered unnumbered
  Forward: @top top section
  FastForward: @top top section
  Next: @top top section
  NodeUp: _EXT_NODE: (dir)
output unit: @top top section
  This: @top top section
  Forward: @chapter Chapter
  Back: @unnumbered unnumbered
  FastForward: @chapter Chapter
  FastBack: @unnumbered unnumbered
  Next: @chapter Chapter
  Prev: @unnumbered unnumbered
output unit: @chapter Chapter
  This: @chapter Chapter
  Back: @top top section
  FastBack: @top top section
  Prev: @top top section
  NodeUp: _EXT_NODE: (dir)
';


$result_converted{'info'}->{'unnumbered_top_without_node_sections'} = 'This is , produced from .


File: ,  Node: a node,  Up: (dir)

unnumbered
**********

in unnumbered

top section
***********

Top section


File: ,  Node: second,  Up: (dir)

1 Chapter
*********

Text of chapter


Tag Table:
Node: a node27
Node: second140

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'unnumbered_top_without_node_sections'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'unnumbered_top_without_node_sections'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top section</title>

<meta name="description" content="top section">
<meta name="keywords" content="top section">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#a-node" rel="start" title="a node">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="unnumbered-level-extent" id="a-node">
<div class="nav-panel">
<p>
Up: <a href="dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; </p>
</div>
<h2 class="unnumbered" id="unnumbered"><span>unnumbered<a class="copiable-link" href="#unnumbered"> &para;</a></span></h2>

<p>in unnumbered
</p>
</div>
<div class="unnumbered-level-extent" id="top-section">
<h2 class="unnumbered top-level-set-unnumbered"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h2>
<p>Top section
</p>
<hr>
</div>
<div class="chapter-level-extent" id="second">
<div class="nav-panel">
<p>
Up: <a href="dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>Text of chapter
</p></div>



</body>
</html>
';


$result_converted{'latex_text'}->{'unnumbered_top_without_node_sections'} = '\\begin{document}
\\chapter*{{unnumbered}}
\\label{anchor:a-node}%

in unnumbered

\\part*{{top section}}
Top section

\\chapter{{Chapter}}
\\label{anchor:second}%

Text of chapter
';

1;
