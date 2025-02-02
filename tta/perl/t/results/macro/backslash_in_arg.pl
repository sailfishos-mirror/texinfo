use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'backslash_in_arg'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
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
        'line_nr' => 1
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' funindex {TEXT}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '@findex \\TEXT\\
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 6
              }
            }
          ],
          'extra' => {
            'macro_name' => 'funindex',
            'misc_args' => [
              'TEXT'
            ]
          },
          'source_info' => {
            'line_nr' => 4
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => '\\\\q'
                      }
                    ],
                    'type' => 'line_arg'
                  }
                ],
                'info' => {
                  'command_name' => 'funindex',
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'type' => 'macro_call_line'
              },
              'position' => 1,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            }
          ],
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'findex',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 1,
                      'position' => 3,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '\\\\q'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'fn',
              1
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 8,
            'macro' => 'funindex'
          },
          'source_marks' => [
            {
              'counter' => 2,
              'element' => {
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => '\\r'
                      }
                    ],
                    'type' => 'brace_arg'
                  }
                ],
                'info' => {
                  'command_name' => 'funindex'
                },
                'type' => 'macro_call'
              },
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            }
          ],
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'findex',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 2,
                      'position' => 2,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '\\r'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'fn',
              2
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 9,
            'macro' => 'funindex'
          },
          'source_marks' => [
            {
              'counter' => 3,
              'element' => {
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => '\\q'
                      }
                    ],
                    'type' => 'line_arg'
                  }
                ],
                'info' => {
                  'command_name' => 'funindex',
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'type' => 'macro_call_line'
              },
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            }
          ],
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'findex',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 3,
                      'position' => 2,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '\\q'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'fn',
              3
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 10,
            'macro' => 'funindex'
          },
          'source_marks' => [
            {
              'counter' => 4,
              'element' => {
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => '\\r'
                      }
                    ],
                    'type' => 'brace_arg'
                  }
                ],
                'info' => {
                  'command_name' => 'funindex'
                },
                'type' => 'macro_call'
              },
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            }
          ],
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'findex',
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 4,
                      'position' => 2,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => '\\r'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'fn',
              4
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 11,
            'macro' => 'funindex'
          },
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'fn'
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
          'extra' => {
            'misc_args' => [
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 12
          }
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
        'normalized' => 'chap'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 2
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'backslash_in_arg'}{'contents'}[2]{'contents'}[4]{'extra'}{'element_node'} = $result_trees{'backslash_in_arg'}{'contents'}[2];
$result_trees{'backslash_in_arg'}{'contents'}[2]{'contents'}[5]{'extra'}{'element_node'} = $result_trees{'backslash_in_arg'}{'contents'}[2];
$result_trees{'backslash_in_arg'}{'contents'}[2]{'contents'}[6]{'extra'}{'element_node'} = $result_trees{'backslash_in_arg'}{'contents'}[2];
$result_trees{'backslash_in_arg'}{'contents'}[2]{'contents'}[7]{'extra'}{'element_node'} = $result_trees{'backslash_in_arg'}{'contents'}[2];

$result_texis{'backslash_in_arg'} = '@node Top
@node chap

@macro funindex {TEXT}
@findex \\TEXT\\
@end macro

@findex \\\\q
@findex \\r
@findex \\q
@findex \\r
@printindex fn
';


$result_texts{'backslash_in_arg'} = '

';

$result_nodes{'backslash_in_arg'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'backslash_in_arg'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'backslash_in_arg'}[0];
$result_nodes{'backslash_in_arg'}[1] = $result_nodes{'backslash_in_arg'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'backslash_in_arg'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'backslash_in_arg'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 2,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'backslash_in_arg'} = {};


$result_indices_sort_strings{'backslash_in_arg'} = {
  'fn' => [
    '\\\\q',
    '\\q',
    '\\r',
    '\\r'
  ]
};


1;
