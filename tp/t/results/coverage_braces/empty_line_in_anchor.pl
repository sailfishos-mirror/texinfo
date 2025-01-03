use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_line_in_anchor'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'anchor',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'an
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
        },
        {
          'contents' => [
            {
              'text' => 'anchor
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'empty_line_in_anchor'} = '@anchor{an

}anchor
';


$result_texts{'empty_line_in_anchor'} = 'anchor
';

$result_errors{'empty_line_in_anchor'} = [
  {
    'error_line' => '@anchor missing closing brace
',
    'line_nr' => 1,
    'text' => '@anchor missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 3,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'empty_line_in_anchor'} = {};


1;
