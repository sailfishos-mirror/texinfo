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
              'parent' => {},
              'text' => 'accent at end of line '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => 'ringaccent',
              'contents' => [],
              'extra' => {
                'spaces' => '
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'ccent at end of line and spaces '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => 'ringaccent',
              'contents' => [],
              'extra' => {
                'spaces' => '  
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'ccent followed by '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => 'ringaccent',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'cmdname' => '.',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'accent character with spaces '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'f'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '~',
              'contents' => [],
              'extra' => {
                'spaces' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'ollowing.
'
            },
            {
              'parent' => {},
              'text' => 'accent character at end of line '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '~',
              'contents' => [],
              'extra' => {
                'spaces' => '
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'ccent character followed by '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '~',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            },
            {
              'cmdname' => '.',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[9]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'contents'}[10]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents_errors'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'accents_errors'}{'contents'}[0];
$result_trees{'accents_errors'}{'contents'}[0]{'parent'} = $result_trees{'accents_errors'};

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
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'use braces to give a command as an argument to @ringaccent
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'use braces to give a command as an argument to @ringaccent',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: command `@~\' must not be followed by new line
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'command `@~\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'use braces to give a command as an argument to @~
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'use braces to give a command as an argument to @~',
    'type' => 'error'
  }
];


$result_floats{'accents_errors'} = {};


1;
