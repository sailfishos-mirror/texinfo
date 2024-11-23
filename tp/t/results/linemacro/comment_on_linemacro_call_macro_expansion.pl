use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_on_linemacro_call_macro_expansion'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'lm',
                  'type' => 'macro_name'
                },
                {
                  'text' => 'a',
                  'type' => 'macro_arg'
                },
                {
                  'text' => 'b',
                  'type' => 'macro_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'first |\\a\\|
',
              'type' => 'raw'
            },
            {
              'text' => 'second |\\b\\|
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
                'line_nr' => 4
              }
            }
          ],
          'info' => {
            'arg_line' => ' lm {a, b}
'
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
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'mymacro',
                  'type' => 'macro_name'
                },
                {
                  'text' => 'a',
                  'type' => 'macro_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'macro \\a\\ text
',
              'type' => 'raw'
            },
            {
              'text' => 'after arg
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
                'line_nr' => 9
              }
            }
          ],
          'info' => {
            'arg_line' => ' mymacro {a}
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
                            'text' => '@lm {a} @c in comment'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => '
'
                          }
                        },
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'mymacro',
                      'spaces_after_cmd_before_arg' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 1,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'a',
                            'type' => 'bracketed_linemacro_arg'
                          }
                        ],
                        'type' => 'line_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => ''
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'line_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'lm',
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'linemacro_call'
                  },
                  'position' => 6,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'macro first |a|
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'position' => 9,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'second ||'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' in comment text
',
                  'type' => 'rawline_arg'
                }
              ]
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
              'text' => 'after arg
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

$result_texis{'comment_on_linemacro_call_macro_expansion'} = '@linemacro lm {a, b}
first |\\a\\|
second |\\b\\|
@end linemacro

@macro mymacro {a}
macro \\a\\ text
after arg
@end macro

macro first |a|
second ||@c in comment text
after arg
';


$result_texts{'comment_on_linemacro_call_macro_expansion'} = '

macro first |a|
second ||after arg
';

$result_errors{'comment_on_linemacro_call_macro_expansion'} = [];


$result_floats{'comment_on_linemacro_call_macro_expansion'} = {};


1;
