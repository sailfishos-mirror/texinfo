use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'protect_node_after_label_source_mark_in_protected'} = {
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
              'text' => 'some text .,
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
              'text' => ',.',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' punct ,.
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
              'cmdname' => 'asis',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 1,
                          'position' => 2,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        },
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
                          'line' => ',.',
                          'position' => 3,
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'start'
                        },
                        {
                          'counter' => 1,
                          'position' => 5,
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => '.,,,..'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ]
            },
            {
              'text' => ' and after'
            },
            {
              'cmdname' => 'asis',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '.'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ]
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

$result_texis{'protect_node_after_label_source_mark_in_protected'} = '@macro vvv {}
some text .,
@end macro

@set punct ,.

There is some text @asis{.,,,..} and after@asis{.}
';


$result_texts{'protect_node_after_label_source_mark_in_protected'} = '

There is some text .,,,.. and after.
';

$result_errors{'protect_node_after_label_source_mark_in_protected'} = [];


$result_floats{'protect_node_after_label_source_mark_in_protected'} = {};


1;
