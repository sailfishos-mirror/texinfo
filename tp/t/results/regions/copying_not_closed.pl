use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'copying_not_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'copying',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
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
                  'text' => 'This is a copyright notice
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
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
$result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'copying_not_closed'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'copying_not_closed'}{'contents'}[0];
$result_trees{'copying_not_closed'}{'contents'}[0]{'parent'} = $result_trees{'copying_not_closed'};

$result_texis{'copying_not_closed'} = '@copying

This is a copyright notice
';


$result_texts{'copying_not_closed'} = '';

$result_errors{'copying_not_closed'} = [
  {
    'error_line' => 'no matching `@end copying\'
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'no matching `@end copying\'',
    'type' => 'error'
  }
];


$result_floats{'copying_not_closed'} = {};


1;
