use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_macro_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' mymacro{}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'text
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
                'line_nr' => 3
              }
            }
          ],
          'extra' => {
            'macro_name' => 'mymacro',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'contents' => [
                      {
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mymacro'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 1,
                  'position' => 4,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 2,
                  'element' => {
                    'contents' => [
                      {
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mymacro'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 5,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 2,
                  'position' => 9,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 3,
                  'element' => {
                    'contents' => [
                      {
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => '  '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mymacro'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 10,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 3,
                  'position' => 14,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 4,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'x'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => '  '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mymacro'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 15,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 4,
                  'position' => 19,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'text text text text
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
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' mytwo{arg}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'X\\arg\\X
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
                'line_nr' => 9
              }
            }
          ],
          'extra' => {
            'macro_name' => 'mytwo',
            'misc_args' => [
              'arg'
            ]
          },
          'source_info' => {
            'line_nr' => 7
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 5,
                  'element' => {
                    'contents' => [
                      {
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mytwo'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 5,
                  'position' => 2,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 6,
                  'element' => {
                    'contents' => [
                      {
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mytwo'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 3,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 6,
                  'position' => 5,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 7,
                  'element' => {
                    'contents' => [
                      {
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => '  '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mytwo'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 6,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 7,
                  'position' => 8,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 8,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'x'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => '  '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mytwo'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 9,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 8,
                  'position' => 12,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'XX XX XX XxX'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'empty_macro_argument'} = '@macro mymacro{}
text
@end macro

text text text text

@macro mytwo{arg}
X\\arg\\X
@end macro

XX XX XX XxX';


$result_texts{'empty_macro_argument'} = '
text text text text


XX XX XX XxX';

$result_errors{'empty_macro_argument'} = [
  {
    'error_line' => 'macro `mymacro\' declared without argument called with an argument
',
    'line_nr' => 5,
    'text' => 'macro `mymacro\' declared without argument called with an argument',
    'type' => 'error'
  }
];


$result_floats{'empty_macro_argument'} = {};


1;
