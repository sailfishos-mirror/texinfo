use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'arobase_brace_in_macro_call'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' simplemac { arg1 , arg2 }
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'first: \\arg1\\|
',
              'type' => 'raw'
            },
            {
              'text' => 'second: \\arg2\\|
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
            'macro_name' => 'simplemac',
            'misc_args' => [
              'arg1',
              'arg2'
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
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '@{ , @} '
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'simplemac'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'first: '
            },
            {
              'cmdname' => '{'
            },
            {
              'text' => ' , '
            },
            {
              'cmdname' => '}'
            },
            {
              'text' => ' |
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'position' => 9,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'second: |
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
              'source_marks' => [
                {
                  'counter' => 2,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '@'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'simplemac'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'first: '
            },
            {
              'cmdname' => '|'
            },
            {
              'text' => '
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 2,
                  'position' => 9,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'second: | , '
            },
            {
              'cmdname' => '{'
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

$result_texis{'arobase_brace_in_macro_call'} = '@macro simplemac { arg1 , arg2 }
first: \\arg1\\|
second: \\arg2\\|
@end macro

first: @{ , @} |
second: |

first: @|
second: | , @{ 
';


$result_texts{'arobase_brace_in_macro_call'} = '
first: { , } |
second: |

first: 
second: | , { 
';

$result_errors{'arobase_brace_in_macro_call'} = [
  {
    'error_line' => '@| should only appear in heading or footing (possibly involving @simplemac)
',
    'line_nr' => 8,
    'macro' => 'simplemac',
    'text' => '@| should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 8,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'arobase_brace_in_macro_call'} = {};


1;
