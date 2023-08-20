use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'footnotestyle_separate_late'} = [
  {
    'contents' => [
      {
        'type' => 'before_node_section'
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'Top'
              }
            ],
            'info' => {
              'spaces_after_argument' => {
                'text' => '
'
              }
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'node',
        'extra' => {
          'is_target' => 1,
          'normalized' => 'Top'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 1,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'top'
              }
            ],
            'info' => {
              'spaces_after_argument' => {
                'text' => '
'
              }
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'top',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {},
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 2,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'chap f'
              }
            ],
            'info' => {
              'spaces_after_argument' => {
                'text' => '
'
              }
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'node',
        'extra' => {
          'is_target' => 1,
          'normalized' => 'chap-f'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 4,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'Chapter f'
              }
            ],
            'info' => {
              'spaces_after_argument' => {
                'text' => '
'
              }
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          },
          {
            'contents' => [
              {
                'args' => [
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'in fchap 1'
                          }
                        ],
                        'type' => 'paragraph'
                      }
                    ],
                    'type' => 'brace_command_context'
                  }
                ],
                'cmdname' => 'footnote',
                'source_info' => {
                  'file_name' => '',
                  'line_nr' => 7,
                  'macro' => ''
                }
              },
              {
                'text' => '
'
              }
            ],
            'type' => 'paragraph'
          },
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'section_number' => 1
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 5,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'chap s'
              }
            ],
            'info' => {
              'spaces_after_argument' => {
                'text' => '
'
              }
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'node',
        'extra' => {
          'is_target' => 1,
          'normalized' => 'chap-s'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 9,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'Chapter s'
              }
            ],
            'info' => {
              'spaces_after_argument' => {
                'text' => '
'
              }
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          },
          {
            'contents' => [
              {
                'args' => [
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'in fchap 2'
                          }
                        ],
                        'type' => 'paragraph'
                      }
                    ],
                    'type' => 'brace_command_context'
                  }
                ],
                'cmdname' => 'footnote',
                'source_info' => {
                  'file_name' => '',
                  'line_nr' => 12,
                  'macro' => ''
                }
              },
              {
                'text' => '
'
              }
            ],
            'type' => 'paragraph'
          },
          {
            'text' => '
',
            'type' => 'empty_line'
          },
          {
            'args' => [
              {
                'contents' => [
                  {
                    'text' => 'separate'
                  }
                ],
                'info' => {
                  'spaces_after_argument' => {
                    'text' => '
'
                  }
                },
                'type' => 'line_arg'
              }
            ],
            'cmdname' => 'footnotestyle',
            'extra' => {
              'misc_args' => [
                'separate'
              ]
            },
            'info' => {
              'spaces_before_argument' => {
                'text' => ' '
              }
            },
            'source_info' => {
              'file_name' => '',
              'line_nr' => 14,
              'macro' => ''
            }
          }
        ],
        'extra' => {
          'section_number' => 2
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 10,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  }
];
$result_trees{'footnotestyle_separate_late'}[0]{'unit_command'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'unit_command'} = $result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[2]{'unit_command'} = $result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0];

$result_texis{'footnotestyle_separate_late'} = '@node Top
@top top

@node chap f
@chapter Chapter f

@footnote{in fchap 1}

@node chap s
@chapter Chapter s

@footnote{in fchap 2}

@footnotestyle separate
';


$result_texts{'footnotestyle_separate_late'} = 'top
***

1 Chapter f
***********



2 Chapter s
***********



';

$result_sectioning{'footnotestyle_separate_late'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {
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
                          'This' => {},
                          'Up' => {}
                        },
                        'tree_unit_directions' => {
                          'prev' => {}
                        },
                        'type' => 'unit',
                        'unit_command' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => 'chap-s'
                          },
                          'structure' => {
                            'associated_unit' => {}
                          }
                        }
                      },
                      'Forward' => {},
                      'Next' => {},
                      'NodeBack' => {},
                      'NodeForward' => {},
                      'NodeNext' => {},
                      'NodePrev' => {},
                      'NodeUp' => {},
                      'This' => {},
                      'Up' => {}
                    },
                    'tree_unit_directions' => {
                      'next' => {},
                      'prev' => {}
                    },
                    'type' => 'unit',
                    'unit_command' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'normalized' => 'chap-f'
                      },
                      'structure' => {
                        'associated_unit' => {}
                      }
                    }
                  },
                  'Forward' => {},
                  'NodeForward' => {},
                  'NodeNext' => {},
                  'This' => {}
                },
                'tree_unit_directions' => {
                  'next' => {}
                },
                'type' => 'unit',
                'unit_command' => {}
              }
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {},
                'section_level' => 1,
                'section_number' => 1
              },
              'structure' => {
                'associated_unit' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {},
                'section_level' => 1,
                'section_number' => 2
              },
              'structure' => {
                'associated_unit' => {},
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0
        },
        'structure' => {
          'associated_unit' => {},
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  },
  'structure' => {}
};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'unit_command'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'associated_node'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'structure'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'extra'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'footnotestyle_separate_late'};

$result_nodes{'footnotestyle_separate_late'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {
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
                    'This' => {},
                    'Up' => {}
                  },
                  'tree_unit_directions' => {
                    'prev' => {}
                  },
                  'type' => 'unit',
                  'unit_command' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'associated_section' => {
                        'cmdname' => 'chapter',
                        'extra' => {
                          'section_number' => 2
                        },
                        'structure' => {
                          'associated_unit' => {}
                        }
                      },
                      'normalized' => 'chap-s'
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'node_prev' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'associated_section' => {
                            'cmdname' => 'chapter',
                            'extra' => {
                              'section_number' => 1
                            },
                            'structure' => {
                              'associated_unit' => {}
                            }
                          },
                          'normalized' => 'chap-f'
                        },
                        'structure' => {
                          'associated_unit' => {},
                          'node_next' => {},
                          'node_prev' => {},
                          'node_up' => {}
                        }
                      },
                      'node_up' => {}
                    }
                  }
                },
                'Forward' => {},
                'Next' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'next' => {},
                'prev' => {}
              },
              'type' => 'unit',
              'unit_command' => {}
            },
            'Forward' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {}
          },
          'type' => 'unit',
          'unit_command' => {}
        }
      }
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {},
    'node_next' => {}
  }
};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'node_prev'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_next'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_prev'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_up'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'node_up'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'node_prev'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'unit_command'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'structure'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'structure'}{'node_next'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'node_prev'};

$result_menus{'footnotestyle_separate_late'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
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
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'type' => 'unit',
              'unit_command' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'chap-s'
                },
                'structure' => {
                  'associated_unit' => {}
                }
              }
            },
            'Forward' => {},
            'Next' => {},
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {},
            'Up' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'type' => 'unit',
          'unit_command' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'chap-f'
            },
            'structure' => {
              'associated_unit' => {}
            }
          }
        },
        'Forward' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'type' => 'unit',
      'unit_command' => {}
    }
  }
};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'unit_command'} = $result_menus{'footnotestyle_separate_late'};

$result_errors{'footnotestyle_separate_late'} = [];


$result_floats{'footnotestyle_separate_late'} = {};


$result_elements{'footnotestyle_separate_late'} = [
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
              'This' => {},
              'Up' => {}
            },
            'type' => 'unit',
            'unit_command' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'chap-s'
              },
              'structure' => {
                'associated_unit' => {}
              }
            }
          },
          'Forward' => {},
          'Next' => {},
          'NodeBack' => {},
          'NodeForward' => {},
          'NodeNext' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {},
          'Up' => {}
        },
        'type' => 'unit',
        'unit_command' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'chap-f'
          },
          'structure' => {
            'associated_unit' => {}
          }
        }
      },
      'Forward' => {},
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'type' => 'unit',
    'unit_command' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'Top'
      },
      'structure' => {
        'associated_unit' => {}
      }
    }
  },
  {},
  {}
];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'Forward'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'NodeForward'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'NodeNext'} = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[1] = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[2] = $result_elements{'footnotestyle_separate_late'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};



$result_directions_text{'footnotestyle_separate_late'} = 'element: @node Top
  FastForward: @node chap f
  Forward: @node chap f
  NodeForward: @node chap f
  NodeNext: @node chap f
  This: @node Top
element: @node chap f
  Back: @node Top
  FastBack: @node Top
  FastForward: @node chap s
  Forward: @node chap s
  Next: @node chap s
  NodeBack: @node Top
  NodeForward: @node chap s
  NodeNext: @node chap s
  NodePrev: @node Top
  NodeUp: @node Top
  This: @node chap f
  Up: @node Top
element: @node chap s
  Back: @node chap f
  FastBack: @node chap f
  NodeBack: @node chap f
  NodePrev: @node chap f
  NodeUp: @node Top
  Prev: @node chap f
  This: @node chap s
  Up: @node Top
';

1;
