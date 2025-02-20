use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_expansion'} = {
  'contents' => [
    {
      'contents' => [
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
                  'text' => ' macroone {arg1, arg2 }
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'result of a macro with \\arg1\\ and 
',
              'type' => 'raw'
            },
            {
              'text' => '@verbatim
',
              'type' => 'raw'
            },
            {
              'text' => '\\arg2\\
',
              'type' => 'raw'
            },
            {
              'text' => '@end verbatim
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
                'line_nr' => 7
              }
            }
          ],
          'extra' => {
            'macro_name' => 'macroone',
            'misc_args' => [
              'arg1',
              'arg2'
            ]
          },
          'source_info' => {
            'line_nr' => 2
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
                            'text' => 'first arg'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'second arg'
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
                      'command_name' => 'macroone',
                      'spaces_after_cmd_before_arg' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 15,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => '2 simple args. result of a macro with first arg and 
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
            },
            {
              'text' => 'second arg
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 1,
                          'position' => 8,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'verbatim.'
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
                'text_arg' => 'verbatim.'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 9,
                'macro' => 'macroone'
              }
            }
          ],
          'source_info' => {
            'line_nr' => 9,
            'macro' => 'macroone'
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
                  'counter' => 2,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'aaa @samp{a macro , } bbb'
                          }
                        ],
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'macroone'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 18,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'comma in command. result of a macro with aaa '
            },
            {
              'cmdname' => 'samp',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a macro , '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 11,
                'macro' => 'macroone'
              }
            },
            {
              'text' => ' bbb and 
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
            },
            {
              'text' => '
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 2,
                          'position' => 8,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'verbatim.'
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
                'text_arg' => 'verbatim.'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 11,
                'macro' => 'macroone'
              }
            }
          ],
          'source_info' => {
            'line_nr' => 11,
            'macro' => 'macroone'
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
                  'counter' => 3,
                  'element' => {
                    'info' => {
                      'command_name' => 'macroone'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 18,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'call on the line. result of a macro with  and 
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
            },
            {
              'text' => '
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 3,
                          'position' => 8,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'verbatim my arg.'
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
                'text_arg' => 'verbatim my arg.'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 13,
                'macro' => 'macroone'
              }
            }
          ],
          'source_info' => {
            'line_nr' => 13,
            'macro' => 'macroone'
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
                  'counter' => 4,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'first arg'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => '@macroone{nested second arg}'
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
                      'command_name' => 'macroone'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 16,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'recursive call. result of a macro with first arg and 
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
            },
            {
              'text' => '@macroone{nested second arg}
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 4,
                          'position' => 8,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'verbatim.'
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
                'text_arg' => 'verbatim.'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 15,
                'macro' => 'macroone'
              }
            }
          ],
          'source_info' => {
            'line_nr' => 15,
            'macro' => 'macroone'
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
                        'contents' => [
                          {
                            'text' => 'first , arg'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => '{} \\ '
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
                      'command_name' => 'macroone'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 15,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'protect stuff. result of a macro with first , arg and 
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
            },
            {
              'text' => '{} \\ 
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 5,
                          'position' => 8,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'verbatim.'
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
                'text_arg' => 'verbatim.'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 17,
                'macro' => 'macroone'
              }
            }
          ],
          'source_info' => {
            'line_nr' => 17,
            'macro' => 'macroone'
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
                  'counter' => 6,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'arg 1

now'
                          }
                        ],
                        'type' => 'brace_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'arg3

'
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
                      'command_name' => 'macroone'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 16,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'multi-line arg. result of a macro with arg 1
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
              'text' => 'now and 
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
            },
            {
              'text' => 'arg3
',
              'type' => 'raw'
            },
            {
              'text' => '
',
              'type' => 'raw'
            },
            {
              'text' => '
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 6,
                          'position' => 8,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'verbatim.'
                    }
                  ],
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'verbatim.'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 23,
                'macro' => 'macroone'
              }
            }
          ],
          'source_info' => {
            'line_nr' => 23,
            'macro' => 'macroone'
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'macro_expansion'} = '
@macro macroone {arg1, arg2 }
result of a macro with \\arg1\\ and 
@verbatim
\\arg2\\
@end verbatim
@end macro

2 simple args. result of a macro with first arg and 
@verbatim
second arg
@end verbatim.

comma in command. result of a macro with aaa @samp{a macro , } bbb and 
@verbatim

@end verbatim.

call on the line. result of a macro with  and 
@verbatim

@end verbatim my arg.

recursive call. result of a macro with first arg and 
@verbatim
@macroone{nested second arg}
@end verbatim.

protect stuff. result of a macro with first , arg and 
@verbatim
{} \\ 
@end verbatim.

multi-line arg. result of a macro with arg 1

now and 
@verbatim
arg3


@end verbatim.';


$result_texts{'macro_expansion'} = '

2 simple args. result of a macro with first arg and 
second arg

comma in command. result of a macro with aaa a macro ,  bbb and 


call on the line. result of a macro with  and 


recursive call. result of a macro with first arg and 
@macroone{nested second arg}

protect stuff. result of a macro with first , arg and 
{} \\ 

multi-line arg. result of a macro with arg 1

now and 
arg3


';

$result_errors{'macro_expansion'} = [
  {
    'error_line' => 'bad argument to @end: verbatim. (possibly involving @macroone)
',
    'line_nr' => 9,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim.',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: verbatim. (possibly involving @macroone)
',
    'line_nr' => 11,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim.',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @macroone defined with zero or more than one argument should be invoked with {}
',
    'line_nr' => 13,
    'text' => '@macroone defined with zero or more than one argument should be invoked with {}',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: verbatim my arg. (possibly involving @macroone)
',
    'line_nr' => 13,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim my arg.',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: verbatim. (possibly involving @macroone)
',
    'line_nr' => 15,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim.',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: use @comma{} instead of \\, in macro arg
',
    'line_nr' => 17,
    'text' => 'use @comma{} instead of \\, in macro arg',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: verbatim. (possibly involving @macroone)
',
    'line_nr' => 17,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim.',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: verbatim. (possibly involving @macroone)
',
    'line_nr' => 23,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim.',
    'type' => 'error'
  }
];


$result_floats{'macro_expansion'} = {};


1;
