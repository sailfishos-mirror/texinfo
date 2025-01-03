use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'protect_colon_source_mark'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' klm {arg}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'some text : \\arg\\ then more
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
            'macro_name' => 'klm',
            'misc_args' => [
              'arg'
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
                            'text' => 'nop'
                          }
                        ],
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'klm'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 9,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'There is some text '
            },
            {
              'cmdname' => 'asis',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ':'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ]
            },
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'position' => 14,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => ' nop then more and after.
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

$result_texis{'protect_colon_source_mark'} = '@macro klm {arg}
some text : \\arg\\ then more
@end macro

There is some text @asis{:} nop then more and after.
';


$result_texts{'protect_colon_source_mark'} = '
There is some text : nop then more and after.
';

$result_errors{'protect_colon_source_mark'} = [];


$result_floats{'protect_colon_source_mark'} = {};


1;
