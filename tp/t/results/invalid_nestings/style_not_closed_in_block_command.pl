use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'style_not_closed_in_block_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'cartouche',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'cartouche '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code 
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 2,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'cartouche'
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
                'text_arg' => 'cartouche'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'style_not_closed_in_block_command'}{'contents'}[0];
$result_trees{'style_not_closed_in_block_command'}{'contents'}[0]{'parent'} = $result_trees{'style_not_closed_in_block_command'};

$result_texis{'style_not_closed_in_block_command'} = '@cartouche
cartouche @code{in code 
}@end cartouche
';


$result_texts{'style_not_closed_in_block_command'} = 'cartouche in code 
';

$result_errors{'style_not_closed_in_block_command'} = [
  {
    'error_line' => '@end cartouche seen before @code closing brace
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@end cartouche seen before @code closing brace',
    'type' => 'error'
  }
];


$result_floats{'style_not_closed_in_block_command'} = {};


1;
