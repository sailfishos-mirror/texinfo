use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_macro_call'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' machin{}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '(machin)
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
                'line_nr' => 3
              }
            }
          ],
          'extra' => {
            'macro_name' => 'machin',
            'misc_args' => []
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
                  'text' => ' truc{}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => '@machin{}
',
              'type' => 'raw'
            },
            {
              'text' => '
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
            'macro_name' => 'truc',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 5
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
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'truc'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 7,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 2,
                  'element' => {
                    'contents' => [
                      {
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'machin'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 7,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 2,
                  'position' => 15,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 1,
                  'position' => 16,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'Before (machin)
'
            },
            {
              'text' => ' after truc.
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

$result_texis{'nested_macro_call'} = '@macro machin{}
(machin)
@end macro

@macro truc{}
@machin{}

@end macro

Before (machin)
 after truc.
';


$result_texts{'nested_macro_call'} = '

Before (machin)
 after truc.
';

$result_errors{'nested_macro_call'} = [];


$result_floats{'nested_macro_call'} = {};


1;
