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
          'args' => [
            {
              'text' => 'bodyarg',
              'type' => 'misc_arg'
            },
            {
              'text' => '\\arg\\',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'bodyarg',
              '\\arg\\'
            ]
          },
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
          'args' => [
            {
              'text' => 'testvaluebody',
              'type' => 'macro_name'
            },
            {
              'text' => 'arg',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'result: @emph{\\@value{bodyarg}\\  }
',
              'type' => 'raw'
            },
            {
              'args' => [
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' testvaluebody { arg }
'
          },
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
        },
        {
          'contents' => [
            {
              'text' => 'result: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => '\\\\arg\\  '
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'emph',
              'source_info' => {
                'file_name' => '',
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
      'source_marks' => [
        {
          'counter' => 1,
          'element' => {
            'args' => [
              {
                'text' => 'macro_arg1'
              }
            ],
            'extra' => {
              'name' => 'testvaluebody'
            },
            'type' => 'macro_call'
          },
          'sourcemark_type' => 'macro_expansion',
          'status' => 'start'
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
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => '\\ in @testvaluebody expansion followed `@value{bodyarg}\' instead of parameter name or \\',
    'type' => 'error'
  }
];


$result_floats{'value_in_macro_body'} = {};


1;
