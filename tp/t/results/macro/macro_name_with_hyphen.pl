use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_name_with_hyphen'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'macro-one',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'arg-one',
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
              'text' => 'This \\arg-one\\ and that \\arg2\\.',
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
            'arg_line' => ' macro-one {arg-one, arg2}
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
              'text' => 'This blah and that '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'bli-bli'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => 'macro-one'
              }
            },
            {
              'parent' => {},
              'text' => '.
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
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_name_with_hyphen'}{'contents'}[0];
$result_trees{'macro_name_with_hyphen'}{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_hyphen'};

$result_texis{'macro_name_with_hyphen'} = '@macro macro-one {arg-one, arg2}
This \\arg-one\\ and that \\arg2\\.
@end macro

This blah and that @code{bli-bli}.
';


$result_texts{'macro_name_with_hyphen'} = '
This blah and that bli-bli.
';

$result_errors{'macro_name_with_hyphen'} = [];


$result_floats{'macro_name_with_hyphen'} = {};


1;
