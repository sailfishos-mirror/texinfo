use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'protect_first_parenthesis_source_mark'} = {
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
              'type' => 'argument'
            },
            {
              'text' => '(some text) aa,,
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
          'cmdname' => 'anchor',
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'asis',
                  'contents' => [
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
                              'sourcemark_type' => 'macro_expansion',
                              'status' => 'start'
                            }
                          ],
                          'text' => '('
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
                      'position' => 15,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'some text) aa,,'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'is_target' => 1,
            'normalized' => '_0028some-text_0029-aa_002c_002c'
          },
          'source_info' => {
            'line_nr' => 5
          }
        },
        {
          'contents' => [
            {
              'text' => '.
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

$result_texis{'protect_first_parenthesis_source_mark'} = '@macro vvv {}
(some text) aa,,
@end macro

@anchor{@asis{(}some text) aa,,}.
';


$result_texts{'protect_first_parenthesis_source_mark'} = '
.
';

$result_errors{'protect_first_parenthesis_source_mark'} = [
  {
    'error_line' => 'syntax for an external node used for `(some text) aa,,\'
',
    'line_nr' => 5,
    'text' => 'syntax for an external node used for `(some text) aa,,\'',
    'type' => 'error'
  }
];


$result_floats{'protect_first_parenthesis_source_mark'} = {};


1;
