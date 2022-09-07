use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'verbatim_not_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'verbatim',
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
              'text' => 'some verbatim @
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@macro
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
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
$result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'verbatim_not_closed'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_not_closed'}{'contents'}[0];
$result_trees{'verbatim_not_closed'}{'contents'}[0]{'parent'} = $result_trees{'verbatim_not_closed'};

$result_texis{'verbatim_not_closed'} = '@verbatim

some verbatim @

@macro

';


$result_texts{'verbatim_not_closed'} = '
some verbatim @

@macro

';

$result_errors{'verbatim_not_closed'} = [
  {
    'error_line' => 'no matching `@end verbatim\'
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'no matching `@end verbatim\'',
    'type' => 'error'
  }
];


$result_floats{'verbatim_not_closed'} = {};


1;
