use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'protect_comma_source_mark'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' vvv {}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'some text ,,
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
            'macro_name' => 'vvv',
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
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'punct',
              'type' => 'rawline_arg'
            },
            {
              'text' => ',,',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' punct ,,
'
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
                      'command_name' => 'vvv'
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
              'cmdname' => 'comma',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ]
            },
            {
              'cmdname' => 'comma',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_marks' => [
                {
                  'counter' => 1,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ]
            },
            {
              'cmdname' => 'comma',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'punct'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => ',,',
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ]
            },
            {
              'cmdname' => 'comma',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ]
            },
            {
              'cmdname' => 'comma',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_marks' => [
                {
                  'counter' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ]
            },
            {
              'cmdname' => 'comma',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ]
            },
            {
              'text' => ' and after.
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

$result_texis{'protect_comma_source_mark'} = '@macro vvv {}
some text ,,
@end macro

@set punct ,,

There is some text @comma{}@comma{}@comma{}@comma{}@comma{}@comma{} and after.
';


$result_texts{'protect_comma_source_mark'} = '

There is some text ,,,,,, and after.
';

$result_errors{'protect_comma_source_mark'} = [];


$result_floats{'protect_comma_source_mark'} = {};


1;
