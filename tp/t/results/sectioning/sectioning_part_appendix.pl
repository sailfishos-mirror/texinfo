use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'sectioning_part_appendix'} = [
  {
    'contents' => [
      {
        'contents' => [],
        'parent' => {},
        'type' => 'before_node_section'
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'top'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'top',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 1,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 0
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {},
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'chapter'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 3,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1,
          'number' => 1
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'section'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'section',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 5,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 2,
          'number' => '1.1'
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'subsection'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'subsection',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 7,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 3,
          'number' => '1.1.1'
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'subsubsection'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'subsubsection',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 9,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 4,
          'number' => '1.1.1.1'
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'part'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'part',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 11,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 0
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'chapter in part'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'associated_part' => {},
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 13,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1,
          'number' => 2
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'second chapter in part'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 15,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1,
          'number' => 3
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'unnumbered'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'unnumbered',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 17,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'appendix'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'appendix',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 19,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1,
          'number' => 'A'
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'appendixsec'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'appendixsec',
        'contents' => [],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 21,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 2,
          'number' => 'A.1'
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'sectioning_part_appendix'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[0];
$result_trees{'sectioning_part_appendix'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[0]{'contents'}[1];
$result_trees{'sectioning_part_appendix'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[0]{'contents'}[1];
$result_trees{'sectioning_part_appendix'}[0]{'contents'}[1]{'parent'} = $result_trees{'sectioning_part_appendix'}[0];
$result_trees{'sectioning_part_appendix'}[0]{'extra'}{'section'} = $result_trees{'sectioning_part_appendix'}[0]{'contents'}[1];
$result_trees{'sectioning_part_appendix'}[0]{'extra'}{'unit_command'} = $result_trees{'sectioning_part_appendix'}[0]{'contents'}[1];
$result_trees{'sectioning_part_appendix'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[1]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[1]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[1]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[1];
$result_trees{'sectioning_part_appendix'}[1]{'extra'}{'section'} = $result_trees{'sectioning_part_appendix'}[1]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[1]{'extra'}{'unit_command'} = $result_trees{'sectioning_part_appendix'}[1]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[1]{'structure'}{'unit_prev'} = $result_trees{'sectioning_part_appendix'}[0];
$result_trees{'sectioning_part_appendix'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[2]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[2]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[2]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[2];
$result_trees{'sectioning_part_appendix'}[2]{'extra'}{'section'} = $result_trees{'sectioning_part_appendix'}[2]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[2]{'extra'}{'unit_command'} = $result_trees{'sectioning_part_appendix'}[2]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[2]{'structure'}{'unit_prev'} = $result_trees{'sectioning_part_appendix'}[1];
$result_trees{'sectioning_part_appendix'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[3]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[3]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[3]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[3];
$result_trees{'sectioning_part_appendix'}[3]{'extra'}{'section'} = $result_trees{'sectioning_part_appendix'}[3]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[3]{'extra'}{'unit_command'} = $result_trees{'sectioning_part_appendix'}[3]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[3]{'structure'}{'unit_prev'} = $result_trees{'sectioning_part_appendix'}[2];
$result_trees{'sectioning_part_appendix'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[4]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[4]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[4]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[4];
$result_trees{'sectioning_part_appendix'}[4]{'extra'}{'section'} = $result_trees{'sectioning_part_appendix'}[4]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[4]{'extra'}{'unit_command'} = $result_trees{'sectioning_part_appendix'}[4]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[4]{'structure'}{'unit_prev'} = $result_trees{'sectioning_part_appendix'}[3];
$result_trees{'sectioning_part_appendix'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[5]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[5];
$result_trees{'sectioning_part_appendix'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[1];
$result_trees{'sectioning_part_appendix'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[1];
$result_trees{'sectioning_part_appendix'}[5]{'contents'}[1]{'extra'}{'associated_part'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[5]{'contents'}[1]{'parent'} = $result_trees{'sectioning_part_appendix'}[5];
$result_trees{'sectioning_part_appendix'}[5]{'extra'}{'section'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[1];
$result_trees{'sectioning_part_appendix'}[5]{'extra'}{'unit_command'} = $result_trees{'sectioning_part_appendix'}[5]{'contents'}[1];
$result_trees{'sectioning_part_appendix'}[5]{'structure'}{'unit_prev'} = $result_trees{'sectioning_part_appendix'}[4];
$result_trees{'sectioning_part_appendix'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[6]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[6]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[6]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[6];
$result_trees{'sectioning_part_appendix'}[6]{'extra'}{'section'} = $result_trees{'sectioning_part_appendix'}[6]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[6]{'extra'}{'unit_command'} = $result_trees{'sectioning_part_appendix'}[6]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[6]{'structure'}{'unit_prev'} = $result_trees{'sectioning_part_appendix'}[5];
$result_trees{'sectioning_part_appendix'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[7]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[7]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[7]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[7]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[7];
$result_trees{'sectioning_part_appendix'}[7]{'extra'}{'section'} = $result_trees{'sectioning_part_appendix'}[7]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[7]{'extra'}{'unit_command'} = $result_trees{'sectioning_part_appendix'}[7]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[7]{'structure'}{'unit_prev'} = $result_trees{'sectioning_part_appendix'}[6];
$result_trees{'sectioning_part_appendix'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[8]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[8]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[8]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[8]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[8]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[8];
$result_trees{'sectioning_part_appendix'}[8]{'extra'}{'section'} = $result_trees{'sectioning_part_appendix'}[8]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[8]{'extra'}{'unit_command'} = $result_trees{'sectioning_part_appendix'}[8]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[8]{'structure'}{'unit_prev'} = $result_trees{'sectioning_part_appendix'}[7];
$result_trees{'sectioning_part_appendix'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'sectioning_part_appendix'}[9]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[9]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[9]{'contents'}[0]{'parent'} = $result_trees{'sectioning_part_appendix'}[9];
$result_trees{'sectioning_part_appendix'}[9]{'extra'}{'section'} = $result_trees{'sectioning_part_appendix'}[9]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[9]{'extra'}{'unit_command'} = $result_trees{'sectioning_part_appendix'}[9]{'contents'}[0];
$result_trees{'sectioning_part_appendix'}[9]{'structure'}{'unit_prev'} = $result_trees{'sectioning_part_appendix'}[8];

$result_texis{'sectioning_part_appendix'} = '@top top

@chapter chapter

@section section

@subsection subsection

@subsubsection subsubsection

@part part

@chapter chapter in part

@chapter second chapter in part

@unnumbered unnumbered

@appendix appendix

@appendixsec appendixsec
';


$result_texts{'sectioning_part_appendix'} = 'top
***

1 chapter
*********

1.1 section
===========

1.1.1 subsection
----------------

1.1.1.1 subsubsection
.....................

part
****

2 chapter in part
*****************

3 second chapter in part
************************

unnumbered
**********

Appendix A appendix
*******************

A.1 appendixsec
===============
';

$result_sectioning{'sectioning_part_appendix'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0,
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'number' => 1,
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'spaces_before_argument' => ' '
                    },
                    'structure' => {
                      'level' => 2,
                      'number' => '1.1',
                      'section_childs' => [
                        {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'spaces_before_argument' => ' '
                          },
                          'structure' => {
                            'level' => 3,
                            'number' => '1.1.1',
                            'section_childs' => [
                              {
                                'cmdname' => 'subsubsection',
                                'extra' => {
                                  'spaces_before_argument' => ' '
                                },
                                'structure' => {
                                  'level' => 4,
                                  'number' => '1.1.1.1',
                                  'section_up' => {}
                                }
                              }
                            ],
                            'section_up' => {}
                          }
                        }
                      ],
                      'section_up' => {}
                    }
                  }
                ],
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_up' => {}
        }
      },
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
              'associated_part' => {},
              'spaces_before_argument' => ' '
            },
            'structure' => {
              'level' => 1,
              'number' => 2,
              'section_up' => {},
              'toplevel_prev' => {},
              'toplevel_up' => {}
            }
          },
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0,
          'section_childs' => [
            {},
            {
              'cmdname' => 'chapter',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'number' => 3,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'unnumbered',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_prev' => {},
          'section_up' => {}
        }
      },
      {
        'cmdname' => 'appendix',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 1,
          'number' => 'A',
          'section_childs' => [
            {
              'cmdname' => 'appendixsec',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 2,
                'number' => 'A.1',
                'section_up' => {}
              }
            }
          ],
          'section_prev' => {},
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'toplevel_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'toplevel_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[0] = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[2]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[2];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'sectioning_part_appendix'};
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_prev'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[2];
$result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_up'} = $result_sectioning{'sectioning_part_appendix'}{'structure'}{'section_childs'}[0];

$result_errors{'sectioning_part_appendix'} = [];


$result_floats{'sectioning_part_appendix'} = {};


$result_elements{'sectioning_part_appendix'} = [
  {
    'extra' => {
      'section' => {
        'cmdname' => 'top',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0
        }
      },
      'unit_command' => {}
    },
    'structure' => {
      'directions' => {
        'FastForward' => {
          'extra' => {
            'section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'number' => 1
              }
            },
            'unit_command' => {}
          },
          'structure' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'FastForward' => {
                'extra' => {
                  'section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'associated_part' => {
                        'cmdname' => 'part',
                        'extra' => {
                          'spaces_before_argument' => ' '
                        },
                        'structure' => {
                          'level' => 0
                        }
                      },
                      'spaces_before_argument' => ' '
                    },
                    'structure' => {
                      'level' => 1,
                      'number' => 2
                    }
                  },
                  'unit_command' => {}
                },
                'structure' => {
                  'directions' => {
                    'Back' => {
                      'extra' => {
                        'section' => {
                          'cmdname' => 'subsubsection',
                          'extra' => {
                            'spaces_before_argument' => ' '
                          },
                          'structure' => {
                            'level' => 4,
                            'number' => '1.1.1.1'
                          }
                        },
                        'unit_command' => {}
                      },
                      'structure' => {
                        'directions' => {
                          'Back' => {
                            'extra' => {
                              'section' => {
                                'cmdname' => 'subsection',
                                'extra' => {
                                  'spaces_before_argument' => ' '
                                },
                                'structure' => {
                                  'level' => 3,
                                  'number' => '1.1.1'
                                }
                              },
                              'unit_command' => {}
                            },
                            'structure' => {
                              'directions' => {
                                'Back' => {
                                  'extra' => {
                                    'section' => {
                                      'cmdname' => 'section',
                                      'extra' => {
                                        'spaces_before_argument' => ' '
                                      },
                                      'structure' => {
                                        'level' => 2,
                                        'number' => '1.1'
                                      }
                                    },
                                    'unit_command' => {}
                                  },
                                  'structure' => {
                                    'directions' => {
                                      'Back' => {},
                                      'FastBack' => {},
                                      'FastForward' => {},
                                      'Forward' => {},
                                      'This' => {},
                                      'Up' => {}
                                    }
                                  },
                                  'type' => 'unit'
                                },
                                'FastBack' => {},
                                'FastForward' => {},
                                'Forward' => {},
                                'This' => {},
                                'Up' => {}
                              }
                            },
                            'type' => 'unit'
                          },
                          'FastBack' => {},
                          'FastForward' => {},
                          'Forward' => {},
                          'This' => {},
                          'Up' => {}
                        }
                      },
                      'type' => 'unit'
                    },
                    'FastBack' => {},
                    'FastForward' => {
                      'extra' => {
                        'section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'spaces_before_argument' => ' '
                          },
                          'structure' => {
                            'level' => 1,
                            'number' => 3
                          }
                        },
                        'unit_command' => {}
                      },
                      'structure' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'FastForward' => {
                            'extra' => {
                              'section' => {
                                'cmdname' => 'unnumbered',
                                'extra' => {
                                  'spaces_before_argument' => ' '
                                },
                                'structure' => {
                                  'level' => 1
                                }
                              },
                              'unit_command' => {}
                            },
                            'structure' => {
                              'directions' => {
                                'Back' => {},
                                'FastBack' => {},
                                'FastForward' => {
                                  'extra' => {
                                    'section' => {
                                      'cmdname' => 'appendix',
                                      'extra' => {
                                        'spaces_before_argument' => ' '
                                      },
                                      'structure' => {
                                        'level' => 1,
                                        'number' => 'A'
                                      }
                                    },
                                    'unit_command' => {}
                                  },
                                  'structure' => {
                                    'directions' => {
                                      'Back' => {},
                                      'FastBack' => {},
                                      'Forward' => {
                                        'extra' => {
                                          'section' => {
                                            'cmdname' => 'appendixsec',
                                            'extra' => {
                                              'spaces_before_argument' => ' '
                                            },
                                            'structure' => {
                                              'level' => 2,
                                              'number' => 'A.1'
                                            }
                                          },
                                          'unit_command' => {}
                                        },
                                        'structure' => {
                                          'directions' => {
                                            'Back' => {},
                                            'FastBack' => {},
                                            'This' => {},
                                            'Up' => {}
                                          }
                                        },
                                        'type' => 'unit'
                                      },
                                      'Prev' => {},
                                      'This' => {}
                                    }
                                  },
                                  'type' => 'unit'
                                },
                                'Forward' => {},
                                'Prev' => {},
                                'This' => {},
                                'Up' => {}
                              }
                            },
                            'type' => 'unit'
                          },
                          'Forward' => {},
                          'Next' => {},
                          'Prev' => {},
                          'This' => {},
                          'Up' => {}
                        }
                      },
                      'type' => 'unit'
                    },
                    'Forward' => {},
                    'Next' => {},
                    'This' => {}
                  }
                },
                'type' => 'unit'
              },
              'Forward' => {},
              'This' => {},
              'Up' => {}
            }
          },
          'type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {}
];
$result_elements{'sectioning_part_appendix'}[0]{'extra'}{'unit_command'} = $result_elements{'sectioning_part_appendix'}[0]{'extra'}{'section'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0];
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0];
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'extra'}{'section'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'extra'}{'section'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'extra'}{'unit_command'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'extra'}{'section'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'FastForward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'extra'}{'section'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'sectioning_part_appendix'}[0];
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'Next'} = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'sectioning_part_appendix'}[0];
$result_elements{'sectioning_part_appendix'}[1] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[2] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[3] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[4] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'};
$result_elements{'sectioning_part_appendix'}[5] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[6] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[7] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[8] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'sectioning_part_appendix'}[9] = $result_elements{'sectioning_part_appendix'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};



$result_directions_text{'sectioning_part_appendix'} = 'element: @top top
  FastForward: @chapter chapter
  Forward: @chapter chapter
  Next: @chapter chapter in part
  This: @top top
element: @chapter chapter
  Back: @top top
  FastBack: @top top
  FastForward: @chapter chapter in part
  Forward: @section section
  This: @chapter chapter
  Up: @top top
element: @section section
  Back: @chapter chapter
  FastBack: @chapter chapter
  FastForward: @chapter chapter in part
  Forward: @subsection subsection
  This: @section section
  Up: @chapter chapter
element: @subsection subsection
  Back: @section section
  FastBack: @chapter chapter
  FastForward: @chapter chapter in part
  Forward: @subsubsection subsubsection
  This: @subsection subsection
  Up: @section section
element: @subsubsection subsubsection
  Back: @subsection subsection
  FastBack: @chapter chapter
  FastForward: @chapter chapter in part
  Forward: @chapter chapter in part
  This: @subsubsection subsubsection
  Up: @subsection subsection
element: @chapter chapter in part
  Back: @subsubsection subsubsection
  FastBack: @chapter chapter
  FastForward: @chapter second chapter in part
  Forward: @chapter second chapter in part
  Next: @chapter second chapter in part
  This: @chapter chapter in part
element: @chapter second chapter in part
  Back: @chapter chapter in part
  FastBack: @chapter chapter in part
  FastForward: @unnumbered unnumbered
  Forward: @unnumbered unnumbered
  Next: @unnumbered unnumbered
  Prev: @chapter chapter in part
  This: @chapter second chapter in part
  Up: @chapter chapter in part
element: @unnumbered unnumbered
  Back: @chapter second chapter in part
  FastBack: @chapter second chapter in part
  FastForward: @appendix appendix
  Forward: @appendix appendix
  Prev: @chapter second chapter in part
  This: @unnumbered unnumbered
  Up: @chapter chapter in part
element: @appendix appendix
  Back: @unnumbered unnumbered
  FastBack: @unnumbered unnumbered
  Forward: @appendixsec appendixsec
  Prev: @chapter chapter in part
  This: @appendix appendix
element: @appendixsec appendixsec
  Back: @appendix appendix
  FastBack: @appendix appendix
  This: @appendixsec appendixsec
  Up: @appendix appendix
';


$result_converted{'xml'}->{'sectioning_part_appendix'} = '<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

<section spaces=" "><sectiontitle>section</sectiontitle>

<subsection spaces=" "><sectiontitle>subsection</sectiontitle>

<subsubsection spaces=" "><sectiontitle>subsubsection</sectiontitle>

</subsubsection>
</subsection>
</section>
</chapter>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter in part</sectiontitle>

</chapter>
<chapter spaces=" "><sectiontitle>second chapter in part</sectiontitle>

</chapter>
<unnumbered spaces=" "><sectiontitle>unnumbered</sectiontitle>

</unnumbered>
</part>
<appendix spaces=" "><sectiontitle>appendix</sectiontitle>

<appendixsec spaces=" "><sectiontitle>appendixsec</sectiontitle>
</appendixsec>
</appendix>
';

1;
