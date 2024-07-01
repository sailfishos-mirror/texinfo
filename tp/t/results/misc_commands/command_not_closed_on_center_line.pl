use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'command_not_closed_on_center_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'c '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'cmdname' => 'strong',
                  'source_info' => {
                    'line_nr' => 1
                  }
                }
              ],
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'center',
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'contents' => [
            {
              'text' => 'st
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

$result_texis{'command_not_closed_on_center_line'} = '@center c @strong{
}st
';


$result_texts{'command_not_closed_on_center_line'} = 'c 
st
';

$result_errors{'command_not_closed_on_center_line'} = [
  {
    'error_line' => '@strong missing closing brace
',
    'line_nr' => 1,
    'text' => '@strong missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 2,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'command_not_closed_on_center_line'} = {};


1;
