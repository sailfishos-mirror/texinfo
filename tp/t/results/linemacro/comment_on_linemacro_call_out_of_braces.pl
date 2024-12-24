use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_on_linemacro_call_out_of_braces'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' lm {a, b, c}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
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
              'text' => 'third |\\c\\|
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
                'line_nr' => 5
              }
            }
          ],
          'extra' => {
            'macro_name' => 'lm',
            'misc_args' => [
              'a',
              'b',
              'c'
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
                            'text' => 'something protected',
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
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'first |something protected|
'
            },
            {
              'text' => 'second ||
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'position' => 8,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'third ||'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' comment {in braces}
',
                  'type' => 'rawline_arg'
                }
              ]
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
                            'text' => ''
                          }
                        ],
                        'type' => 'line_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'lm'
                    },
                    'type' => 'linemacro_call'
                  },
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'first ||
'
            },
            {
              'text' => 'second ||
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 2,
                  'position' => 8,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'third ||'
            },
            {
              'cmdname' => 'c',
              'contents' => [
                {
                  'text' => ' comment early n l m
',
                  'type' => 'rawline_arg'
                }
              ]
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
                  'counter' => 3,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'aaa
  ',
                            'type' => 'bracketed_linemacro_arg'
                          }
                        ],
                        'type' => 'line_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'rest'
                          }
                        ],
                        'info' => {
                          'spaces_before_argument' => {
                            'text' => ' '
                          }
                        },
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
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'first |aaa
'
            },
            {
              'text' => '  |
'
            },
            {
              'text' => 'second |rest|
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 3,
                  'position' => 8,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'third ||'
            },
            {
              'cmdname' => 'comment',
              'contents' => [
                {
                  'text' => ' on second {line comment}
',
                  'type' => 'rawline_arg'
                }
              ]
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

$result_texis{'comment_on_linemacro_call_out_of_braces'} = '@linemacro lm {a, b, c}
first |\\a\\|
second |\\b\\|
third |\\c\\|
@end linemacro

first |something protected|
second ||
third ||@c comment {in braces}

first ||
second ||
third ||@c comment early n l m

first |aaa
  |
second |rest|
third ||@comment on second {line comment}
';


$result_texts{'comment_on_linemacro_call_out_of_braces'} = '
first |something protected|
second ||
third ||
first ||
second ||
third ||
first |aaa
  |
second |rest|
third ||';

$result_errors{'comment_on_linemacro_call_out_of_braces'} = [];


$result_floats{'comment_on_linemacro_call_out_of_braces'} = {};


1;
