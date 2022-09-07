use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'implicit_quoting_one_arg'} = {
  'contents' => [
    {
      'contents' => [
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
              'text' => 'FIXAME',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'a',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@strong{FIXAME: \\a\\}',
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
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' FIXAME{a}
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'FIXAME: Many arguments, separated by commas, are processed here'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => 'FIXAME'
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
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[4];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[4];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[0];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'};

$result_texis{'implicit_quoting_one_arg'} = '
@macro FIXAME{a}
@strong{FIXAME: \\a\\}
@end macro

@strong{FIXAME: Many arguments, separated by commas, are processed here}
';


$result_texts{'implicit_quoting_one_arg'} = '

FIXAME: Many arguments, separated by commas, are processed here
';

$result_errors{'implicit_quoting_one_arg'} = [];


$result_floats{'implicit_quoting_one_arg'} = {};


1;
