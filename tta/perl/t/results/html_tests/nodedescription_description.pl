use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodedescription_description'} = '*document_root C9
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1
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
 *1 @top C2 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E11|E14]
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
    {test of descriptions with nodedescription*}
  {empty_line:\\n}
 *2 @node C1 l4
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_description:[E4]
 |node_directions:D[next->E10|prev->E0|up->E0]
 |node_long_description:[E9]
 |normalized:{toto}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {toto}
 *3 @chapter C6 l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[next->E11|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E11|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Toto}
  {empty_line:\\n}
  *4 @nodedescription C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
   *line_arg C8
   |INFO
   |spaces_after_argument:
    |{\\n}
    {toto is there:: and the }
    *5 @emph C1 l7
     *brace_container C1
      {is a description}
    *6 @w C1 l7
     *brace_container C1
      {slightly long}
    { and }
    *7 @verb C1 l7
    |INFO
    |delimiter:{:}
     *brace_container C1
      {raw:vv somewhat}
    { }
    *8 @ringaccent C1 l7
    |INFO
    |spaces_after_cmd_before_arg:
     |{ }
     *following_arg C1
      {a}
    {nexpected}
  {empty_line:\\n}
  *9 @nodedescriptionblock C3 l9
  |EXTRA
  |element_node:[E2]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {Block along line node description for toto\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
 *10 @node C1 l13
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E11]
 |is_target:{1}
 |node_description:[E12]
 |node_directions:D[next->E13|prev->E2|up->E0]
 |node_long_description:[E12]
 |normalized:{titi}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {titi}
 *11 @chapter C4 l14
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E10]
 |section_directions:D[next->E14|prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E14|prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Titi}
  {empty_line:\\n}
  *12 @nodedescriptionblock C3 l16
  |EXTRA
  |element_node:[E10]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {description of titi in block\\n}
   *@end C1 l18
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
 *13 @node C1 l20
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |is_target:{1}
 |node_description:[E15]
 |node_directions:D[prev->E10|up->E0]
 |normalized:{other}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {other}
 *14 @chapter C3 l21
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E13]
 |section_directions:D[prev->E11|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E11|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Other}
  {empty_line:\\n}
  *15 @nodedescription C1 l23
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E13]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {other comes here}
';


$result_texis{'nodedescription_description'} = '@node Top
@top test of descriptions with nodedescription*

@node toto
@chapter Toto

@nodedescription toto is there:: and the @emph{is a description}@w{slightly long} and @verb{:vv somewhat:} @ringaccent anexpected

@nodedescriptionblock
Block along line node description for toto
@end nodedescriptionblock

@node titi
@chapter Titi

@nodedescriptionblock
description of titi in block
@end nodedescriptionblock

@node other
@chapter Other

@nodedescription other comes here
';


$result_texts{'nodedescription_description'} = 'test of descriptions with nodedescription*
******************************************

1 Toto
******



2 Titi
******


3 Other
*******

';

$result_sectioning{'nodedescription_description'} = {
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
                    'normalized' => 'toto'
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
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'titi'
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'other'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '3',
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
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_description'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'nodedescription_description'};

$result_nodes{'nodedescription_description'} = [
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
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'section_number' => '3'
                          }
                        },
                        'node_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'other'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'titi'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'toto'
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
$result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodedescription_description'}[0];
$result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodedescription_description'}[0];
$result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodedescription_description'}[0];
$result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodedescription_description'}[0];
$result_nodes{'nodedescription_description'}[1] = $result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_description'}[2] = $result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_description'}[3] = $result_nodes{'nodedescription_description'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'nodedescription_description'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'toto'
    }
  },
  {
    'extra' => {
      'normalized' => 'titi'
    }
  },
  {
    'extra' => {
      'normalized' => 'other'
    }
  }
];

$result_errors{'nodedescription_description'} = [
  {
    'error_line' => 'warning: @verb should not appear on @nodedescription line
',
    'line_nr' => 7,
    'text' => '@verb should not appear on @nodedescription line',
    'type' => 'warning'
  }
];


$result_floats{'nodedescription_description'} = {};


1;
