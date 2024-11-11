use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'paragraph_no_paragraph'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'mycommand',
                  'type' => 'macro_name'
                },
                {
                  'text' => 'a',
                  'type' => 'macro_arg'
                },
                {
                  'text' => 'b',
                  'type' => 'macro_arg'
                },
                {
                  'text' => 'c',
                  'type' => 'macro_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => '\\a\\, \\b\\ \\c\\
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'linemacro'
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
                'text_arg' => 'linemacro'
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
          'info' => {
            'arg_line' => ' mycommand {a, b, c}
'
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
          'cmdname' => '*'
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
                        'text' => '@anchor{aa}'
                      }
                    ],
                    'type' => 'line_arg'
                  },
                  {
                    'contents' => [
                      {
                        'text' => 'definite'
                      }
                    ],
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
                        'text' => 'and @code{more}'
                      }
                    ],
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'line_arg'
                  }
                ],
                'info' => {
                  'command_name' => 'mycommand',
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'type' => 'linemacro_call'
              },
              'position' => 1,
              'sourcemark_type' => 'linemacro_expansion',
              'status' => 'start'
            }
          ],
          'text' => ' '
        },
        {
          'cmdname' => 'anchor',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'aa'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'is_target' => 1,
            'normalized' => 'aa'
          },
          'source_info' => {
            'line_nr' => 5,
            'macro' => 'mycommand'
          }
        },
        {
          'contents' => [
            {
              'text' => ', definite and '
            },
            {
              'cmdname' => 'code',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'more'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 5,
                'macro' => 'mycommand'
              },
              'source_marks' => [
                {
                  'counter' => 1,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ]
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
                            'text' => 'a
  protected',
                            'type' => 'bracketed_linemacro_arg'
                          }
                        ],
                        'type' => 'line_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'in'
                          }
                        ],
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
                            'text' => '@var{the
 call}'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'line_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mycommand',
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'linemacro_call'
                  },
                  'position' => 10,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'Some text a
'
            },
            {
              'text' => '  protected, in '
            },
            {
              'cmdname' => 'var',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'the
'
                    },
                    {
                      'text' => ' call'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 9,
                'macro' => 'mycommand'
              },
              'source_marks' => [
                {
                  'counter' => 2,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ]
            },
            {
              'text' => '
'
            },
            {
              'text' => 'and after.
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

$result_texis{'paragraph_no_paragraph'} = '@linemacro mycommand {a, b, c}
\\a\\, \\b\\ \\c\\
@end linemacro

@* @anchor{aa}, definite and @code{more}

Some text a
  protected, in @var{the
 call}
and after.
';


$result_texts{'paragraph_no_paragraph'} = '

 , definite and more

Some text a
  protected, in the
 call
and after.
';

$result_errors{'paragraph_no_paragraph'} = [];


$result_floats{'paragraph_no_paragraph'} = {};


1;
