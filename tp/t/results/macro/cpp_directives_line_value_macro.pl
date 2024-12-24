use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'cpp_directives_line_value_macro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'cmdname' => 'macro',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' vvv {}
',
                      'type' => 'macro_line'
                    }
                  ],
                  'type' => 'argument'
                },
                {
                  'text' => '#line 30 "toto"
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
                    'file_name' => 'cpp_directives_line_value_macro.texi',
                    'line_nr' => 4
                  }
                }
              ],
              'extra' => {
                'macro_name' => 'vvv',
                'misc_args' => []
              },
              'info' => {
                'arg_line' => ' vvv {}
'
              },
              'source_info' => {
                'file_name' => 'cpp_directives_line_value_macro.texi',
                'line_nr' => 2
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
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
                      'command_name' => 'vvv'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 1,
                  'position' => 15,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => '#line 30 "toto"
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
                  'text' => ' machash {}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => '#
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
                'file_name' => 'cpp_directives_line_value_macro.texi',
                'line_nr' => 10
              }
            }
          ],
          'extra' => {
            'macro_name' => 'machash',
            'misc_args' => []
          },
          'info' => {
            'arg_line' => ' machash {}
'
          },
          'source_info' => {
            'file_name' => 'cpp_directives_line_value_macro.texi',
            'line_nr' => 8
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
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'machash'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 2,
                  'position' => 1,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => '# 130
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
                  'text' => ' numberfileflag {arg}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => '\\arg\\ "titi" 3\\arg\\
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
                'file_name' => 'cpp_directives_line_value_macro.texi',
                'line_nr' => 16
              }
            }
          ],
          'extra' => {
            'macro_name' => 'numberfileflag',
            'misc_args' => [
              'arg'
            ]
          },
          'info' => {
            'arg_line' => ' numberfileflag {arg}
'
          },
          'source_info' => {
            'file_name' => 'cpp_directives_line_value_macro.texi',
            'line_nr' => 14
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
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '900'
                          }
                        ],
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'numberfileflag'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 2,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 3,
                  'position' => 17,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => '# 900 "titi" 3900
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
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'hash',
              'type' => 'rawline_arg'
            },
            {
              'text' => '#',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' hash #
'
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
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'hash'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '#',
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 1,
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ],
              'text' => '#line 71 "example.c"
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
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'cpp_directives_line_value_macro'} = '
@macro vvv {}
#line 30 "toto"
@end macro

#line 30 "toto"

@macro machash {}
#
@end macro

# 130

@macro numberfileflag {arg}
\\arg\\ "titi" 3\\arg\\
@end macro

# 900 "titi" 3900

@set hash #

#line 71 "example.c"


';


$result_texts{'cpp_directives_line_value_macro'} = '
#line 30 "toto"


# 130


# 900 "titi" 3900


#line 71 "example.c"


';

$result_errors{'cpp_directives_line_value_macro'} = [
  {
    'error_line' => 'unknown command `unknown\'
',
    'file_name' => 'cpp_directives_line_value_macro.texi',
    'line_nr' => 24,
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  }
];


$result_floats{'cpp_directives_line_value_macro'} = {};


1;
