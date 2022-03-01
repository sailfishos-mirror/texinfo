use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'menu_no_closed_entry_beginning'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'menu',
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '* node'
                    }
                  ],
                  'parent' => {},
                  'type' => 'preformatted'
                }
              ],
              'parent' => {},
              'type' => 'menu_comment'
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
$result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0];
$result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0];
$result_trees{'menu_no_closed_entry_beginning'}{'contents'}[0]{'parent'} = $result_trees{'menu_no_closed_entry_beginning'};

$result_texis{'menu_no_closed_entry_beginning'} = '@menu
* node';


$result_texts{'menu_no_closed_entry_beginning'} = '* node';

$result_errors{'menu_no_closed_entry_beginning'} = [
  {
    'error_line' => 'no matching `@end menu\'
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'no matching `@end menu\'',
    'type' => 'error'
  }
];


$result_floats{'menu_no_closed_entry_beginning'} = {};


1;
