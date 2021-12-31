use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'unknown_commands'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => '#
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'unknown_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'unknown_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'unknown_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'unknown_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'unknown_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'unknown_commands'}{'contents'}[0];
$result_trees{'unknown_commands'}{'contents'}[0]{'parent'} = $result_trees{'unknown_commands'};

$result_texis{'unknown_commands'} = '
#
';


$result_texts{'unknown_commands'} = '
#
';

$result_errors{'unknown_commands'} = [
  {
    'error_line' => ':1: unknown command `unknwon\'
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'unknown command `unknwon\'',
    'type' => 'error'
  },
  {
    'error_line' => ':2: unexpected @
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'unexpected @',
    'type' => 'error'
  }
];


$result_floats{'unknown_commands'} = {};


1;
