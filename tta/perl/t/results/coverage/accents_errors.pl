use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'accents_errors'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'accent at end of line '
            },
            {
              'cmdname' => 'ringaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '
'
                }
              },
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => 'ccent at end of line and spaces '
            },
            {
              'cmdname' => 'ringaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '  
'
                }
              },
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => 'ccent followed by '
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'ringaccent',
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'cmdname' => '.'
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
              'text' => 'accent character with spaces '
            },
            {
              'cmdname' => '~',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'f'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => 'ollowing.
'
            },
            {
              'text' => 'accent character at end of line '
            },
            {
              'cmdname' => '~',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '
'
                }
              },
              'source_info' => {
                'line_nr' => 6
              }
            },
            {
              'text' => 'ccent character followed by '
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '~',
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'cmdname' => '.'
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

$result_texis{'accents_errors'} = 'accent at end of line @ringaccent
accent at end of line and spaces @ringaccent  
accent followed by @@ @ringaccent@.

accent character with spaces @~ following.
accent character at end of line @~
accent character followed by @@ @~@.
';


$result_texts{'accents_errors'} = 'accent at end of line a*ccent at end of line and spaces a*ccent followed by @ *.

accent character with spaces f~ollowing.
accent character at end of line a~ccent character followed by @ ~.
';

$result_errors{'accents_errors'} = [
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'line_nr' => 1,
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'line_nr' => 2,
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => '@ringaccent expected braces
',
    'line_nr' => 3,
    'text' => '@ringaccent expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: command `@~\' must not be followed by new line
',
    'line_nr' => 6,
    'text' => 'command `@~\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => '@~ expected braces
',
    'line_nr' => 7,
    'text' => '@~ expected braces',
    'type' => 'error'
  }
];


$result_floats{'accents_errors'} = {};


1;
