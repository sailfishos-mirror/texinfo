use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'two_macros_on_a_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' mymacro
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'in mymacro
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
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' mymacrowithargs{arg}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'in with args
',
              'type' => 'raw'
            },
            {
              'text' => 'now the arg \\arg\\
',
              'type' => 'raw'
            },
            {
              'text' => 'after
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
            'macro_name' => 'mymacrowithargs',
            'misc_args' => [
              'arg'
            ]
          },
          'source_info' => {
            'line_nr' => 5
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '@'
            },
            {
              'text' => 'mymacro'
            },
            {
              'cmdname' => '{'
            },
            {
              'cmdname' => '}'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => 'mymacro'
            },
            {
              'cmdname' => '{'
            },
            {
              'cmdname' => '}'
            },
            {
              'text' => '
'
            },
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
                  'position' => 10,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 2,
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
                  'position' => 11,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 2,
                  'position' => 21,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'in mymacro in mymacro
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
          'contents' => [
            {
              'cmdname' => '@'
            },
            {
              'text' => 'mymacro '
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => 'mymacro'
            },
            {
              'cmdname' => '{'
            },
            {
              'cmdname' => '}'
            },
            {
              'text' => '
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 3,
                  'element' => {
                    'info' => {
                      'command_name' => 'mymacro'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 3,
                  'position' => 10,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 4,
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
                  'position' => 11,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 4,
                  'position' => 21,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'in mymacro in mymacro
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
          'contents' => [
            {
              'cmdname' => '@'
            },
            {
              'text' => 'mymacro'
            },
            {
              'cmdname' => '{'
            },
            {
              'cmdname' => '}'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => 'mymacro
'
            },
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
                      'command_name' => 'mymacro'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 5,
                  'position' => 10,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 6,
                  'element' => {
                    'info' => {
                      'command_name' => 'mymacro'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 11,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 6,
                  'position' => 21,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'in mymacro in mymacro
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
          'contents' => [
            {
              'text' => 'with args
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 7,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'an
arg

in macro'
                          }
                        ],
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mymacrowithargs',
                      'spaces_after_cmd_before_arg' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'in with args
'
            },
            {
              'text' => 'now the arg an
'
            },
            {
              'text' => 'arg
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
          'contents' => [
            {
              'text' => 'in macro
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 7,
                  'position' => 5,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 8,
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
                  'position' => 6,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 8,
                  'position' => 16,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'after in mymacro
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

$result_texis{'two_macros_on_a_line'} = '@macro mymacro
in mymacro
@end macro

@macro mymacrowithargs{arg}
in with args
now the arg \\arg\\
after
@end macro


@@mymacro@{@} @@mymacro@{@}
in mymacro in mymacro

@@mymacro @@mymacro@{@}
in mymacro in mymacro

@@mymacro@{@} @@mymacro
in mymacro in mymacro

with args
in with args
now the arg an
arg

in macro
after in mymacro
';


$result_texts{'two_macros_on_a_line'} = '


@mymacro{} @mymacro{}
in mymacro in mymacro

@mymacro @mymacro{}
in mymacro in mymacro

@mymacro{} @mymacro
in mymacro in mymacro

with args
in with args
now the arg an
arg

in macro
after in mymacro
';

$result_errors{'two_macros_on_a_line'} = [];


$result_floats{'two_macros_on_a_line'} = {};


1;
