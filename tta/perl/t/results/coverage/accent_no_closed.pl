use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'accent_no_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => '~',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
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

$result_texis{'accent_no_closed'} = '@~{e}';


$result_texts{'accent_no_closed'} = 'e~';

$result_errors{'accent_no_closed'} = [
  {
    'error_line' => '@~ missing closing brace
',
    'line_nr' => 1,
    'text' => '@~ missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'accent_no_closed'} = {};


1;
