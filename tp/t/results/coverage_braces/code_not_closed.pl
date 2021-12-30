use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'code_not_closed'} = {
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
                      'text' => 'in code'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'text_root'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'code_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'code_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'code_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'code_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'code_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'code_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'code_not_closed'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'code_not_closed'}{'contents'}[0];
$result_trees{'code_not_closed'}{'contents'}[0]{'parent'} = $result_trees{'code_not_closed'};

$result_texis{'code_not_closed'} = '@code{in code}';


$result_texts{'code_not_closed'} = 'in code';

$result_errors{'code_not_closed'} = [
  {
    'error_line' => ':1: @code missing closing brace
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@code missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'code_not_closed'} = {};


1;
