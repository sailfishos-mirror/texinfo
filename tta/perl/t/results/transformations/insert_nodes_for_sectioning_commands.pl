use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'insert_nodes_for_sectioning_commands'} = '*document_root C22
 *before_node_section
 *0 @node C1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_directions:D[next->E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E2]
  ||section_level:{-1}
 |toplevel_directions:D[next->E6]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  {empty_line:\\n}
 *2 @part C2 l3
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E6]
 |section_childs:EC[E6|E21]
 |section_directions:D[prev->E1]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *3 @node C1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |node_directions:D[next->E20|prev->E0|up->E0]
 |normalized:{chap_002c-a-chap}
  *arguments_line C1
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
    *4 @comma C1
     *brace_container
    { }
    *5 @code C1
     *brace_container C1
      {a chap}
 *6 @chapter C2 l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |associated_part:[E2]
 |section_childs:EC[E9|E11|E17|E19]
 |section_directions:D[next->E21|up->E2]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E21|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap, }
    *7 @code C1 l5
     *brace_container C1
      {a chap}
  {empty_line:\\n}
 *8 @node C1 l7
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |is_target:{1}
 |node_directions:D[next->E10|up->E3]
 |normalized:{a-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a node}
 *9 @section C2 l8
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E8]
 |section_directions:D[next->E11|up->E6]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *10 @node C1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E11]
 |is_target:{1}
 |node_directions:D[next->E16|prev->E8|up->E3]
 |normalized:{truc}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {truc}
 *11 @section C1 l10
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E10]
 |section_childs:EC[E13|E15]
 |section_directions:D[next->E17|prev->E9|up->E6]
 |section_level:{2}
 |section_number:{1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {truc}
 *12 @node C1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E13]
 |is_target:{1}
 |node_directions:D[next->E14|up->E10]
 |normalized:{sub1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sub1}
 *13 @subsection C4 l11
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E12]
 |section_directions:D[next->E15|up->E11]
 |section_level:{3}
 |section_number:{1.2.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sub1}
  {empty_line:\\n}
  *paragraph C1
   {Text.\\n}
  {empty_line:\\n}
 *14 @node C1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E15]
 |is_target:{1}
 |node_directions:D[prev->E12|up->E10]
 |normalized:{sub2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sub2}
 *15 @subsection C2 l15
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E14]
 |section_directions:D[prev->E13|up->E11]
 |section_level:{3}
 |section_number:{1.2.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: comment\\n}
   |spaces_after_argument:
    |{ }
    {sub2}
  {empty_line:\\n}
 *16 @node C1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E17]
 |is_target:{1}
 |node_directions:D[next->E18|prev->E10|up->E3]
 |normalized:{section}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
 *17 @section C2 l17
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E16]
 |section_directions:D[next->E19|prev->E11|up->E6]
 |section_level:{2}
 |section_number:{1.3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *18 @node C1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E19]
 |is_target:{1}
 |node_directions:D[prev->E16|up->E3]
 |normalized:{section-1}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
    { 1}
 *19 @section C2 l19
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E18]
 |section_directions:D[prev->E17|up->E6]
 |section_level:{2}
 |section_number:{1.4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *20 @node C1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E21]
 |is_target:{1}
 |node_directions:D[prev->E3|up->E0]
 |normalized:{-1}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {}
    { 1}
 *21 @unnumbered C2 l21
 |EXTRA
 |associated_node:[E20]
 |section_childs:EC[E24]
 |section_directions:D[prev->E6|up->E2]
 |section_level:{1}
 |toplevel_directions:D[prev->E6|up->E1]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *22 @node C1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E24]
 |is_target:{1}
 |node_directions:D[up->E20]
 |normalized:{-2}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *23 @asis C1
     *brace_container
    { 2}
 *24 @section C2 l23
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E22]
 |section_directions:D[up->E21]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *25 @asis C1 l23
     *brace_container
  {empty_line:\\n}
';


$result_texis{'insert_nodes_for_sectioning_commands'} = '@node Top
@top top section

@part part

@node chap@comma{} @code{a chap}
@chapter chap, @code{a chap}

@node a node
@section section

@node truc
@section truc
@node sub1
@subsection sub1

Text.

@node sub2
@subsection sub2 @c comment

@node section
@section section

@node section 1
@section section

@node  1
@unnumbered

@node @asis{} 2
@section @asis{}

';


$result_texts{'insert_nodes_for_sectioning_commands'} = 'top section
***********

part
****

1 chap, a chap
**************

1.1 section
===========

1.2 truc
========
1.2.1 sub1
----------

Text.

1.2.2 sub2
----------

1.3 section
===========

1.4 section
===========



';

$result_sectioning{'insert_nodes_for_sectioning_commands'} = {
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
          'section_directions' => {},
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
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
                  'normalized' => 'chap_002c-a-chap'
                }
              },
              'associated_part' => {},
              'section_childs' => [
                {
                  'cmdname' => 'section',
                  'extra' => {
                    'associated_node' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'normalized' => 'a-node'
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
                        'normalized' => 'truc'
                      }
                    },
                    'section_childs' => [
                      {
                        'cmdname' => 'subsection',
                        'extra' => {
                          'associated_node' => {
                            'cmdname' => 'node',
                            'extra' => {
                              'normalized' => 'sub1'
                            }
                          },
                          'section_directions' => {
                            'up' => {}
                          },
                          'section_level' => 3,
                          'section_number' => '1.2.1'
                        }
                      },
                      {
                        'cmdname' => 'subsection',
                        'extra' => {
                          'associated_node' => {
                            'cmdname' => 'node',
                            'extra' => {
                              'normalized' => 'sub2'
                            }
                          },
                          'section_directions' => {
                            'prev' => {},
                            'up' => {}
                          },
                          'section_level' => 3,
                          'section_number' => '1.2.2'
                        }
                      }
                    ],
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
                        'normalized' => 'section'
                      }
                    },
                    'section_directions' => {
                      'prev' => {},
                      'up' => {}
                    },
                    'section_level' => 2,
                    'section_number' => '1.3'
                  }
                },
                {
                  'cmdname' => 'section',
                  'extra' => {
                    'associated_node' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'normalized' => 'section-1'
                      }
                    },
                    'section_directions' => {
                      'prev' => {},
                      'up' => {}
                    },
                    'section_level' => 2,
                    'section_number' => '1.4'
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
          'section_childs' => [
            {},
            {
              'cmdname' => 'unnumbered',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '-1'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => '-2'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2
                    }
                  }
                ],
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
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
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'insert_nodes_for_sectioning_commands'};
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[1];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[1];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[0];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[1];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[2];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[0];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[0];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0] = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[0];
$result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'insert_nodes_for_sectioning_commands'}{'extra'}{'section_childs'}[0];

$result_nodes{'insert_nodes_for_sectioning_commands'} = [
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
                'associated_part' => {
                  'cmdname' => 'part',
                  'extra' => {}
                },
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'unnumbered',
                    'extra' => {}
                  },
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => '-1'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap_002c-a-chap'
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
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'section',
                          'extra' => {
                            'section_number' => '1.4'
                          }
                        },
                        'node_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'section-1'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'section'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'truc'
          }
        },
        'up' => {}
      },
      'normalized' => 'a-node'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'subsection',
        'extra' => {
          'section_number' => '1.2.1'
        }
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'subsection',
              'extra' => {
                'section_number' => '1.2.2'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'sub2'
          }
        },
        'up' => {}
      },
      'normalized' => 'sub1'
    }
  },
  {},
  {},
  {},
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {}
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => '-2'
    }
  }
];
$result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[0];
$result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[0];
$result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[0];
$result_nodes{'insert_nodes_for_sectioning_commands'}[1] = $result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[2];
$result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[3] = $result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[4]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[4];
$result_nodes{'insert_nodes_for_sectioning_commands'}[4]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[4]{'extra'}{'node_directions'}{'up'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[5] = $result_nodes{'insert_nodes_for_sectioning_commands'}[4]{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[6] = $result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[7] = $result_nodes{'insert_nodes_for_sectioning_commands'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[8] = $result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'insert_nodes_for_sectioning_commands'}[9]{'extra'}{'node_directions'}{'up'} = $result_nodes{'insert_nodes_for_sectioning_commands'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'insert_nodes_for_sectioning_commands'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap_002c-a-chap'
    }
  },
  {
    'extra' => {
      'normalized' => 'a-node'
    }
  },
  {
    'extra' => {
      'normalized' => 'truc'
    }
  },
  {
    'extra' => {
      'normalized' => 'sub1'
    }
  },
  {
    'extra' => {
      'normalized' => 'sub2'
    }
  },
  {
    'extra' => {
      'normalized' => 'section'
    }
  },
  {
    'extra' => {
      'normalized' => 'section-1'
    }
  },
  {
    'extra' => {
      'normalized' => '-1'
    }
  },
  {
    'extra' => {
      'normalized' => '-2'
    }
  }
];

$result_errors{'insert_nodes_for_sectioning_commands'} = [
  {
    'error_line' => 'warning: @unnumbered missing argument
',
    'line_nr' => 21,
    'text' => '@unnumbered missing argument',
    'type' => 'warning'
  }
];


$result_floats{'insert_nodes_for_sectioning_commands'} = {};


1;
