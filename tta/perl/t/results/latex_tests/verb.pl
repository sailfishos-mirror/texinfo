use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'verb'} = {
  'contents' => [
    {
      'contents' => [
        {
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'cmdname' => 'verb',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a',
                      'type' => 'raw'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'delimiter' => '!'
              },
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
              'cmdname' => 'verb',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a!a',
                      'type' => 'raw'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'delimiter' => '!'
              },
              'source_info' => {
                'line_nr' => 3
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
              'cmdname' => 'verb',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a
',
                      'type' => 'raw'
                    },
                    {
                      'text' => 'b',
                      'type' => 'raw'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'delimiter' => '!'
              },
              'source_info' => {
                'line_nr' => 5
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
              'cmdname' => 'verb',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a%|!:@b',
                      'type' => 'raw'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'delimiter' => '%'
              },
              'source_info' => {
                'line_nr' => 8
              }
            },
            {
              'text' => '
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

$result_texis{'verb'} = '@verb{!a!}

@verb{!a!a!}

@verb{!a
b!}

@verb{%a%|!:@b%}
';


$result_texts{'verb'} = 'a

a!a

a
b

a%|!:@b
';

$result_errors{'verb'} = [];


$result_floats{'verb'} = {};



$result_converted{'latex_text'}->{'verb'} = '\\begin{document}
\\verb!a!

\\verb|a!a|

\\verb!a!\\\\
\\verb!b!

\\verb%%
';

$result_converted_errors{'latex_text'}->{'verb'} = [
  {
    'error_line' => 'warning: \\verb delimiter `%\' (for LaTeX) used in text `a%|!:@b\'
',
    'line_nr' => 8,
    'text' => '\\verb delimiter `%\' (for LaTeX) used in text `a%|!:@b\'',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_latex'}->{'verb'} = [
  {
    'error_line' => 'warning: \\verb delimiter `%\' (for LaTeX) used in text `a%|!:@b\'
',
    'line_nr' => 8,
    'text' => '\\verb delimiter `%\' (for LaTeX) used in text `a%|!:@b\'',
    'type' => 'warning'
  }
];


1;
