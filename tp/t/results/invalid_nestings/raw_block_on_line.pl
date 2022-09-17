use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'raw_block_on_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
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
                  'cmdname' => 'tex',
                  'contents' => [
                    {
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
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'spaces_before_argument' => ' '
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
$result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'raw_block_on_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_on_line'}{'contents'}[0];
$result_trees{'raw_block_on_line'}{'contents'}[0]{'parent'} = $result_trees{'raw_block_on_line'};

$result_texis{'raw_block_on_line'} = '@cindex @tex
';


$result_texts{'raw_block_on_line'} = '';

$result_errors{'raw_block_on_line'} = [
  {
    'error_line' => 'no matching `@end tex\'
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'no matching `@end tex\'',
    'type' => 'error'
  }
];


$result_floats{'raw_block_on_line'} = {};


1;
