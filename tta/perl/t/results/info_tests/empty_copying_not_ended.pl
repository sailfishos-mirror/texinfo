use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_copying_not_ended'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'copying',
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
            }
          ],
          'source_info' => {
            'line_nr' => 2
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'empty_copying_not_ended'} = '
@copying
';


$result_texts{'empty_copying_not_ended'} = '
';

$result_errors{'empty_copying_not_ended'} = [
  {
    'error_line' => 'no matching `@end copying\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end copying\'',
    'type' => 'error'
  }
];


$result_floats{'empty_copying_not_ended'} = {};



$result_converted{'info'}->{'empty_copying_not_ended'} = 'This is , produced from .


Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'empty_copying_not_ended'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
