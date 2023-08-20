use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'explicit_node_directions'} = [
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
        'contents' => [
          {
            'contents' => [
              {
                'text' => 'Top node
'
              }
            ],
            'type' => 'paragraph'
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
                        'text' => 'chap node'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'chap-node'
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
                'contents' => [
                  {
                    'text' => '* ',
                    'type' => 'menu_entry_leading_text'
                  },
                  {
                    'contents' => [
                      {
                        'text' => 'third node'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'third-node'
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
                  'line_nr' => 5,
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
                  'line_nr' => 6,
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
                'text' => 'chap node'
              }
            ],
            'type' => 'line_arg'
          },
          {
            'contents' => [
              {
                'text' => 'third node'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'third-node'
            },
            'info' => {
              'spaces_before_argument' => {
                'text' => ' '
              }
            },
            'type' => 'line_arg'
          },
          {
            'contents' => [
              {
                'text' => 'Top'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'Top'
            },
            'type' => 'line_arg'
          },
          {
            'contents' => [
              {
                'text' => 'Top'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'Top'
            },
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
            'contents' => [
              {
                'text' => 'second node
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
          'is_target' => 1,
          'normalized' => 'chap-node'
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
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'third node'
              }
            ],
            'type' => 'line_arg'
          },
          {
            'type' => 'line_arg'
          },
          {
            'contents' => [
              {
                'text' => 'chap node'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'chap-node'
            },
            'type' => 'line_arg'
          },
          {
            'contents' => [
              {
                'text' => 'Top'
              }
            ],
            'extra' => {
              'node_content' => [
                {}
              ],
              'normalized' => 'Top'
            },
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
          'normalized' => 'third-node'
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 12,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  }
];
$result_trees{'explicit_node_directions'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'explicit_node_directions'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'explicit_node_directions'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'explicit_node_directions'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'explicit_node_directions'}[0]{'unit_command'} = $result_trees{'explicit_node_directions'}[0]{'contents'}[1];
$result_trees{'explicit_node_directions'}[1]{'contents'}[0]{'args'}[1]{'extra'}{'node_content'}[0] = $result_trees{'explicit_node_directions'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'explicit_node_directions'}[1]{'contents'}[0]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'explicit_node_directions'}[1]{'contents'}[0]{'args'}[2]{'contents'}[0];
$result_trees{'explicit_node_directions'}[1]{'contents'}[0]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'explicit_node_directions'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'explicit_node_directions'}[1]{'unit_command'} = $result_trees{'explicit_node_directions'}[1]{'contents'}[0];
$result_trees{'explicit_node_directions'}[2]{'contents'}[0]{'args'}[2]{'extra'}{'node_content'}[0] = $result_trees{'explicit_node_directions'}[2]{'contents'}[0]{'args'}[2]{'contents'}[0];
$result_trees{'explicit_node_directions'}[2]{'contents'}[0]{'args'}[3]{'extra'}{'node_content'}[0] = $result_trees{'explicit_node_directions'}[2]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'explicit_node_directions'}[2]{'unit_command'} = $result_trees{'explicit_node_directions'}[2]{'contents'}[0];

$result_texis{'explicit_node_directions'} = '@node Top
Top node
@menu
* chap node::
* third node::
@end menu

@node chap node, third node,Top,Top

second node

@node third node,,chap node,Top
';


$result_texts{'explicit_node_directions'} = 'Top node
* chap node::
* third node::


second node

';

$result_nodes{'explicit_node_directions'} = {
  'cmdname' => 'node',
  'extra' => {
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {
      'directions' => {
        'Forward' => {
          'directions' => {
            'Back' => {},
            'Forward' => {
              'directions' => {
                'Back' => {},
                'NodeBack' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'type' => 'unit',
              'unit_command' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'third-node'
                },
                'structure' => {
                  'associated_unit' => {},
                  'node_prev' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'chap-node'
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
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'type' => 'unit',
          'unit_command' => {}
        },
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'type' => 'unit',
      'unit_command' => {}
    },
    'menu_child' => {},
    'node_next' => {}
  }
};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'associated_unit'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_next'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_prev'} = $result_nodes{'explicit_node_directions'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'}{'structure'}{'node_up'} = $result_nodes{'explicit_node_directions'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_up'} = $result_nodes{'explicit_node_directions'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'unit_command'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'unit_command'} = $result_nodes{'explicit_node_directions'};
$result_nodes{'explicit_node_directions'}{'structure'}{'menu_child'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'};
$result_nodes{'explicit_node_directions'}{'structure'}{'node_next'} = $result_nodes{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'node_prev'};

$result_menus{'explicit_node_directions'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {
      'directions' => {
        'Forward' => {
          'directions' => {
            'Back' => {},
            'Forward' => {
              'directions' => {
                'Back' => {},
                'NodeBack' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'type' => 'unit',
              'unit_command' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'third-node'
                },
                'structure' => {
                  'associated_unit' => {},
                  'menu_prev' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'chap-node'
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'menu_next' => {},
                      'menu_up' => {},
                      'menu_up_hash' => {
                        'Top' => 1
                      }
                    }
                  },
                  'menu_up' => {},
                  'menu_up_hash' => {
                    'Top' => 1
                  }
                }
              }
            },
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'type' => 'unit',
          'unit_command' => {}
        },
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'type' => 'unit',
      'unit_command' => {}
    },
    'menu_child' => {}
  }
};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'associated_unit'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_next'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'} = $result_menus{'explicit_node_directions'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_up'} = $result_menus{'explicit_node_directions'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'unit_command'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'unit_command'} = $result_menus{'explicit_node_directions'};
$result_menus{'explicit_node_directions'}{'structure'}{'menu_child'} = $result_menus{'explicit_node_directions'}{'structure'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'};

$result_errors{'explicit_node_directions'} = [];


$result_floats{'explicit_node_directions'} = {};


$result_elements{'explicit_node_directions'} = [
  {
    'directions' => {
      'Forward' => {
        'directions' => {
          'Back' => {},
          'Forward' => {
            'directions' => {
              'Back' => {},
              'NodeBack' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'This' => {}
            },
            'type' => 'unit',
            'unit_command' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'third-node'
              },
              'structure' => {
                'associated_unit' => {},
                'menu_prev' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap-node'
                  },
                  'structure' => {
                    'associated_unit' => {},
                    'menu_next' => {},
                    'menu_up' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'normalized' => 'Top'
                      },
                      'structure' => {
                        'associated_unit' => {},
                        'menu_child' => {}
                      }
                    },
                    'menu_up_hash' => {
                      'Top' => 1
                    }
                  }
                },
                'menu_up' => {},
                'menu_up_hash' => {
                  'Top' => 1
                }
              }
            }
          },
          'NodeBack' => {},
          'NodeForward' => {},
          'NodeNext' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {}
        },
        'type' => 'unit',
        'unit_command' => {}
      },
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'type' => 'unit',
    'unit_command' => {}
  },
  {},
  {}
];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'associated_unit'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_next'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'}{'structure'}{'associated_unit'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'}{'structure'}{'menu_child'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_up'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'unit_command'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'NodeForward'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'NodeNext'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[0]{'directions'}{'This'} = $result_elements{'explicit_node_directions'}[0];
$result_elements{'explicit_node_directions'}[0]{'unit_command'} = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'};
$result_elements{'explicit_node_directions'}[1] = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'};
$result_elements{'explicit_node_directions'}[2] = $result_elements{'explicit_node_directions'}[0]{'directions'}{'Forward'}{'directions'}{'Forward'};



$result_directions_text{'explicit_node_directions'} = 'element: @node Top
  Forward: @node chap node
  NodeForward: @node chap node
  NodeNext: @node chap node
  This: @node Top
element: @node chap node
  Back: @node Top
  Forward: @node third node
  NodeBack: @node Top
  NodeForward: @node third node
  NodeNext: @node third node
  NodePrev: @node Top
  NodeUp: @node Top
  This: @node chap node
element: @node third node
  Back: @node chap node
  NodeBack: @node chap node
  NodePrev: @node chap node
  NodeUp: @node Top
  This: @node third node
';


$result_converted{'info'}->{'explicit_node_directions'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap node,  Up: (dir)

Top node
* Menu:

* chap node::
* third node::


File: ,  Node: chap node,  Next: third node,  Prev: Top,  Up: Top

second node


File: ,  Node: third node,  Prev: chap node,  Up: Top



Tag Table:
Node: Top27
Node: chap node127
Node: third node209

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'explicit_node_directions'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
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
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap-node" accesskey="n" rel="next">chap node</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<p>Top node
</p>
<hr>
<a class="node-id" id="chap-node"></a><div class="nav-panel">
<p>
Next: <a href="#third-node" accesskey="n" rel="next">third node</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Top</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap node<a class="copiable-link" href="#chap-node"> &para;</a></span></h4>

<p>second node
</p>
<hr>
<a class="node-id" id="third-node"></a><div class="nav-panel">
<p>
Previous: <a href="#chap-node" accesskey="p" rel="prev">chap node</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>third node<a class="copiable-link" href="#third-node"> &para;</a></span></h4>



</body>
</html>
';

$result_converted_errors{'html'}->{'explicit_node_directions'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'explicit_node_directions'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap node</nodenext></node>
<para>Top node
</para><menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chap node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>third node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node name="chap-node" spaces=" "><nodename>chap node</nodename><nodenext spaces=" ">third node</nodenext><nodeprev>Top</nodeprev><nodeup>Top</nodeup></node>

<para>second node
</para>
<node name="third-node" spaces=" "><nodename>third node</nodename><nodenext></nodenext><nodeprev>chap node</nodeprev><nodeup>Top</nodeup></node>
';

1;
