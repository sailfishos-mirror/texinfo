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
              'cmdname' => 'TeX',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in tex'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
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

$result_texis{'arg_in_brace_no_arg_command'} = '@TeX{in tex}
';


$result_texts{'arg_in_brace_no_arg_command'} = 'TeX
';

$result_errors{'arg_in_brace_no_arg_command'} = [
  {
    'error_line' => 'warning: command @TeX does not accept arguments
',
    'line_nr' => 1,
    'text' => 'command @TeX does not accept arguments',
    'type' => 'warning'
  }
];


$result_floats{'arg_in_brace_no_arg_command'} = {};


1;
