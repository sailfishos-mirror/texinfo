use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'printindex_set_direction'} = '*document_root C11
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
 |section_childs:EC[E3|E8|E10|E12]
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
 *2 @node C1 l4 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E7|prev->E0|up->E0]
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *3 @chapter C6 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[next->E8|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E8|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *4 index_entry_command@cindex C1 l7
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {CC}
  *5 index_entry_command@vindex C1 l8
  |INFO
  |command_name:{vindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{vr,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {VV}
  *6 index_entry_command@findex C1 l9
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {FF}
  {empty_line:\\n}
 *7 @node C1 l11 {Vindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[next->E9|prev->E2|up->E0]
 |normalized:{Vindex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Vindex}
 *8 @appendix C4 l12 {Vindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E7]
 |section_directions:D[next->E10|prev->E3|up->E1]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[next->E10|prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Vindex}
  {empty_line:\\n}
  *@printindex C1 l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{vr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {vr}
  {empty_line:\\n}
 *9 @node C1 l16 {Cindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[next->E11|prev->E7|up->E0]
 |normalized:{Cindex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Cindex}
 *10 @appendix C4 l17 {Cindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E9]
 |section_directions:D[next->E12|prev->E8|up->E1]
 |section_level:{1}
 |section_number:{B}
 |toplevel_directions:D[next->E12|prev->E8|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Cindex}
  {empty_line:\\n}
  *@printindex C1 l19
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
 *11 @node C1 l21 {Findex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E9|up->E0]
 |normalized:{Findex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Findex}
 *12 @appendix C3 l22 {Findex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E11]
 |section_directions:D[prev->E10|up->E1]
 |section_level:{1}
 |section_number:{C}
 |toplevel_directions:D[prev->E10|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Findex}
  {empty_line:\\n}
  *@printindex C1 l24
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
';


$result_texis{'printindex_set_direction'} = '@node Top
@top top

@node Chapter
@chapter chap

@cindex CC
@vindex VV
@findex FF

@node Vindex
@appendix Vindex

@printindex vr

@node Cindex
@appendix Cindex

@printindex cp

@node Findex
@appendix Findex

@printindex fn
';


$result_texts{'printindex_set_direction'} = 'top
***

1 chap
******


Appendix A Vindex
*****************


Appendix B Cindex
*****************


Appendix C Findex
*****************

';

$result_sectioning{'printindex_set_direction'} = {
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
                    'normalized' => 'Chapter'
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
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'Vindex'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => 'A',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'Cindex'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => 'B',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'Findex'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => 'C',
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
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'printindex_set_direction'};

$result_nodes{'printindex_set_direction'} = [
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
                    'cmdname' => 'appendix',
                    'extra' => {
                      'section_number' => 'A'
                    }
                  },
                  'isindex' => 1,
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'appendix',
                          'extra' => {
                            'section_number' => 'B'
                          }
                        },
                        'isindex' => 1,
                        'node_directions' => {
                          'next' => {
                            'cmdname' => 'node',
                            'extra' => {
                              'associated_section' => {
                                'cmdname' => 'appendix',
                                'extra' => {
                                  'section_number' => 'C'
                                }
                              },
                              'isindex' => 1,
                              'node_directions' => {
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'Findex'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'Cindex'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'Vindex'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'Chapter'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {}
];
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'printindex_set_direction'}[0];
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'printindex_set_direction'}[0];
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'printindex_set_direction'}[0];
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'printindex_set_direction'}[0];
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'printindex_set_direction'}[0];
$result_nodes{'printindex_set_direction'}[1] = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[2] = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[3] = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[4] = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'printindex_set_direction'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'Chapter'
    }
  },
  {
    'extra' => {
      'normalized' => 'Vindex'
    }
  },
  {
    'extra' => {
      'normalized' => 'Cindex'
    }
  },
  {
    'extra' => {
      'normalized' => 'Findex'
    }
  }
];

$result_errors{'printindex_set_direction'} = [];


$result_floats{'printindex_set_direction'} = {};


$result_indices_sort_strings{'printindex_set_direction'} = {
  'cp' => [
    'CC'
  ],
  'fn' => [
    'FF'
  ],
  'vr' => [
    'VV'
  ]
};


$result_converted_errors{'file_html'}->{'printindex_set_direction'} = [
  {
    'error_line' => 'warning: not setting an unknown direction: NewDirection
',
    'text' => 'not setting an unknown direction: NewDirection',
    'type' => 'warning'
  }
];


1;
