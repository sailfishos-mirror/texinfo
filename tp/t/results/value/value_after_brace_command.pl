use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'value_after_brace_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'bracedletter',
              'type' => 'rawline_arg'
            },
            {
              'text' => '{a}',
              'type' => 'rawline_arg'
            }
          ],
          'cmdname' => 'set',
          'info' => {
            'arg_line' => ' bracedletter {a}
'
          }
        },
        {
          'args' => [
            {
              'text' => 'unknowncmd',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@unknown',
              'type' => 'rawline_arg'
            }
          ],
          'cmdname' => 'set',
          'info' => {
            'arg_line' => ' unknowncmd @unknown
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
              'cmdname' => 'ringaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'source_marks' => [
                    {
                      'counter' => 1,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'bracedletter'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => '{a}',
                      'position' => 1,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    }
                  ],
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 4
              },
              'source_marks' => [
                {
                  'counter' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ]
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ringaccent',
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'source_marks' => [
                    {
                      'counter' => 2,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'unknowncmd'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => '@unknown',
                      'position' => 1,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    }
                  ],
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 5
              },
              'source_marks' => [
                {
                  'counter' => 2,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ]
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'source_marks' => [
                    {
                      'counter' => 3,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'bracedletter'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => '{a}',
                      'position' => 1,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    }
                  ],
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 6
              },
              'source_marks' => [
                {
                  'counter' => 3,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ]
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => '^',
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'source_marks' => [
                    {
                      'counter' => 4,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'unknowncmd'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => '@unknown',
                      'position' => 1,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    }
                  ],
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 7
              },
              'source_marks' => [
                {
                  'counter' => 4,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ]
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'code',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'source_marks' => [
                    {
                      'counter' => 5,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'bracedletter'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => '{a}',
                      'position' => 1,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    }
                  ],
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 8
              },
              'source_marks' => [
                {
                  'counter' => 5,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ]
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'code',
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'source_marks' => [
                    {
                      'counter' => 6,
                      'element' => {
                        'cmdname' => 'value',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'unknowncmd'
                              }
                            ],
                            'type' => 'brace_container'
                          }
                        ]
                      },
                      'line' => '@unknown',
                      'position' => 1,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'start'
                    }
                  ],
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 9
              },
              'source_marks' => [
                {
                  'counter' => 6,
                  'sourcemark_type' => 'value_expansion',
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
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'value_after_brace_command'} = '@set bracedletter {a}
@set unknowncmd @unknown

@ringaccent {a}
@ringaccent 
@^ {a}
@^ 
@code {a}
@code 
';


$result_texts{'value_after_brace_command'} = '
a*
*
a^
^
a

';

$result_errors{'value_after_brace_command'} = [
  {
    'error_line' => '@ringaccent expected braces
',
    'line_nr' => 5,
    'text' => '@ringaccent expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'line_nr' => 5,
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  },
  {
    'error_line' => '@^ expected braces
',
    'line_nr' => 7,
    'text' => '@^ expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'line_nr' => 7,
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  },
  {
    'error_line' => '@code expected braces
',
    'line_nr' => 9,
    'text' => '@code expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'line_nr' => 9,
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  }
];


$result_floats{'value_after_brace_command'} = {};


1;
