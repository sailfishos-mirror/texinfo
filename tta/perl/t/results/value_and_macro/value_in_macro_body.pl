use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'value_in_macro_body'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'bodyarg',
              'type' => 'rawline_arg'
            },
            {
              'text' => '\\arg\\',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' bodyarg \\arg\\ 
'
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
                  'text' => ' testvaluebody { arg }
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'result: @emph{\\@value{bodyarg}\\  }
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
                'line_nr' => 5
              }
            }
          ],
          'extra' => {
            'macro_name' => 'testvaluebody',
            'misc_args' => [
              'arg'
            ]
          },
          'source_info' => {
            'line_nr' => 3
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
                            'text' => 'macro_arg1'
                          }
                        ],
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'testvaluebody'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'result: '
            },
            {
              'cmdname' => 'emph',
              'contents' => [
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
                                    'text' => 'bodyarg'
                                  }
                                ],
                                'type' => 'brace_container'
                              }
                            ]
                          },
                          'line' => '\\arg\\',
                          'position' => 1,
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'start'
                        },
                        {
                          'counter' => 1,
                          'position' => 6,
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => '\\\\arg\\  '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 7,
                'macro' => 'testvaluebody'
              },
              'source_marks' => [
                {
                  'counter' => 1,
                  'sourcemark_type' => 'macro_expansion',
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

$result_texis{'value_in_macro_body'} = '@set bodyarg \\arg\\ 

@macro testvaluebody { arg }
result: @emph{\\@value{bodyarg}\\  }
@end macro

result: @emph{\\\\arg\\  }
';


$result_texts{'value_in_macro_body'} = '

result: \\\\arg\\  
';

$result_errors{'value_in_macro_body'} = [
  {
    'error_line' => '\\ in @testvaluebody expansion followed `@value{bodyarg}\' instead of parameter name or \\
',
    'line_nr' => 7,
    'text' => '\\ in @testvaluebody expansion followed `@value{bodyarg}\' instead of parameter name or \\',
    'type' => 'error'
  }
];


$result_floats{'value_in_macro_body'} = {};


1;
