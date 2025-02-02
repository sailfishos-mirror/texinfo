use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_inlineifcond_end_in_empty_set'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' clearargendignored
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'ag,
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
            'macro_name' => 'clearargendignored',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'contents' => [
            {
              'text' => 'Toto '
            },
            {
              'cmdname' => 'inlineifclear',
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
                              'command_name' => 'clearargendignored'
                            },
                            'type' => 'macro_call'
                          },
                          'position' => 2,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'start'
                        }
                      ],
                      'text' => 'flag'
                    }
                  ],
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 1,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => ''
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'expand_index' => 1,
                'format' => 'flag'
              },
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '. After.
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
              'text' => 'Again with space '
            },
            {
              'cmdname' => 'inlineifclear',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 2,
                          'element' => {
                            'contents' => [
                              {
                                'type' => 'brace_arg'
                              }
                            ],
                            'info' => {
                              'command_name' => 'clearargendignored'
                            },
                            'type' => 'macro_call'
                          },
                          'position' => 2,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'start'
                        }
                      ],
                      'text' => 'flag'
                    }
                  ],
                  'type' => 'brace_arg'
                },
                {
                  'info' => {
                    'spaces_before_argument' => {
                      'source_marks' => [
                        {
                          'counter' => 2,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'expand_index' => 1,
                'format' => 'flag'
              },
              'source_info' => {
                'line_nr' => 6
              }
            },
            {
              'text' => '. After.
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

$result_texis{'macro_inlineifcond_end_in_empty_set'} = '@macro clearargendignored
ag,
@end macro
Toto @inlineifclear{flag,}. After.

Again with space @inlineifclear{flag, }. After.
';


$result_texts{'macro_inlineifcond_end_in_empty_set'} = 'Toto . After.

Again with space . After.
';

$result_errors{'macro_inlineifcond_end_in_empty_set'} = [];


$result_floats{'macro_inlineifcond_end_in_empty_set'} = {};


1;
