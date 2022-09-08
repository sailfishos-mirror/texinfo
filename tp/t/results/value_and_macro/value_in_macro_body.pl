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
              'parent' => {},
              'text' => 'bodyarg',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => '\\arg\\',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' bodyarg \\arg\\ 
',
            'misc_args' => [
              'bodyarg',
              '\\arg\\'
            ]
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'testvaluebody',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'arg',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'result: @emph{\\@value{bodyarg}\\  }',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'macro'
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' testvaluebody { arg }
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'result: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '\\\\arg\\  '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'emph',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => 'testvaluebody'
              }
            },
            {
              'parent' => {},
              'text' => '
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[0];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[0];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'value_in_macro_body'}{'contents'}[0];
$result_trees{'value_in_macro_body'}{'contents'}[0]{'parent'} = $result_trees{'value_in_macro_body'};

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
