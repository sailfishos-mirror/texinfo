use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_in_linemacro_call'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' lm {a, b}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'c \\a\\ d
',
              'type' => 'raw'
            },
            {
              'text' => '\\b\\
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
          'extra' => {
            'macro_name' => 'lm',
            'misc_args' => [
              'a',
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
                            'text' => '@code{
something @comment in}'
                          }
                        ],
                        'type' => 'line_arg'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'out'
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
              'text' => 'c '
            },
            {
              'cmdname' => 'code',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '
'
                    },
                    {
                      'text' => 'something '
                    },
                    {
                      'cmdname' => 'comment',
                      'contents' => [
                        {
                          'text' => ' in} d
',
                          'type' => 'rawline_arg'
                        }
                      ]
                    },
                    {
                      'source_marks' => [
                        {
                          'counter' => 1,
                          'position' => 3,
                          'sourcemark_type' => 'linemacro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'out
'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 7,
                'macro' => 'lm'
              }
            },
            {
              'text' => '
'
            },
            {
              'text' => 'next
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

$result_texis{'comment_in_linemacro_call'} = '@linemacro lm {a, b}
c \\a\\ d
\\b\\
@end linemacro

c @code{
something @comment in} d
out
}
next
';


$result_texts{'comment_in_linemacro_call'} = '
c 
something out

next
';

$result_errors{'comment_in_linemacro_call'} = [];


$result_floats{'comment_in_linemacro_call'} = {};


1;
