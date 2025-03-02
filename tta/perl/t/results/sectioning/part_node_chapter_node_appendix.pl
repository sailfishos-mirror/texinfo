use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'part_node_chapter_node_appendix'} = 'U0 unit[E1]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
Next: [U1]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_directions:D[next->E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3|E7]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *2 @menu C4 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter node}
    |normalized:{chapter-node}
     {chapter node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{appendix node}
    |normalized:{appendix-node}
     {appendix node}
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
U1 unit[E5]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
FastForward: [U2]
FastBack: [U0]
NodeNext: [U2]
NodePrev: [U0]
NodeUp: [U0]
NodeForward: [U2]
NodeBack: [U0]
 *3 @part C2 l9
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E5]
 |part_following_node:[E4]
 |section_childs:EC[E5]
 |section_directions:D[next->E7|prev->E1]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part 1}
  {empty_line:\\n}
 *4 @node C1 l11
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |menu_directions:D[next->E6|up->E0]
 |node_directions:D[next->E6|prev->E0|up->E0]
 |node_preceding_part:[E3]
 |normalized:{chapter-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter node}
 *5 @chapter C2 l12
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |associated_part:[E3]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E7|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
U2 unit[E7]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
FastBack: [U1]
Prev: [U1]
NodePrev: [U1]
NodeUp: [U0]
NodeBack: [U1]
 *6 @node C1 l14
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |menu_directions:D[prev->E4|up->E0]
 |node_directions:D[prev->E4|up->E0]
 |normalized:{appendix-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendix node}
 *7 @appendix C1 l15
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E6]
 |section_directions:D[prev->E3]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E5|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Appendix}
';


$result_texis{'part_node_chapter_node_appendix'} = '@node Top
@top top

@menu
* chapter node::
* appendix node::
@end menu

@part Part 1

@node chapter node
@chapter chapter

@node appendix node
@appendix Appendix
';


$result_texts{'part_node_chapter_node_appendix'} = 'top
***

* chapter node::
* appendix node::

Part 1
******

1 chapter
*********

Appendix A Appendix
*******************
';

$result_sectioning{'part_node_chapter_node_appendix'} = {
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
                    'This' => {}
                  },
                  'tree_unit_directions' => {
                    'prev' => {}
                  },
                  'unit_command' => {
                    'associated_unit' => {},
                    'cmdname' => 'appendix',
                    'extra' => {
                      'associated_node' => {
                        'associated_unit' => {},
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'appendix-node'
                        }
                      },
                      'section_directions' => {
                        'prev' => {
                          'associated_unit' => {},
                          'cmdname' => 'part',
                          'extra' => {
                            'part_associated_section' => {
                              'associated_unit' => {},
                              'cmdname' => 'chapter',
                              'extra' => {
                                'associated_node' => {
                                  'associated_unit' => {},
                                  'cmdname' => 'node',
                                  'extra' => {
                                    'normalized' => 'chapter-node'
                                  }
                                },
                                'associated_part' => {},
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
                            'part_following_node' => {},
                            'section_childs' => [
                              {}
                            ],
                            'section_directions' => {
                              'prev' => {}
                            },
                            'section_level' => 0
                          }
                        }
                      },
                      'section_level' => 1,
                      'section_number' => 'A',
                      'toplevel_directions' => {
                        'prev' => {},
                        'up' => {}
                      }
                    }
                  },
                  'unit_type' => 'unit'
                },
                'Forward' => {},
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
              'unit_command' => {},
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'Next' => {},
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
          'section_directions' => {},
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {},
      {}
    ],
    'section_level' => -1
  }
};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'associated_unit'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_associated_section'}{'associated_unit'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_associated_section'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_associated_section'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_following_node'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_associated_section'}{'extra'}{'associated_node'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_childs'}[0] = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_associated_section'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_associated_section'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'part_associated_section'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'part_node_chapter_node_appendix'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[1] = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[2] = $result_sectioning{'part_node_chapter_node_appendix'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};

$result_nodes{'part_node_chapter_node_appendix'} = [
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
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'appendix',
                'extra' => {
                  'section_number' => 'A'
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {},
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
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'chapter',
            'extra' => {
              'associated_part' => {
                'associated_unit' => {},
                'cmdname' => 'part',
                'extra' => {}
              },
              'section_number' => '1'
            }
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
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
              'next' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {},
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'appendix-node'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'node_preceding_part' => {},
            'normalized' => 'chapter-node'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'associated_unit'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'associated_section'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'unit_command'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'part_node_chapter_node_appendix'}[0];
$result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'part_node_chapter_node_appendix'}[0];
$result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'part_node_chapter_node_appendix'}[0];
$result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_preceding_part'} = $result_nodes{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'};
$result_nodes{'part_node_chapter_node_appendix'}[1] = $result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'part_node_chapter_node_appendix'}[2] = $result_nodes{'part_node_chapter_node_appendix'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'part_node_chapter_node_appendix'} = [
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
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'extra' => {
                  'section_number' => 'A'
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {},
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
          'unit_command' => {
            'associated_unit' => {},
            'extra' => {
              'associated_part' => {
                'associated_unit' => {},
                'extra' => {}
              },
              'section_number' => '1'
            }
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
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
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'appendix-node'
          }
        },
        'up' => {}
      },
      'normalized' => 'chapter-node'
    }
  },
  {}
];
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'associated_unit'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_node_appendix'}[1]{'associated_unit'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[1]{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'part_node_chapter_node_appendix'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_node_appendix'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'part_node_chapter_node_appendix'}[1];
$result_menus{'part_node_chapter_node_appendix'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'part_node_chapter_node_appendix'}[0];
$result_menus{'part_node_chapter_node_appendix'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'part_node_chapter_node_appendix'}[0];
$result_menus{'part_node_chapter_node_appendix'}[2] = $result_menus{'part_node_chapter_node_appendix'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'part_node_chapter_node_appendix'} = [];


$result_floats{'part_node_chapter_node_appendix'} = {};


$result_elements{'part_node_chapter_node_appendix'} = [
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
              'This' => {}
            },
            'unit_command' => {
              'associated_unit' => {},
              'cmdname' => 'appendix',
              'extra' => {
                'section_number' => 'A'
              }
            },
            'unit_type' => 'unit'
          },
          'Forward' => {},
          'NodeBack' => {},
          'NodeForward' => {},
          'NodeNext' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {}
        },
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'chapter',
          'extra' => {
            'associated_part' => {
              'associated_unit' => {},
              'cmdname' => 'part',
              'extra' => {}
            },
            'section_number' => '1'
          }
        },
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'Next' => {},
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
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'part_node_chapter_node_appendix'}[0];
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'part_node_chapter_node_appendix'}[0];
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'part_node_chapter_node_appendix'}[0];
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'part_node_chapter_node_appendix'}[0];
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'part_node_chapter_node_appendix'}[0];
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'part_node_chapter_node_appendix'}[0];
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'associated_unit'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'Forward'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'Next'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'NodeForward'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'NodeNext'} = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'This'} = $result_elements{'part_node_chapter_node_appendix'}[0];
$result_elements{'part_node_chapter_node_appendix'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'part_node_chapter_node_appendix'}[0];
$result_elements{'part_node_chapter_node_appendix'}[1] = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_node_appendix'}[2] = $result_elements{'part_node_chapter_node_appendix'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};



$result_directions_text{'part_node_chapter_node_appendix'} = 'output unit: @top top
  This: @top top
  Forward: @chapter chapter
  FastForward: @chapter chapter
  Next: @chapter chapter
  NodeNext: @chapter chapter
  NodeForward: @chapter chapter
output unit: @chapter chapter
  This: @chapter chapter
  Forward: @appendix Appendix
  Back: @top top
  FastForward: @appendix Appendix
  FastBack: @top top
  NodeNext: @appendix Appendix
  NodePrev: @top top
  NodeUp: @top top
  NodeForward: @appendix Appendix
  NodeBack: @top top
output unit: @appendix Appendix
  This: @appendix Appendix
  Back: @chapter chapter
  FastBack: @chapter chapter
  Prev: @chapter chapter
  NodePrev: @chapter chapter
  NodeUp: @top top
  NodeBack: @chapter chapter
';


$result_converted{'info'}->{'part_node_chapter_node_appendix'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter node,  Up: (dir)

top
***

* Menu:

* chapter node::
* appendix node::


File: ,  Node: chapter node,  Next: appendix node,  Prev: Top,  Up: Top

1 chapter
*********


File: ,  Node: appendix node,  Prev: chapter node,  Up: Top

Appendix A Appendix
*******************


Tag Table:
Node: Top27
Node: chapter node136
Node: appendix node232

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'part_node_chapter_node_appendix'} = '<!DOCTYPE html>
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
Next: <a href="#chapter-node" accesskey="n" rel="next">chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<hr>
</div>
<div class="part-level-extent" id="Part-1">
<div class="nav-panel">
<p>
Next: <a href="#appendix-node" accesskey="n" rel="next">Appendix</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h1 class="part"><span>Part 1<a class="copiable-link" href="#Part-1"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#chapter-node" accesskey="1">chapter</a></li>
</ul>
<div class="chapter-level-extent" id="chapter-node">
<h2 class="chapter" id="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>

<hr>
</div>
<div class="appendix-level-extent" id="appendix-node">
<div class="nav-panel">
<p>
Previous: <a href="#chapter-node" accesskey="p" rel="prev">chapter</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="appendix" id="Appendix"><span>Appendix A Appendix<a class="copiable-link" href="#Appendix"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'part_node_chapter_node_appendix'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter node</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>appendix node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<part spaces=" "><sectiontitle>Part 1</sectiontitle>

<node identifier="chapter-node" spaces=" "><nodename>chapter node</nodename><nodenext automatic="on">appendix node</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

</chapter>
</part>
<node identifier="appendix-node" spaces=" "><nodename>appendix node</nodename><nodeprev automatic="on">chapter node</nodeprev><nodeup automatic="on">Top</nodeup></node>
<appendix spaces=" "><sectiontitle>Appendix</sectiontitle>
</appendix>
';

1;
