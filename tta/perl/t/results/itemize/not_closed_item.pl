use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'not_closed_item'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'itemize',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'bullet',
                      'info' => {
                        'inserted' => 1
                      }
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'text' => 'in item
'
                    }
                  ],
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'source_info' => {
                'line_nr' => 2
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'source_info' => {
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'not_closed_item'} = '@itemize
@item in item
';


$result_texts{'not_closed_item'} = 'in item
';

$result_errors{'not_closed_item'} = [
  {
    'error_line' => 'no matching `@end itemize\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end itemize\'',
    'type' => 'error'
  }
];


$result_floats{'not_closed_item'} = {};


1;
