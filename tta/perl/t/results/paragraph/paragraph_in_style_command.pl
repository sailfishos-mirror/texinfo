use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'paragraph_in_style_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'a 2 paragraphs sample '
            },
            {
              'cmdname' => 'samp',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in first paragraph
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
                'line_nr' => 1
              }
            }
          ],
          'type' => 'paragraph'
        },
        {
          'contents' => [
            {
              'text' => 'in second.
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
              'text' => 'a 3 paragraphs sample '
            },
            {
              'cmdname' => 'samp',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in first paragraph
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
                'line_nr' => 5
              }
            }
          ],
          'type' => 'paragraph'
        },
        {
          'contents' => [
            {
              'text' => 'in second
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
              'text' => 'in third.
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

$result_texis{'paragraph_in_style_command'} = 'a 2 paragraphs sample @samp{in first paragraph

}in second.

a 3 paragraphs sample @samp{in first paragraph

}in second

in third.
';


$result_texts{'paragraph_in_style_command'} = 'a 2 paragraphs sample in first paragraph

in second.

a 3 paragraphs sample in first paragraph

in second

in third.
';

$result_errors{'paragraph_in_style_command'} = [
  {
    'error_line' => '@samp missing closing brace
',
    'line_nr' => 1,
    'text' => '@samp missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 3,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => '@samp missing closing brace
',
    'line_nr' => 5,
    'text' => '@samp missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 9,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'paragraph_in_style_command'} = {};


1;
