use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'verb_at_end_of_line_not_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'verb at end of line '
            },
            {
              'cmdname' => 'verb',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'raw'
                    },
                    {
                      'text' => '
',
                      'type' => 'raw'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'delimiter' => ''
              },
              'source_info' => {
                'line_nr' => 1
              }
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

$result_texis{'verb_at_end_of_line_not_closed'} = 'verb at end of line @verb{

}';


$result_texts{'verb_at_end_of_line_not_closed'} = 'verb at end of line 

';

$result_errors{'verb_at_end_of_line_not_closed'} = [
  {
    'error_line' => '@verb without associated character
',
    'line_nr' => 1,
    'text' => '@verb without associated character',
    'type' => 'error'
  },
  {
    'error_line' => '@verb missing closing brace
',
    'line_nr' => 1,
    'text' => '@verb missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'verb_at_end_of_line_not_closed'} = {};


1;
