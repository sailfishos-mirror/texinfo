use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'anchor_not_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'anchor',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'my anchor
'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'type' => 'brace_arg'
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

$result_texis{'anchor_not_closed'} = '@anchor{my anchor

}';


$result_texts{'anchor_not_closed'} = '';

$result_errors{'anchor_not_closed'} = [
  {
    'error_line' => '@anchor missing closing brace
',
    'line_nr' => 1,
    'text' => '@anchor missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'anchor_not_closed'} = {};


1;
