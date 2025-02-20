use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ifclear_in_ifset_set'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'a',
              'type' => 'rawline_arg'
            },
            {
              'text' => '',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' a
'
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'cmdname' => 'ifset',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'a'
                          }
                        ],
                        'info' => {
                          'spaces_after_argument' => {
                            'text' => '
'
                          }
                        },
                        'type' => 'block_line_arg'
                      }
                    ],
                    'type' => 'arguments_line'
                  }
                ],
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'source_info' => {
                  'line_nr' => 4
                }
              },
              'position' => 1,
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'start'
            },
            {
              'counter' => 2,
              'element' => {
                'cmdname' => 'ifclear',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ok'
                          }
                        ],
                        'info' => {
                          'comment_at_end' => {
                            'cmdname' => 'c',
                            'contents' => [
                              {
                                'text' => ' - ok, ignored
',
                                'type' => 'rawline_arg'
                              }
                            ]
                          },
                          'spaces_after_argument' => {
                            'text' => ' '
                          }
                        },
                        'type' => 'block_line_arg'
                      }
                    ],
                    'type' => 'arguments_line'
                  }
                ],
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'source_info' => {
                  'line_nr' => 5
                }
              },
              'position' => 1,
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'start'
            }
          ],
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'end',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'junky   - ok, ignored'
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
            'text_arg' => 'junky   - ok, ignored'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 6
          }
        },
        {
          'cmdname' => 'c',
          'contents' => [
            {
              'text' => ' WRONG - missing @end ifset.
',
              'type' => 'rawline_arg'
            }
          ]
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'ifclear_in_ifset_set'} = '
@set a

@end junky   - ok, ignored
@c WRONG - missing @end ifset.
';


$result_texts{'ifclear_in_ifset_set'} = '

';

$result_errors{'ifclear_in_ifset_set'} = [
  {
    'error_line' => 'warning: unknown @end junky
',
    'line_nr' => 6,
    'text' => 'unknown @end junky',
    'type' => 'warning'
  },
  {
    'error_line' => 'unmatched `@end ifset\'
',
    'line_nr' => 7,
    'text' => 'unmatched `@end ifset\'',
    'type' => 'error'
  },
  {
    'error_line' => 'expected @end ifclear
',
    'line_nr' => 8,
    'text' => 'expected @end ifclear',
    'type' => 'error'
  },
  {
    'error_line' => 'expected @end ifset
',
    'line_nr' => 8,
    'text' => 'expected @end ifset',
    'type' => 'error'
  }
];


$result_floats{'ifclear_in_ifset_set'} = {};


1;
