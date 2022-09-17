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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'bullet',
                  'parent' => {},
                  'type' => 'command_as_argument_inserted'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in item
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
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
$result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0];
$result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0];
$result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'not_closed_item'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_closed_item'}{'contents'}[0];
$result_trees{'not_closed_item'}{'contents'}[0]{'parent'} = $result_trees{'not_closed_item'};

$result_texis{'not_closed_item'} = '@itemize
@item in item
';


$result_texts{'not_closed_item'} = 'in item
';

$result_errors{'not_closed_item'} = [
  {
    'error_line' => 'no matching `@end itemize\'
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'no matching `@end itemize\'',
    'type' => 'error'
  }
];


$result_floats{'not_closed_item'} = {};


1;
