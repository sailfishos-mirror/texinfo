use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ifclear_in_macro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'note',
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
              'text' => '@ifclear notes 
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '\\arg\\
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@end ifclear',
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
            'arg_line' => ' note {arg}
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
              'text' => 'arg
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[3];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'ifclear_in_macro'}{'contents'}[0];
$result_trees{'ifclear_in_macro'}{'contents'}[0]{'parent'} = $result_trees{'ifclear_in_macro'};

$result_texis{'ifclear_in_macro'} = '@macro note {arg}
@ifclear notes 
\\arg\\
@end ifclear
@end macro

arg

';


$result_texts{'ifclear_in_macro'} = '
arg

';

$result_errors{'ifclear_in_macro'} = [];


$result_floats{'ifclear_in_macro'} = {};


1;
