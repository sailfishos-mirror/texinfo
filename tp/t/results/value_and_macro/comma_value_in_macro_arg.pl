use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comma_value_in_macro_arg'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'comma',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => ',',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' comma ,
',
            'misc_args' => [
              'comma',
              ','
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
              'text' => 'macro1',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'arg1',
              'type' => 'macro_arg'
            },
            {
              'parent' => {},
              'text' => 'arg2',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'result: @emph{\\arg1\\} protected \\\\ -> \\\\arg1\\\\ @emph{\\arg2\\}',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            }
          ],
          'extra' => {
            'arg_line' => ' macro1 { arg1 , arg2 }
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
          'type' => 'empty_line_after_command'
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
                      'text' => 'arg1 , arg2 '
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
                'macro' => 'macro1'
              }
            },
            {
              'parent' => {},
              'text' => ' protected \\ -> \\arg1\\ '
            },
            {
              'args' => [
                {
                  'contents' => [],
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
                'macro' => 'macro1'
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
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[3];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'comma_value_in_macro_arg'}{'contents'}[0];
$result_trees{'comma_value_in_macro_arg'}{'contents'}[0]{'parent'} = $result_trees{'comma_value_in_macro_arg'};

$result_texis{'comma_value_in_macro_arg'} = '@set comma ,

@macro macro1 { arg1 , arg2 }
result: @emph{\\arg1\\} protected \\\\ -> \\\\arg1\\\\ @emph{\\arg2\\}
@end macro

result: @emph{arg1 , arg2 } protected \\ -> \\arg1\\ @emph{}
';


$result_texts{'comma_value_in_macro_arg'} = '

result: arg1 , arg2  protected \\ -> \\arg1\\ 
';

$result_errors{'comma_value_in_macro_arg'} = [];


$result_floats{'comma_value_in_macro_arg'} = {};


1;
