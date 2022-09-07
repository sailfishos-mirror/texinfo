use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_one_arg_end_of_file'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'onearg',
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
              'text' => 'Arg \\arg\\.',
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'macro'
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' onearg{arg}
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
              'text' => 'Arg .'
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
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_one_arg_end_of_file'}{'contents'}[0];
$result_trees{'macro_one_arg_end_of_file'}{'contents'}[0]{'parent'} = $result_trees{'macro_one_arg_end_of_file'};

$result_texis{'macro_one_arg_end_of_file'} = '@macro onearg{arg}
Arg \\arg\\.
@end macro

Arg .';


$result_texts{'macro_one_arg_end_of_file'} = '
Arg .';

$result_errors{'macro_one_arg_end_of_file'} = [];


$result_floats{'macro_one_arg_end_of_file'} = {};


1;
