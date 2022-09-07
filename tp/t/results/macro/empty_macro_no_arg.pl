use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_macro_no_arg'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'foo',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
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
            'arg_line' => ' foo
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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_macro_no_arg'}{'contents'}[0];
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_macro_no_arg'}{'contents'}[0];
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_macro_no_arg'}{'contents'}[0];
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_macro_no_arg'}{'contents'}[0];
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'empty_macro_no_arg'}{'contents'}[0];
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'empty_macro_no_arg'}{'contents'}[0];
$result_trees{'empty_macro_no_arg'}{'contents'}[0]{'parent'} = $result_trees{'empty_macro_no_arg'};

$result_texis{'empty_macro_no_arg'} = '@macro foo
@end macro




';


$result_texts{'empty_macro_no_arg'} = '



';

$result_errors{'empty_macro_no_arg'} = [];


$result_floats{'empty_macro_no_arg'} = {};


1;
