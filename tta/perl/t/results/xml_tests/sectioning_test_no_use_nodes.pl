use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'sectioning_test_no_use_nodes'} = '*document_root C9
 *before_node_section
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
 *1 @top C4 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E7]
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
  *paragraph C1
   {In T.\\n}
  {empty_line:\\n}
 *2 @node C1 l6 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E6|prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C4 l7 {Chap1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_childs:EC[E5]
 |section_directions:D[next->E7|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E7|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap1}
  {empty_line:\\n}
  *paragraph C1
   {In c1.\\n}
  {empty_line:\\n}
 *4 @node C1 l11 {sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |node_directions:D[up->E2]
 |normalized:{sec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec}
 *5 @section C4 l12 {sec1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_directions:D[up->E3]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec1}
  {empty_line:\\n}
  *paragraph C1
   {In s1.1.\\n}
  {empty_line:\\n}
 *6 @node C1 l16 {chap2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{chap2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap2}
 *7 @chapter C3 l17 {Chap2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E6]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap2}
  {empty_line:\\n}
  *paragraph C1
   {In c2.\\n}
';


$result_texis{'sectioning_test_no_use_nodes'} = '@node Top
@top top

In T.

@node chap
@chapter Chap1

In c1.

@node sec
@section sec1

In s1.1.

@node chap2
@chapter Chap2

In c2.
';


$result_texts{'sectioning_test_no_use_nodes'} = 'top
***

In T.

1 Chap1
*******

In c1.

1.1 sec1
========

In s1.1.

2 Chap2
*******

In c2.
';

$result_sectioning{'sectioning_test_no_use_nodes'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'sec'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
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
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap2'
                  }
                },
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
$result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_test_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'sectioning_test_no_use_nodes'};

$result_nodes{'sectioning_test_no_use_nodes'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'chap2'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap'
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
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '1.1'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'sec'
    }
  },
  {}
];
$result_nodes{'sectioning_test_no_use_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sectioning_test_no_use_nodes'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_test_no_use_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_test_no_use_nodes'}[0];
$result_nodes{'sectioning_test_no_use_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sectioning_test_no_use_nodes'}[0];
$result_nodes{'sectioning_test_no_use_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_test_no_use_nodes'}[0];
$result_nodes{'sectioning_test_no_use_nodes'}[1] = $result_nodes{'sectioning_test_no_use_nodes'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_test_no_use_nodes'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_test_no_use_nodes'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_test_no_use_nodes'}[3] = $result_nodes{'sectioning_test_no_use_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'sectioning_test_no_use_nodes'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  },
  {
    'extra' => {
      'normalized' => 'sec'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap2'
    }
  }
];

$result_errors{'sectioning_test_no_use_nodes'} = [];


$result_floats{'sectioning_test_no_use_nodes'} = {};



$result_converted{'xml'}->{'sectioning_test_no_use_nodes'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext>
</node><top spaces=" "><sectiontitle>top</sectiontitle></top>

<para>In T.
</para>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodenext automatic="on">chap2</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup>
</node><chapter spaces=" "><sectiontitle>Chap1</sectiontitle></chapter>

<para>In c1.
</para>
<node identifier="sec" spaces=" "><nodename>sec</nodename><nodeup automatic="on">chap</nodeup>
</node><section spaces=" "><sectiontitle>sec1</sectiontitle></section>

<para>In s1.1.
</para>
<node identifier="chap2" spaces=" "><nodename>chap2</nodename><nodeprev automatic="on">chap</nodeprev><nodeup automatic="on">Top</nodeup>
</node><chapter spaces=" "><sectiontitle>Chap2</sectiontitle></chapter>

<para>In c2.
</para>';

1;
