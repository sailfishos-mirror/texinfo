use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'indicateurl_end_lines'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'indicateurl',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'http://begin
'
                    },
                    {
                      'text' => 'continue on other line'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'indicateurl',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'http://begin2
'
                    },
                    {
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            }
          ],
          'type' => 'paragraph'
        },
        {
          'contents' => [
            {
              'text' => 'cut by blank line
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

$result_texis{'indicateurl_end_lines'} = '@indicateurl{http://begin
continue on other line}

@indicateurl{http://begin2

}cut by blank line
';


$result_texts{'indicateurl_end_lines'} = 'http://begin
continue on other line

http://begin2

cut by blank line
';

$result_errors{'indicateurl_end_lines'} = [
  {
    'error_line' => '@indicateurl missing closing brace
',
    'line_nr' => 4,
    'text' => '@indicateurl missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 6,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'indicateurl_end_lines'} = {};


1;
