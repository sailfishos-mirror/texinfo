use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'non_empty_part_no_top_node_output'} = '*document_root C16
 *before_node_section
 *0 @part C4 l1 {part before}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E2]
 |part_following_node:[E1]
 |section_directions:D[next->E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E2|E4|E6|E8|E10|E11|E13]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part before}
  {empty_line:\\n}
  *paragraph C1
   {Content before\\n}
  {empty_line:\\n}
 *1 @node C1 l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |is_target:{1}
 |menus:EC[E3]
 |node_directions:D[next->E7]
 |node_preceding_part:[E0]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C4 l6 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E1]
 |associated_part:[E0]
 |section_directions:D[next->E4|prev->E0]
 |section_level:{0}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *3 @menu C4 l8
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l9
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
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{part chapter node}
    |normalized:{part-chapter-node}
     {part chapter node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l11
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
 *4 @part C4 l13 {part I}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{2}
 |part_associated_section:[E5]
 |section_childs:EC[E5]
 |section_directions:D[next->E6|prev->E2]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part I}
  {empty_line:\\n}
  *paragraph C1
   {Content I\\n}
  {empty_line:\\n}
 *5 @chapter C2 l17 {chap in Top node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E4]
 |section_directions:D[up->E4]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E9|prev->E2|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap in Top node}
  {empty_line:\\n}
 *6 @part C4 l19 {Part II}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{3}
 |part_following_node:[E7]
 |section_directions:D[next->E8|prev->E4]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part II}
  {empty_line:\\n}
  *paragraph C1
   {Content II\\n}
  {empty_line:\\n}
 *7 @node C1 l23 {part chapter node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |is_target:{1}
 |menu_directions:D[up->E1]
 |node_directions:D[prev->E1|up->E1]
 |node_preceding_part:[E6]
 |normalized:{part-chapter-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part chapter node}
 *8 @part C4 l24 {part III}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{4}
 |part_associated_section:[E9]
 |section_childs:EC[E9]
 |section_directions:D[next->E10|prev->E6]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part III}
  {empty_line:\\n}
  *paragraph C1
   {Content III\\n}
  {empty_line:\\n}
 *9 @chapter C2 l28 {chapter with part node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E7]
 |associated_part:[E8]
 |section_directions:D[up->E8]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E12|prev->E5|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter with part node}
  {empty_line:\\n}
 *10 @part C4 l30 {Part IV}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{5}
 |section_directions:D[next->E11|prev->E8]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part IV}
  {empty_line:\\n}
  *paragraph C1
   {Content IV\\n}
  {empty_line:\\n}
 *11 @part C4 l34 {Part V}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{6}
 |part_associated_section:[E12]
 |section_childs:EC[E12]
 |section_directions:D[next->E13|prev->E10]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part V}
  {empty_line:\\n}
  *paragraph C1
   {Content V\\n}
  {empty_line:\\n}
 *12 @chapter C2 l38 {with part no node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E11]
 |section_directions:D[up->E11]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E15|prev->E9|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {with part no node}
  {empty_line:\\n}
 *13 @part C4 l40 {Part VI}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{7}
 |part_associated_section:[E15]
 |part_following_node:[E14]
 |section_childs:EC[E15]
 |section_directions:D[prev->E11]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part VI}
  {empty_line:\\n}
  *paragraph C1
   {Content VI\\n}
  {empty_line:\\n}
 *14 @node C2 l44 {node between part and chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E15]
 |is_target:{1}
 |node_directions:D[up->E1]
 |node_preceding_part:[E13]
 |normalized:{node-between-part-and-chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node between part and chapter}
  {empty_line:\\n}
 *15 @chapter C2 l46 {chapter after part node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E14]
 |associated_part:[E13]
 |section_directions:D[up->E13]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[prev->E12|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter after part node}
  {empty_line:\\n}
';


$result_texis{'non_empty_part_no_top_node_output'} = '@part part before

Content before

@node Top
@top top

@menu
* chapter node::
* part chapter node::
@end menu

@part part I

Content I

@chapter chap in Top node

@part Part II

Content II

@node part chapter node
@part part III

Content III

@chapter chapter with part node

@part Part IV

Content IV

@part Part V

Content V

@chapter with part no node

@part Part VI

Content VI

@node node between part and chapter

@chapter chapter after part node

';


$result_texts{'non_empty_part_no_top_node_output'} = 'part before
***********

Content before

top
***

* chapter node::
* part chapter node::

part I
******

Content I

1 chap in Top node
******************

Part II
*******

Content II

part III
********

Content III

2 chapter with part node
************************

Part IV
*******

Content IV

Part V
******

Content V

3 with part no node
*******************

Part VI
*******

Content VI


4 chapter after part node
*************************

';

$result_sectioning{'non_empty_part_no_top_node_output'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'top',
            'extra' => {
              'associated_node' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'Top'
                }
              },
              'associated_part' => {},
              'section_directions' => {
                'prev' => {}
              },
              'section_level' => 0,
              'toplevel_directions' => {}
            }
          },
          'part_following_node' => {},
          'section_directions' => {},
          'section_level' => 0,
          'sectioning_root' => {}
        }
      },
      {},
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
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
          'section_childs' => [
            {}
          ],
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 0
        }
      },
      {
        'cmdname' => 'part',
        'extra' => {
          'part_following_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'part-chapter-node'
            }
          },
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 0
        }
      },
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
              'associated_node' => {},
              'associated_part' => {},
              'section_directions' => {
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
          'section_childs' => [
            {}
          ],
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 0
        }
      },
      {
        'cmdname' => 'part',
        'extra' => {
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 0
        }
      },
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
              'associated_part' => {},
              'section_directions' => {
                'up' => {}
              },
              'section_level' => 1,
              'section_number' => '3',
              'toplevel_directions' => {
                'prev' => {},
                'up' => {}
              }
            }
          },
          'section_childs' => [
            {}
          ],
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 0
        }
      },
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
              'associated_node' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'node-between-part-and-chapter'
                }
              },
              'associated_part' => {},
              'section_directions' => {
                'up' => {}
              },
              'section_level' => 1,
              'section_number' => '4',
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
    ],
    'section_level' => -1
  }
};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_following_node'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'associated_node'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'non_empty_part_no_top_node_output'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[1] = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2]{'extra'}{'section_childs'}[0] = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4]{'extra'}{'part_associated_section'}{'extra'}{'associated_node'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[3]{'extra'}{'part_following_node'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4]{'extra'}{'part_associated_section'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4]{'extra'}{'section_childs'}[0] = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[3];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[5]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6]{'extra'}{'part_associated_section'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[4]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6]{'extra'}{'section_childs'}[0] = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[5];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7]{'extra'}{'part_associated_section'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7];
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7]{'extra'}{'part_following_node'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7]{'extra'}{'part_associated_section'}{'extra'}{'associated_node'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7]{'extra'}{'section_childs'}[0] = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7]{'extra'}{'part_associated_section'};
$result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[7]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'non_empty_part_no_top_node_output'}{'extra'}{'section_childs'}[6];

$result_nodes{'non_empty_part_no_top_node_output'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {
          'associated_part' => {
            'cmdname' => 'part',
            'extra' => {}
          }
        }
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_part' => {
                  'cmdname' => 'part',
                  'extra' => {}
                },
                'section_number' => '2'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'node_preceding_part' => {
              'cmdname' => 'part',
              'extra' => {}
            },
            'normalized' => 'part-chapter-node'
          }
        }
      },
      'node_preceding_part' => {},
      'normalized' => 'Top'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_part' => {
            'cmdname' => 'part',
            'extra' => {}
          },
          'section_number' => '4'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'node_preceding_part' => {},
      'normalized' => 'node-between-part-and-chapter'
    }
  }
];
$result_nodes{'non_empty_part_no_top_node_output'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'non_empty_part_no_top_node_output'}[0];
$result_nodes{'non_empty_part_no_top_node_output'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'non_empty_part_no_top_node_output'}[0];
$result_nodes{'non_empty_part_no_top_node_output'}[0]{'extra'}{'node_preceding_part'} = $result_nodes{'non_empty_part_no_top_node_output'}[0]{'extra'}{'associated_section'}{'extra'}{'associated_part'};
$result_nodes{'non_empty_part_no_top_node_output'}[1] = $result_nodes{'non_empty_part_no_top_node_output'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'non_empty_part_no_top_node_output'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'non_empty_part_no_top_node_output'}[0];
$result_nodes{'non_empty_part_no_top_node_output'}[2]{'extra'}{'node_preceding_part'} = $result_nodes{'non_empty_part_no_top_node_output'}[2]{'extra'}{'associated_section'}{'extra'}{'associated_part'};

$result_menus{'non_empty_part_no_top_node_output'} = [
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
      'normalized' => 'part-chapter-node'
    }
  },
  {
    'extra' => {
      'normalized' => 'node-between-part-and-chapter'
    }
  }
];
$result_menus{'non_empty_part_no_top_node_output'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'non_empty_part_no_top_node_output'}[0];

$result_errors{'non_empty_part_no_top_node_output'} = [
  {
    'error_line' => 'warning: @part should not be associated with @top
',
    'line_nr' => 1,
    'text' => '@part should not be associated with @top',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @node precedes @part, but parts may not be associated with nodes
',
    'line_nr' => 24,
    'text' => '@node precedes @part, but parts may not be associated with nodes',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no sectioning command associated with @part
',
    'line_nr' => 19,
    'text' => 'no sectioning command associated with @part',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no sectioning command associated with @part
',
    'line_nr' => 30,
    'text' => 'no sectioning command associated with @part',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @part not empty
',
    'line_nr' => 1,
    'text' => '@part not empty',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @part not empty
',
    'line_nr' => 13,
    'text' => '@part not empty',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @part not empty
',
    'line_nr' => 19,
    'text' => '@part not empty',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @part not empty
',
    'line_nr' => 24,
    'text' => '@part not empty',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @part not empty
',
    'line_nr' => 30,
    'text' => '@part not empty',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @part not empty
',
    'line_nr' => 34,
    'text' => '@part not empty',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @part not empty
',
    'line_nr' => 40,
    'text' => '@part not empty',
    'type' => 'warning'
  },
  {
    'error_line' => '@menu reference to nonexistent node `chapter node\'
',
    'line_nr' => 9,
    'text' => '@menu reference to nonexistent node `chapter node\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: node `Top\' lacks menu item for `node between part and chapter\' despite being its Up target
',
    'line_nr' => 5,
    'text' => 'node `Top\' lacks menu item for `node between part and chapter\' despite being its Up target',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `node between part and chapter\' unreferenced
',
    'line_nr' => 44,
    'text' => 'node `node between part and chapter\' unreferenced',
    'type' => 'warning'
  }
];


$result_floats{'non_empty_part_no_top_node_output'} = {};



$result_converted{'html_text'}->{'non_empty_part_no_top_node_output'} = '<a class="part" id="part-before"></a><a class="node" id="Top"></a><a class="top" id="top"></a><div class="part-level-extent" id="part-I">
<h1 class="part"><span>part I<a class="copiable-link" href="#part-I"> &para;</a></span></h1>
<hr>

<p>Content I
</p>
<ul class="mini-toc">
<li><a href="#chap-in-Top-node" accesskey="1">chap in Top node</a></li>
</ul>
<div class="chapter-level-extent" id="chap-in-Top-node">
<h2 class="chapter"><span>1 chap in Top node<a class="copiable-link" href="#chap-in-Top-node"> &para;</a></span></h2>

<hr>
</div>
</div>
<div class="part-level-extent" id="Part-II">
<h1 class="part"><span>Part II<a class="copiable-link" href="#Part-II"> &para;</a></span></h1>
<hr>

<p>Content II
</p>
<div class="chapter-level-extent" id="part-chapter-node">
</div>
</div>
<div class="part-level-extent" id="part-III">
<h1 class="part"><span>part III<a class="copiable-link" href="#part-III"> &para;</a></span></h1>
<hr>

<p>Content III
</p>
<ul class="mini-toc">
<li><a href="#part-chapter-node" accesskey="1">chapter with part node</a></li>
</ul>
<h2 class="chapter" id="chapter-with-part-node"><span>2 chapter with part node<a class="copiable-link" href="#chapter-with-part-node"> &para;</a></span></h2>

</div>
<div class="part-level-extent" id="Part-IV">
<h1 class="part"><span>Part IV<a class="copiable-link" href="#Part-IV"> &para;</a></span></h1>
<hr>

<p>Content IV
</p>
</div>
<div class="part-level-extent" id="Part-V">
<h1 class="part"><span>Part V<a class="copiable-link" href="#Part-V"> &para;</a></span></h1>
<hr>

<p>Content V
</p>
<ul class="mini-toc">
<li><a href="#with-part-no-node" accesskey="1">with part no node</a></li>
</ul>
<div class="chapter-level-extent" id="with-part-no-node">
<h2 class="chapter"><span>3 with part no node<a class="copiable-link" href="#with-part-no-node"> &para;</a></span></h2>

<hr>
</div>
</div>
<div class="part-level-extent" id="Part-VI">
<h1 class="part"><span>Part VI<a class="copiable-link" href="#Part-VI"> &para;</a></span></h1>
<hr>

<p>Content VI
</p>
<ul class="mini-toc">
<li><a href="#node-between-part-and-chapter" accesskey="1">chapter after part node</a></li>
</ul>
<div class="chapter-level-extent" id="node-between-part-and-chapter">

<h2 class="chapter" id="chapter-after-part-node"><span>4 chapter after part node<a class="copiable-link" href="#chapter-after-part-node"> &para;</a></span></h2>

</div>
</div>
';

1;
