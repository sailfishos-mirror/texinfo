use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'part_node_chapter_after_top'} = 'U0 unit[E1]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
Next: [U1]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section
 *0 @node C1 l1 {Top}
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
 *1 @top C4 l2 {top}
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
  ||section_childs:EC[E1|E3]
  ||section_level:{-1}
 |toplevel_directions:D[next->E6]
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
    |node_content:{a node after part}
    |normalized:{a-node-after-part}
     {a node after part}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter}
    |normalized:{chapter}
     {chapter}
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
U1 unit[E6]
unit_directions:D[prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Back: [U0]
FastBack: [U0]
NodeNext: [U1]
NodeUp: [U0]
NodeForward: [U1]
NodeBack: [U0]
 *3 @part C2 l9 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E6]
 |part_following_node:[E5]
 |section_childs:EC[E6]
 |section_directions:D[prev->E1]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *4 @node C3 l11 {a node after part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |node_preceding_part:[E3]
 |normalized:{a-node-after-part}
  *arguments_line C4
   *line_arg C1
    {a node after part}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{chapter}
   |normalized:{chapter}
    {chapter}
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
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  *paragraph C1
   {After a node after part\\n}
  {empty_line:\\n}
 *5 @node C1 l14 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |menu_directions:D[prev->E4|up->E0]
 |node_directions:D[next->E4|up->E0]
 |node_preceding_part:[E3]
 |normalized:{chapter}
  *arguments_line C4
   *line_arg C1
    {chapter}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{a node after part}
   |normalized:{a-node-after-part}
    {a node after part}
   *line_arg
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
 *6 @chapter C1 l15 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |associated_part:[E3]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    {chapter}
';


$result_texis{'part_node_chapter_after_top'} = '@node Top
@top top

@menu
* a node after part::
* chapter::
@end menu

@part part

@node a node after part, chapter, Top, Top
After a node after part

@node chapter, a node after part,, Top
@chapter chapter 
';


$result_texts{'part_node_chapter_after_top'} = 'top
***

* a node after part::
* chapter::

part
****

After a node after part

1 chapter
*********
';

$result_sectioning{'part_node_chapter_after_top'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodeUp' => {},
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
                      'normalized' => 'chapter'
                    }
                  },
                  'associated_part' => {
                    'associated_unit' => {},
                    'cmdname' => 'part',
                    'extra' => {
                      'part_associated_section' => {},
                      'part_following_node' => {},
                      'section_childs' => [
                        {}
                      ],
                      'section_directions' => {
                        'prev' => {}
                      },
                      'section_level' => 0
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
      {}
    ],
    'section_level' => -1
  }
};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'associated_unit'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'extra'}{'part_associated_section'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'extra'}{'part_following_node'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_node'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'extra'}{'section_childs'}[0] = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'part_node_chapter_after_top'};
$result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[1] = $result_sectioning{'part_node_chapter_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'};

$result_nodes{'part_node_chapter_after_top'} = [
  {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodeUp' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
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
            'node_directions' => {
              'next' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {},
                  'node_directions' => {
                    'next' => {},
                    'up' => {}
                  },
                  'node_preceding_part' => {},
                  'normalized' => 'chapter'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'node_preceding_part' => {},
            'normalized' => 'a-node-after-part'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'associated_unit'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'associated_section'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'unit_command'};
$result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'part_node_chapter_after_top'}[0];
$result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_preceding_part'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'};
$result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'part_node_chapter_after_top'}[0];
$result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'part_node_chapter_after_top'}[0];
$result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_preceding_part'} = $result_nodes{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'};
$result_nodes{'part_node_chapter_after_top'}[1] = $result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'part_node_chapter_after_top'}[2] = $result_nodes{'part_node_chapter_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'part_node_chapter_after_top'} = [
  {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodeUp' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
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
            'normalized' => 'chapter'
          }
        },
        'up' => {}
      },
      'normalized' => 'a-node-after-part'
    }
  },
  {}
];
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'associated_unit'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}[1]{'associated_unit'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[1]{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'part_node_chapter_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'part_node_chapter_after_top'}[1];
$result_menus{'part_node_chapter_after_top'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'part_node_chapter_after_top'}[0];
$result_menus{'part_node_chapter_after_top'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'part_node_chapter_after_top'}[0];
$result_menus{'part_node_chapter_after_top'}[2] = $result_menus{'part_node_chapter_after_top'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'part_node_chapter_after_top'} = [];


$result_floats{'part_node_chapter_after_top'} = {};


$result_elements{'part_node_chapter_after_top'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'NodeBack' => {},
          'NodeForward' => {},
          'NodeNext' => {},
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
  {}
];
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'associated_unit'} = $result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'Forward'} = $result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'Next'} = $result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'NodeForward'} = $result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'NodeNext'} = $result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'This'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[1] = $result_elements{'part_node_chapter_after_top'}[0]{'directions'}{'FastForward'};



$result_directions_text{'part_node_chapter_after_top'} = 'output unit: @top top
  This: @top top
  Forward: @chapter chapter
  FastForward: @chapter chapter
  Next: @chapter chapter
  NodeNext: @chapter chapter
  NodeForward: @chapter chapter
output unit: @chapter chapter
  This: @chapter chapter
  Back: @top top
  FastBack: @top top
  NodeNext: @chapter chapter
  NodeUp: @top top
  NodeForward: @chapter chapter
  NodeBack: @top top
';


$result_converted{'info'}->{'part_node_chapter_after_top'} = 'This is , produced from .


File: ,  Node: Top,  Next: a node after part,  Up: (dir)

top
***

* Menu:

* a node after part::
* chapter::


File: ,  Node: a node after part,  Next: chapter,  Prev: Top,  Up: Top

After a node after part


File: ,  Node: chapter,  Next: a node after part,  Up: Top

1 chapter
*********


Tag Table:
Node: Top27
Node: a node after part140
Node: chapter239

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'part_node_chapter_after_top'} = '<!DOCTYPE html>
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
Next: <a href="#a-node-after-part" accesskey="n" rel="next">a node after part</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<hr>
</div>
<div class="part-level-extent" id="part">
<div class="nav-panel">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">chapter</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h1 class="part"><span>part<a class="copiable-link" href="#part"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">chapter</a></li>
</ul>
<h4 class="node" id="a-node-after-part"><span>a node after part<a class="copiable-link" href="#a-node-after-part"> &para;</a></span></h4>
<p>After a node after part
</p>
<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Next: <a href="#a-node-after-part" accesskey="n" rel="next">a node after part</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-1"><span>1 chapter<a class="copiable-link" href="#chapter-1"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'part_node_chapter_after_top'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">a node after part</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>a node after part</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<part spaces=" "><sectiontitle>part</sectiontitle>

<node identifier="a-node-after-part" spaces=" "><nodename>a node after part</nodename><nodenext spaces=" ">chapter</nodenext><nodeprev spaces=" ">Top</nodeprev><nodeup spaces=" ">Top</nodeup></node>
<para>After a node after part
</para>
<node identifier="chapter" spaces=" "><nodename>chapter</nodename><nodenext spaces=" ">a node after part</nodenext><nodeprev></nodeprev><nodeup spaces=" ">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter </sectiontitle>
</chapter>
</part>
';

1;
