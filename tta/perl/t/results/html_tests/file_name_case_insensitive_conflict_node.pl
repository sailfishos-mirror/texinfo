use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'file_name_case_insensitive_conflict_node'} = '*document_root C11
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
 |section_childs:EC[E3]
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
    {top section}
  {empty_line:\\n}
 *2 @node C1 l4
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C5 l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_childs:EC[E6|E8|E10]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *4 @anchor C1 l7
  |EXTRA
  |is_target:{1}
  |normalized:{fOO}
   *brace_arg C1
    {fOO}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *5 @node C1 l9
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |node_directions:D[next->E7|up->E2]
 |normalized:{Foo}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Foo}
 *6 @section C2 l10
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |section_directions:D[next->E8|up->E3]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Foo}
  {empty_line:\\n}
 *7 @node C1 l12
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |is_target:{1}
 |node_directions:D[next->E9|prev->E5|up->E2]
 |normalized:{Bar}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Bar}
 *8 @section C2 l13
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E7]
 |section_directions:D[next->E10|prev->E6|up->E3]
 |section_level:{2}
 |section_number:{1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Bar}
  {empty_line:\\n}
 *9 @node C1 l15
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |is_target:{1}
 |node_directions:D[prev->E7|up->E2]
 |normalized:{foo}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {foo}
 *10 @section C5 l16
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E9]
 |section_directions:D[prev->E8|up->E3]
 |section_level:{2}
 |section_number:{1.3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {foo}
  {empty_line:\\n}
  *paragraph C2
   *11 @xref C1 l18
    *brace_arg C1
    |EXTRA
    |node_content:{foo}
    |normalized:{foo}
     {foo}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *12 @xref C1 l20
    *brace_arg C1
    |EXTRA
    |node_content:{Foo}
    |normalized:{Foo}
     {Foo}
   {\\n}
';


$result_texis{'file_name_case_insensitive_conflict_node'} = '@node Top
@top top section

@node chap
@chapter Chapter

@anchor{fOO}

@node Foo
@section Foo

@node Bar
@section Bar

@node foo
@section foo

@xref{foo}

@xref{Foo}
';


$result_texts{'file_name_case_insensitive_conflict_node'} = 'top section
***********

1 Chapter
*********


1.1 Foo
=======

1.2 Bar
=======

1.3 foo
=======

foo

Foo
';

$result_sectioning{'file_name_case_insensitive_conflict_node'} = {
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
                          'normalized' => 'Foo'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  },
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'Bar'
                        }
                      },
                      'section_directions' => {
                        'prev' => {},
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.2'
                    }
                  },
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'foo'
                        }
                      },
                      'section_directions' => {
                        'prev' => {},
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.3'
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
$result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'file_name_case_insensitive_conflict_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'file_name_case_insensitive_conflict_node'};

$result_nodes{'file_name_case_insensitive_conflict_node'} = [
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
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'section',
              'extra' => {
                'section_number' => '1.2'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'section',
                    'extra' => {
                      'section_number' => '1.3'
                    }
                  },
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'foo'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'Bar'
          }
        },
        'up' => {}
      },
      'normalized' => 'Foo'
    }
  },
  {},
  {}
];
$result_nodes{'file_name_case_insensitive_conflict_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'file_name_case_insensitive_conflict_node'}[0];
$result_nodes{'file_name_case_insensitive_conflict_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'file_name_case_insensitive_conflict_node'}[0];
$result_nodes{'file_name_case_insensitive_conflict_node'}[1] = $result_nodes{'file_name_case_insensitive_conflict_node'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'file_name_case_insensitive_conflict_node'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'file_name_case_insensitive_conflict_node'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'file_name_case_insensitive_conflict_node'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'file_name_case_insensitive_conflict_node'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'file_name_case_insensitive_conflict_node'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'file_name_case_insensitive_conflict_node'}[2];
$result_nodes{'file_name_case_insensitive_conflict_node'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'file_name_case_insensitive_conflict_node'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'file_name_case_insensitive_conflict_node'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'file_name_case_insensitive_conflict_node'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'file_name_case_insensitive_conflict_node'}[3] = $result_nodes{'file_name_case_insensitive_conflict_node'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'file_name_case_insensitive_conflict_node'}[4] = $result_nodes{'file_name_case_insensitive_conflict_node'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'file_name_case_insensitive_conflict_node'} = [
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
      'normalized' => 'Foo'
    }
  },
  {
    'extra' => {
      'normalized' => 'Bar'
    }
  },
  {
    'extra' => {
      'normalized' => 'foo'
    }
  }
];

$result_errors{'file_name_case_insensitive_conflict_node'} = [];


$result_floats{'file_name_case_insensitive_conflict_node'} = {};


$result_converted_errors{'file_html'}->{'file_name_case_insensitive_conflict_node'} = [
  {
    'error_line' => 'warning: @anchor `fOO\' file Foo.html for redirection exists
',
    'line_nr' => 7,
    'text' => '@anchor `fOO\' file Foo.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with @node `Foo\' file
',
    'line_nr' => 9,
    'text' => 'conflict with @node `Foo\' file',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @node `foo\' file Foo.html for redirection exists
',
    'line_nr' => 15,
    'text' => '@node `foo\' file Foo.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with @node `Foo\' file
',
    'line_nr' => 9,
    'text' => 'conflict with @node `Foo\' file',
    'type' => 'warning'
  }
];


1;
