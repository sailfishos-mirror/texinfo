use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'lone_Top_node'} = [
  {
    'contents' => [
      {
        'contents' => [
          {
            'type' => 'preamble_before_content'
          }
        ],
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
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          },
          {
            'args' => [
              {
                'info' => {
                  'spaces_after_argument' => {
                    'text' => '
'
                  }
                },
                'type' => 'block_line_arg'
              }
            ],
            'cmdname' => 'menu',
            'contents' => [
              {
                'contents' => [
                  {
                    'text' => '* ',
                    'type' => 'menu_entry_leading_text'
                  },
                  {
                    'contents' => [
                      {
                        'text' => 'First'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'First'
                    },
                    'type' => 'menu_entry_node'
                  },
                  {
                    'text' => '::',
                    'type' => 'menu_entry_separator'
                  },
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '
'
                          }
                        ],
                        'type' => 'preformatted'
                      }
                    ],
                    'type' => 'menu_entry_description'
                  }
                ],
                'source_info' => {
                  'file_name' => '',
                  'line_nr' => 4,
                  'macro' => ''
                },
                'type' => 'menu_entry'
              },
              {
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => 'menu'
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
                'cmdname' => 'end',
                'extra' => {
                  'text_arg' => 'menu'
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
            'source_info' => {
              'file_name' => '',
              'line_nr' => 3,
              'macro' => ''
            }
          },
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
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
                'text' => 'First'
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
          'normalized' => 'First'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 7,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'chap'
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
          'line_nr' => 8,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  }
];
$result_trees{'lone_Top_node'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'lone_Top_node'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'lone_Top_node'}[0]{'unit_command'} = $result_trees{'lone_Top_node'}[0]{'contents'}[3];

$result_texis{'lone_Top_node'} = '@node Top

@menu
* First::
@end menu

@node First
@chapter chap
';


$result_texts{'lone_Top_node'} = '
* First::

1 chap
******
';

$result_sectioning{'lone_Top_node'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'First'
            },
            'structure' => {
              'associated_unit' => {
                'directions' => {
                  'NodePrev' => {},
                  'NodeUp' => {},
                  'This' => {}
                },
                'type' => 'unit',
                'unit_command' => {}
              }
            }
          },
          'section_directions' => {
            'up' => {}
          },
          'section_level' => 1,
          'section_number' => 1
        },
        'structure' => {
          'associated_unit' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'NodePrev'} = $result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'NodeUp'} = $result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'unit_command'} = $result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'lone_Top_node'};
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};

$result_nodes{'lone_Top_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'node_directions' => {
      'next' => {
        'cmdname' => 'node',
        'extra' => {
          'associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
              'section_number' => 1
            },
            'structure' => {
              'associated_unit' => {
                'directions' => {
                  'NodePrev' => {},
                  'NodeUp' => {},
                  'This' => {}
                },
                'type' => 'unit',
                'unit_command' => {}
              }
            }
          },
          'node_directions' => {
            'prev' => {},
            'up' => {}
          },
          'normalized' => 'First'
        },
        'structure' => {
          'associated_unit' => {}
        }
      }
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {},
    'menu_child' => {}
  }
};
$result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'NodePrev'} = $result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'NodeUp'} = $result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'unit_command'} = $result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'};
$result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'lone_Top_node'};
$result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'lone_Top_node'};
$result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'structure'}{'associated_unit'} = $result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'lone_Top_node'}{'structure'}{'associated_unit'} = $result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'lone_Top_node'}{'structure'}{'menu_child'} = $result_nodes{'lone_Top_node'}{'extra'}{'node_directions'}{'next'};

$result_menus{'lone_Top_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {
      'directions' => {
        'NodePrev' => {},
        'NodeUp' => {},
        'This' => {}
      },
      'type' => 'unit',
      'unit_command' => {
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => 1
        },
        'structure' => {
          'associated_unit' => {}
        }
      }
    },
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'menu_directions' => {
          'up' => {}
        },
        'normalized' => 'First'
      },
      'structure' => {
        'associated_unit' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'lone_Top_node'}{'structure'}{'associated_unit'}{'directions'}{'NodePrev'} = $result_menus{'lone_Top_node'}{'structure'}{'associated_unit'};
$result_menus{'lone_Top_node'}{'structure'}{'associated_unit'}{'directions'}{'NodeUp'} = $result_menus{'lone_Top_node'}{'structure'}{'associated_unit'};
$result_menus{'lone_Top_node'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_menus{'lone_Top_node'}{'structure'}{'associated_unit'};
$result_menus{'lone_Top_node'}{'structure'}{'associated_unit'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'lone_Top_node'}{'structure'}{'associated_unit'};
$result_menus{'lone_Top_node'}{'structure'}{'menu_child'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'lone_Top_node'};
$result_menus{'lone_Top_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'} = $result_menus{'lone_Top_node'}{'structure'}{'associated_unit'};

$result_errors{'lone_Top_node'} = [
  {
    'error_line' => 'warning: node `Top\' is up for `First\' in menu but not in sectioning
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'node `Top\' is up for `First\' in menu but not in sectioning',
    'type' => 'warning'
  }
];


$result_floats{'lone_Top_node'} = {};


$result_elements{'lone_Top_node'} = [
  {
    'directions' => {
      'NodePrev' => {},
      'NodeUp' => {},
      'This' => {}
    },
    'type' => 'unit',
    'unit_command' => {
      'cmdname' => 'chapter',
      'extra' => {
        'section_number' => 1
      },
      'structure' => {
        'associated_unit' => {}
      }
    }
  }
];
$result_elements{'lone_Top_node'}[0]{'directions'}{'NodePrev'} = $result_elements{'lone_Top_node'}[0];
$result_elements{'lone_Top_node'}[0]{'directions'}{'NodeUp'} = $result_elements{'lone_Top_node'}[0];
$result_elements{'lone_Top_node'}[0]{'directions'}{'This'} = $result_elements{'lone_Top_node'}[0];
$result_elements{'lone_Top_node'}[0]{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'lone_Top_node'}[0];



$result_directions_text{'lone_Top_node'} = 'element: @chapter chap
  NodePrev: @chapter chap
  NodeUp: @chapter chap
  This: @chapter chap
';


$result_converted{'latex_text'}->{'lone_Top_node'} = '\\begin{document}
\\label{anchor:Top}%
\\chapter{{chap}}
\\label{anchor:First}%
';

1;
