use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'bad_formal_arg'} = {
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
                  'text' => 'bad',
                  'type' => 'macro_name'
                },
                {
                  'text' => '',
                  'type' => 'macro_arg'
                },
                {
                  'text' => 'not_empty',
                  'type' => 'macro_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'in bad macro
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
            'invalid_syntax' => 1
          },
          'info' => {
            'arg_line' => ' bad  { , not_empty}
'
          },
          'source_info' => {
            'line_nr' => 2
          }
        },
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
                  'text' => 'badspace',
                  'type' => 'macro_name'
                },
                {
                  'text' => 'first',
                  'type' => 'macro_arg'
                },
                {
                  'text' => 'in 2arg',
                  'type' => 'macro_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'bad space
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
                'line_nr' => 8
              }
            }
          ],
          'extra' => {
            'invalid_syntax' => 1
          },
          'info' => {
            'arg_line' => ' badspace{first, in 2arg}
'
          },
          'source_info' => {
            'line_nr' => 6
          }
        },
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
                  'text' => 'abar',
                  'type' => 'macro_name'
                },
                {
                  'text' => ':::',
                  'type' => 'macro_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'in bar
',
              'type' => 'raw'
            },
            {
              'text' => '@macro foo {? aaa}
',
              'type' => 'raw'
            },
            {
              'text' => 'in macro foo
',
              'type' => 'raw'
            },
            {
              'text' => '@end macro
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
                'line_nr' => 15
              }
            }
          ],
          'extra' => {
            'invalid_syntax' => 1
          },
          'info' => {
            'arg_line' => ' abar {:::}
'
          },
          'source_info' => {
            'line_nr' => 10
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'bad_formal_arg'} = '
@macro bad  { , not_empty}
in bad macro
@end macro

@macro badspace{first, in 2arg}
bad space
@end macro

@macro abar {:::}
in bar
@macro foo {? aaa}
in macro foo
@end macro
@end macro
';


$result_texts{'bad_formal_arg'} = '


';

$result_errors{'bad_formal_arg'} = [
  {
    'error_line' => 'bad or empty @macro formal argument: 
',
    'line_nr' => 2,
    'text' => 'bad or empty @macro formal argument: ',
    'type' => 'error'
  },
  {
    'error_line' => 'bad or empty @macro formal argument: in 2arg
',
    'line_nr' => 6,
    'text' => 'bad or empty @macro formal argument: in 2arg',
    'type' => 'error'
  },
  {
    'error_line' => 'bad or empty @macro formal argument: :::
',
    'line_nr' => 10,
    'text' => 'bad or empty @macro formal argument: :::',
    'type' => 'error'
  }
];


$result_floats{'bad_formal_arg'} = {};


1;
