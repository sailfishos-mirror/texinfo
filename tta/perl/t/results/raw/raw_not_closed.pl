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
          'cmdname' => 'html',
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
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'text' => 'This is some html
'
                },
                {
                  'text' => '<address> my address </address>
'
                }
              ],
              'type' => 'rawpreformatted'
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

$result_texis{'raw_not_closed'} = '@html

This is some html
<address> my address </address>
';


$result_texts{'raw_not_closed'} = '
This is some html
<address> my address </address>
';

$result_errors{'raw_not_closed'} = [
  {
    'error_line' => 'no matching `@end html\'
',
    'line_nr' => 4,
    'text' => 'no matching `@end html\'',
    'type' => 'error'
  }
];


$result_floats{'raw_not_closed'} = {};


1;
