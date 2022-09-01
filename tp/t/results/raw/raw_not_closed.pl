use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'raw_not_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'html',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'parent' => {},
                  'text' => 'This is some html
'
                },
                {
                  'parent' => {},
                  'text' => '<address> my address </address>
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
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
$result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'raw_not_closed'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_not_closed'}{'contents'}[0];
$result_trees{'raw_not_closed'}{'contents'}[0]{'parent'} = $result_trees{'raw_not_closed'};

$result_texis{'raw_not_closed'} = '@html

This is some html
<address> my address </address>
';


$result_texts{'raw_not_closed'} = '';

$result_errors{'raw_not_closed'} = [
  {
    'error_line' => 'no matching `@end html\'
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'no matching `@end html\'',
    'type' => 'error'
  }
];


$result_floats{'raw_not_closed'} = {};


1;
