use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'implicit_quoting_recursion'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'rmacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' cat{a,b}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '\\a\\\\b\\
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'rmacro'
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
                'text_arg' => 'rmacro'
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
            'macro_name' => 'cat',
            'misc_args' => [
              'a',
              'b'
            ]
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
                        'contents' => [
                          {
                            'text' => '@cat{@cat{@cat{@cat{@cat{na, to}, po}, co}, tu}, oto}'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'tam'
                          }
                        ],
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'cat'
                    },
                    'type' => 'rmacro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 2,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '@cat{@cat{@cat{@cat{na, to}, po}, co}, tu}'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'oto'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'cat'
                    },
                    'type' => 'rmacro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 3,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '@cat{@cat{@cat{na, to}, po}, co}'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'tu'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'cat'
                    },
                    'type' => 'rmacro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 4,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '@cat{@cat{na, to}, po}'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'co'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'cat'
                    },
                    'type' => 'rmacro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 5,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '@cat{na, to}'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'po'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'cat'
                    },
                    'type' => 'rmacro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 6,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'na'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'to'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'cat'
                    },
                    'type' => 'rmacro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 6,
                  'position' => 4,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 5,
                  'position' => 6,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 4,
                  'position' => 8,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 3,
                  'position' => 10,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 2,
                  'position' => 13,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 1,
                  'position' => 16,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'natopocotuototam
'
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

$result_texis{'implicit_quoting_recursion'} = '@rmacro cat{a,b}
\\a\\\\b\\
@end rmacro

natopocotuototam
';


$result_texts{'implicit_quoting_recursion'} = '
natopocotuototam
';

$result_errors{'implicit_quoting_recursion'} = [];


$result_floats{'implicit_quoting_recursion'} = {};


1;
