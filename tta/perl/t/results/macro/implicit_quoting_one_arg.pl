use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'implicit_quoting_one_arg'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' FIXAME{a}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '@strong{FIXAME: \\a\\}
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 4
              }
            }
          ],
          'extra' => {
            'macro_name' => 'FIXAME',
            'misc_args' => [
              'a'
            ]
          },
          'source_info' => {
            'line_nr' => 2
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'Many arguments, separated by commas, are processed here'
                      }
                    ],
                    'type' => 'brace_arg'
                  }
                ],
                'info' => {
                  'command_name' => 'FIXAME'
                },
                'type' => 'macro_call'
              },
              'position' => 1,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            }
          ],
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'strong',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'FIXAME: Many arguments, separated by commas, are processed here'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 6,
                'macro' => 'FIXAME'
              },
              'source_marks' => [
                {
                  'counter' => 1,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ]
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

$result_texis{'implicit_quoting_one_arg'} = '
@macro FIXAME{a}
@strong{FIXAME: \\a\\}
@end macro

@strong{FIXAME: Many arguments, separated by commas, are processed here}
';


$result_texts{'implicit_quoting_one_arg'} = '

FIXAME: Many arguments, separated by commas, are processed here
';

$result_errors{'implicit_quoting_one_arg'} = [];


$result_floats{'implicit_quoting_one_arg'} = {};


1;
