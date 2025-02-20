use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'missing_formal_arg'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' mymacro {a, , b}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '\\a\\ and \\b\\.
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'linemacro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'linemacro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            }
          ],
          'extra' => {
            'invalid_syntax' => 1,
            'macro_name' => 'mymacro',
            'misc_args' => [
              'a',
              '',
              'b'
            ]
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'text' => ' ',
          'type' => 'spaces_before_paragraph'
        },
        {
          'contents' => [
            {
              'text' => 'one two three
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

$result_texis{'missing_formal_arg'} = '@linemacro mymacro {a, , b}
\\a\\ and \\b\\.
@end linemacro

 one two three
';


$result_texts{'missing_formal_arg'} = '
one two three
';

$result_errors{'missing_formal_arg'} = [
  {
    'error_line' => 'bad or empty @linemacro formal argument: 
',
    'line_nr' => 1,
    'text' => 'bad or empty @linemacro formal argument: ',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `mymacro\'
',
    'line_nr' => 5,
    'text' => 'unknown command `mymacro\'',
    'type' => 'error'
  }
];


$result_floats{'missing_formal_arg'} = {};


1;
