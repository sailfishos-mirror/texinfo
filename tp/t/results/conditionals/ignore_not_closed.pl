use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ignore_not_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'ignore',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
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
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => 'This is ignored
',
              'type' => 'raw'
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
$result_trees{'ignore_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'ignore_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'ignore_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ignore_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'ignore_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ignore_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'ignore_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'ignore_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'ignore_not_closed'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ignore_not_closed'}{'contents'}[0];
$result_trees{'ignore_not_closed'}{'contents'}[0]{'parent'} = $result_trees{'ignore_not_closed'};

$result_texis{'ignore_not_closed'} = '@ignore

This is ignored
';


$result_texts{'ignore_not_closed'} = '';

$result_errors{'ignore_not_closed'} = [
  {
    'error_line' => 'no matching `@end ignore\'
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'no matching `@end ignore\'',
    'type' => 'error'
  }
];


$result_floats{'ignore_not_closed'} = {};


1;
