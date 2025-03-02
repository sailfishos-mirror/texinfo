use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'chapter_sections'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
Next: [U1]
 *before_node_section
 *0 @unnumbered C2 l1 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E1]
 |section_level:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E1|E3|E7]
  ||section_level:{0}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  {empty_line:\\n}
U1 unit[E1]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
FastForward: [U3]
FastBack: [U0]
Next: [U3]
Prev: [U0]
 *1 @chapter C2 l3 {First chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_directions:D[next->E3|prev->E0]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E3|prev->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {First chapter}
  {empty_line:\\n}
U2 unit[E2]
unit_directions:D[next->[U3]|prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Forward: [U3]
Back: [U1]
FastForward: [U3]
FastBack: [U1]
Up: [U1]
 *2 @section C2 l5 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E1]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second}
  {empty_line:\\n}
U3 unit[E3]
unit_directions:D[next->[U4]|prev->[U2]]
UNIT_DIRECTIONS
This: [U3]
Forward: [U4]
Back: [U2]
FastForward: [U7]
FastBack: [U1]
Next: [U7]
Prev: [U1]
 *3 @chapter C2 l7 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
 |section_directions:D[next->E7|prev->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E7|prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
U4 unit[E4]
unit_directions:D[next->[U5]|prev->[U3]]
UNIT_DIRECTIONS
This: [U4]
Forward: [U5]
Back: [U3]
FastForward: [U7]
FastBack: [U3]
Up: [U3]
 *4 @section C2 l9 {Section of chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E5|E6]
 |section_directions:D[up->E3]
 |section_level:{2}
 |section_number:{2.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section of chapter}
  {empty_line:\\n}
U5 unit[E5]
unit_directions:D[next->[U6]|prev->[U4]]
UNIT_DIRECTIONS
This: [U5]
Forward: [U6]
Back: [U4]
FastForward: [U7]
FastBack: [U3]
Next: [U6]
Up: [U4]
 *5 @subsection C2 l11 {subsection 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E6|up->E4]
 |section_level:{3}
 |section_number:{2.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection 1}
  {empty_line:\\n}
U6 unit[E6]
unit_directions:D[next->[U7]|prev->[U5]]
UNIT_DIRECTIONS
This: [U6]
Forward: [U7]
Back: [U5]
FastForward: [U7]
FastBack: [U3]
Prev: [U5]
Up: [U4]
 *6 @subsection C2 l13 {subsection 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E5|up->E4]
 |section_level:{3}
 |section_number:{2.1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection 2}
  {empty_line:\\n}
U7 unit[E7]
unit_directions:D[prev->[U6]]
UNIT_DIRECTIONS
This: [U7]
Back: [U6]
FastBack: [U3]
Prev: [U3]
 *7 @chapter C1 l15 {Chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E3]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter 2}
';


$result_texis{'chapter_sections'} = '@unnumbered unnumbered

@chapter First chapter

@section second

@chapter Chapter

@section Section of chapter

@subsection subsection 1

@subsection subsection 2

@chapter Chapter 2
';


$result_texts{'chapter_sections'} = 'unnumbered
**********

1 First chapter
***************

1.1 second
==========

2 Chapter
*********

2.1 Section of chapter
======================

2.1.1 subsection 1
------------------

2.1.2 subsection 2
------------------

3 Chapter 2
***********
';

$result_sectioning{'chapter_sections'} = {
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
                    'Back' => {
                      'directions' => {
                        'Back' => {},
                        'FastBack' => {},
                        'FastForward' => {},
                        'Forward' => {},
                        'This' => {},
                        'Up' => {}
                      },
                      'tree_unit_directions' => {
                        'prev' => {}
                      },
                      'unit_command' => {
                        'associated_unit' => {},
                        'cmdname' => 'section',
                        'extra' => {
                          'section_directions' => {
                            'up' => {
                              'associated_unit' => {},
                              'cmdname' => 'chapter',
                              'extra' => {
                                'section_childs' => [
                                  {}
                                ],
                                'section_directions' => {
                                  'prev' => {}
                                },
                                'section_level' => 1,
                                'section_number' => '1',
                                'toplevel_directions' => {
                                  'prev' => {}
                                }
                              }
                            }
                          },
                          'section_level' => 2,
                          'section_number' => '1.1'
                        }
                      },
                      'unit_type' => 'unit'
                    },
                    'FastBack' => {},
                    'FastForward' => {
                      'directions' => {
                        'Back' => {
                          'directions' => {
                            'Back' => {
                              'directions' => {
                                'Back' => {
                                  'directions' => {
                                    'Back' => {},
                                    'FastBack' => {},
                                    'FastForward' => {},
                                    'Forward' => {},
                                    'This' => {},
                                    'Up' => {}
                                  },
                                  'tree_unit_directions' => {
                                    'prev' => {}
                                  },
                                  'unit_command' => {
                                    'associated_unit' => {},
                                    'cmdname' => 'section',
                                    'extra' => {
                                      'section_childs' => [
                                        {
                                          'associated_unit' => {},
                                          'cmdname' => 'subsection',
                                          'extra' => {
                                            'section_directions' => {
                                              'up' => {}
                                            },
                                            'section_level' => 3,
                                            'section_number' => '2.1.1'
                                          }
                                        },
                                        {
                                          'associated_unit' => {},
                                          'cmdname' => 'subsection',
                                          'extra' => {
                                            'section_directions' => {
                                              'prev' => {},
                                              'up' => {}
                                            },
                                            'section_level' => 3,
                                            'section_number' => '2.1.2'
                                          }
                                        }
                                      ],
                                      'section_directions' => {
                                        'up' => {
                                          'associated_unit' => {},
                                          'cmdname' => 'chapter',
                                          'extra' => {
                                            'section_childs' => [
                                              {}
                                            ],
                                            'section_directions' => {
                                              'prev' => {}
                                            },
                                            'section_level' => 1,
                                            'section_number' => '2',
                                            'toplevel_directions' => {
                                              'prev' => {}
                                            }
                                          }
                                        }
                                      },
                                      'section_level' => 2,
                                      'section_number' => '2.1'
                                    }
                                  },
                                  'unit_type' => 'unit'
                                },
                                'FastBack' => {},
                                'FastForward' => {},
                                'Forward' => {},
                                'Next' => {},
                                'This' => {},
                                'Up' => {}
                              },
                              'tree_unit_directions' => {
                                'prev' => {}
                              },
                              'unit_command' => {},
                              'unit_type' => 'unit'
                            },
                            'FastBack' => {},
                            'FastForward' => {},
                            'Forward' => {},
                            'Prev' => {},
                            'This' => {},
                            'Up' => {}
                          },
                          'tree_unit_directions' => {
                            'prev' => {}
                          },
                          'unit_command' => {},
                          'unit_type' => 'unit'
                        },
                        'FastBack' => {},
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
                          'section_directions' => {
                            'prev' => {}
                          },
                          'section_level' => 1,
                          'section_number' => '3',
                          'toplevel_directions' => {
                            'prev' => {}
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
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'unnumbered',
        'extra' => {
          'section_directions' => {},
          'section_level' => 1,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {},
      {},
      {}
    ],
    'section_level' => 0
  }
};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'associated_unit'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[0] = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0]{'associated_unit'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1]{'associated_unit'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'associated_unit'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_childs'}[0] = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_childs'}[1];
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'chapter_sections'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[1] = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[2] = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'extra'}{'section_directions'}{'up'};
$result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[3] = $result_sectioning{'chapter_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};

$result_errors{'chapter_sections'} = [];


$result_floats{'chapter_sections'} = {};


$result_elements{'chapter_sections'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'FastForward' => {
            'directions' => {
              'Back' => {
                'directions' => {
                  'Back' => {},
                  'FastBack' => {},
                  'FastForward' => {},
                  'Forward' => {},
                  'This' => {},
                  'Up' => {}
                },
                'unit_command' => {
                  'associated_unit' => {},
                  'cmdname' => 'section',
                  'extra' => {
                    'section_number' => '1.1'
                  }
                },
                'unit_type' => 'unit'
              },
              'FastBack' => {},
              'FastForward' => {
                'directions' => {
                  'Back' => {
                    'directions' => {
                      'Back' => {
                        'directions' => {
                          'Back' => {
                            'directions' => {
                              'Back' => {},
                              'FastBack' => {},
                              'FastForward' => {},
                              'Forward' => {},
                              'This' => {},
                              'Up' => {}
                            },
                            'unit_command' => {
                              'associated_unit' => {},
                              'cmdname' => 'section',
                              'extra' => {
                                'section_number' => '2.1'
                              }
                            },
                            'unit_type' => 'unit'
                          },
                          'FastBack' => {},
                          'FastForward' => {},
                          'Forward' => {},
                          'Next' => {},
                          'This' => {},
                          'Up' => {}
                        },
                        'unit_command' => {
                          'associated_unit' => {},
                          'cmdname' => 'subsection',
                          'extra' => {
                            'section_number' => '2.1.1'
                          }
                        },
                        'unit_type' => 'unit'
                      },
                      'FastBack' => {},
                      'FastForward' => {},
                      'Forward' => {},
                      'Prev' => {},
                      'This' => {},
                      'Up' => {}
                    },
                    'unit_command' => {
                      'associated_unit' => {},
                      'cmdname' => 'subsection',
                      'extra' => {
                        'section_number' => '2.1.2'
                      }
                    },
                    'unit_type' => 'unit'
                  },
                  'FastBack' => {},
                  'Prev' => {},
                  'This' => {}
                },
                'unit_command' => {
                  'associated_unit' => {},
                  'cmdname' => 'chapter',
                  'extra' => {
                    'section_number' => '3'
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
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '2'
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
          'cmdname' => 'chapter',
          'extra' => {
            'section_number' => '1'
          }
        },
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'Next' => {},
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
  {},
  {},
  {},
  {},
  {},
  {}
];
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'chapter_sections'}[0];
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0];
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Next'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Prev'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Up'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'chapter_sections'}[0];
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'Forward'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'Next'} = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[0]{'directions'}{'This'} = $result_elements{'chapter_sections'}[0];
$result_elements{'chapter_sections'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'chapter_sections'}[0];
$result_elements{'chapter_sections'}[1] = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[2] = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[3] = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'chapter_sections'}[4] = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[5] = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[6] = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'};
$result_elements{'chapter_sections'}[7] = $result_elements{'chapter_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};



$result_directions_text{'chapter_sections'} = 'output unit: @unnumbered unnumbered
  This: @unnumbered unnumbered
  Forward: @chapter First chapter
  FastForward: @chapter First chapter
  Next: @chapter First chapter
output unit: @chapter First chapter
  This: @chapter First chapter
  Forward: @section second
  Back: @unnumbered unnumbered
  FastForward: @chapter Chapter
  FastBack: @unnumbered unnumbered
  Next: @chapter Chapter
  Prev: @unnumbered unnumbered
output unit: @section second
  This: @section second
  Forward: @chapter Chapter
  Back: @chapter First chapter
  FastForward: @chapter Chapter
  FastBack: @chapter First chapter
  Up: @chapter First chapter
output unit: @chapter Chapter
  This: @chapter Chapter
  Forward: @section Section of chapter
  Back: @section second
  FastForward: @chapter Chapter 2
  FastBack: @chapter First chapter
  Next: @chapter Chapter 2
  Prev: @chapter First chapter
output unit: @section Section of chapter
  This: @section Section of chapter
  Forward: @subsection subsection 1
  Back: @chapter Chapter
  FastForward: @chapter Chapter 2
  FastBack: @chapter Chapter
  Up: @chapter Chapter
output unit: @subsection subsection 1
  This: @subsection subsection 1
  Forward: @subsection subsection 2
  Back: @section Section of chapter
  FastForward: @chapter Chapter 2
  FastBack: @chapter Chapter
  Next: @subsection subsection 2
  Up: @section Section of chapter
output unit: @subsection subsection 2
  This: @subsection subsection 2
  Forward: @chapter Chapter 2
  Back: @subsection subsection 1
  FastForward: @chapter Chapter 2
  FastBack: @chapter Chapter
  Prev: @subsection subsection 1
  Up: @section Section of chapter
output unit: @chapter Chapter 2
  This: @chapter Chapter 2
  Back: @subsection subsection 2
  FastBack: @chapter Chapter
  Prev: @chapter Chapter
';


$result_converted{'xml'}->{'chapter_sections'} = '<unnumbered spaces=" "><sectiontitle>unnumbered</sectiontitle>

</unnumbered>
<chapter spaces=" "><sectiontitle>First chapter</sectiontitle>

<section spaces=" "><sectiontitle>second</sectiontitle>

</section>
</chapter>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<section spaces=" "><sectiontitle>Section of chapter</sectiontitle>

<subsection spaces=" "><sectiontitle>subsection 1</sectiontitle>

</subsection>
<subsection spaces=" "><sectiontitle>subsection 2</sectiontitle>

</subsection>
</section>
</chapter>
<chapter spaces=" "><sectiontitle>Chapter 2</sectiontitle>
</chapter>
';

1;
