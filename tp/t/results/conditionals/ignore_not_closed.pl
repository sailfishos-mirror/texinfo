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
              'contents' => [
                {
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
              'text' => '
',
              'type' => 'raw'
            },
            {
              'text' => 'This is ignored
',
              'type' => 'raw'
            }
          ],
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

$result_texis{'ignore_not_closed'} = '@ignore

This is ignored
';


$result_texts{'ignore_not_closed'} = '';

$result_errors{'ignore_not_closed'} = [
  {
    'error_line' => 'no matching `@end ignore\'
',
    'line_nr' => 3,
    'text' => 'no matching `@end ignore\'',
    'type' => 'error'
  }
];


$result_floats{'ignore_not_closed'} = {};


1;
