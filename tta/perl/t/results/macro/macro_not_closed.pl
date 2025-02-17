use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_not_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' name
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'in macro
',
              'type' => 'raw'
            }
          ],
          'extra' => {
            'macro_name' => 'name',
            'misc_args' => []
          },
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

$result_texis{'macro_not_closed'} = '@macro name
in macro
';


$result_texts{'macro_not_closed'} = '';

$result_errors{'macro_not_closed'} = [
  {
    'error_line' => 'no matching `@end macro\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end macro\'',
    'type' => 'error'
  }
];


$result_floats{'macro_not_closed'} = {};


1;
