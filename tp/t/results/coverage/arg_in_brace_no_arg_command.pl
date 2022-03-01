use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'arg_in_brace_no_arg_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in tex'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'TeX',
              'contents' => [],
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
$result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0];
$result_trees{'arg_in_brace_no_arg_command'}{'contents'}[0]{'parent'} = $result_trees{'arg_in_brace_no_arg_command'};

$result_texis{'arg_in_brace_no_arg_command'} = '@TeX{in tex}
';


$result_texts{'arg_in_brace_no_arg_command'} = 'TeX
';

$result_errors{'arg_in_brace_no_arg_command'} = [
  {
    'error_line' => 'warning: command @TeX does not accept arguments
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'command @TeX does not accept arguments',
    'type' => 'warning'
  }
];


$result_floats{'arg_in_brace_no_arg_command'} = {};


1;
