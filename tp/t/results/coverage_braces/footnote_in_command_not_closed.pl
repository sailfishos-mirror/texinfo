use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'footnote_in_command_not_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'aaa'
            },
            {
              'cmdname' => 'code',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in code'
                    },
                    {
                      'cmdname' => 'footnote',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'in footnote'
                                }
                              ],
                              'type' => 'paragraph'
                            }
                          ],
                          'type' => 'brace_command_context'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      }
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

$result_texis{'footnote_in_command_not_closed'} = 'aaa@code{in code@footnote{in footnote}}';


$result_texts{'footnote_in_command_not_closed'} = 'aaain code';

$result_errors{'footnote_in_command_not_closed'} = [
  {
    'error_line' => '@footnote missing closing brace
',
    'line_nr' => 1,
    'text' => '@footnote missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => '@code missing closing brace
',
    'line_nr' => 1,
    'text' => '@code missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'footnote_in_command_not_closed'} = {};


1;
