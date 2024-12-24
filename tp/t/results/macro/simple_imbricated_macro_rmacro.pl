use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'simple_imbricated_macro_rmacro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' truc {}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'truc.
',
              'type' => 'raw'
            },
            {
              'text' => '@rmacro bidule {}
',
              'type' => 'raw'
            },
            {
              'text' => 'bidule.
',
              'type' => 'raw'
            },
            {
              'text' => '@end rmacro
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
                'line_nr' => 6
              }
            }
          ],
          'extra' => {
            'macro_name' => 'truc',
            'misc_args' => []
          },
          'info' => {
            'arg_line' => ' truc {}
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
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'truc.
'
            },
            {
              'cmdname' => 'rmacro',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' bidule {}
',
                      'type' => 'macro_line'
                    }
                  ],
                  'type' => 'argument'
                },
                {
                  'text' => 'bidule.
',
                  'type' => 'raw'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'source_marks' => [
                            {
                              'counter' => 1,
                              'position' => 6,
                              'sourcemark_type' => 'macro_expansion',
                              'status' => 'end'
                            }
                          ],
                          'text' => 'rmacro'
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
                    'text_arg' => 'rmacro'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 8,
                    'macro' => 'truc'
                  }
                }
              ],
              'extra' => {
                'macro_name' => 'bidule',
                'misc_args' => []
              },
              'info' => {
                'arg_line' => ' bidule {}
'
              },
              'source_info' => {
                'line_nr' => 8,
                'macro' => 'truc'
              }
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
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'bidule'
                    },
                    'type' => 'rmacro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 2,
                  'position' => 7,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'bidule.
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

$result_texis{'simple_imbricated_macro_rmacro'} = '@macro truc {}
truc.
@rmacro bidule {}
bidule.
@end rmacro
@end macro

truc.
@rmacro bidule {}
bidule.
@end rmacro

bidule.
';


$result_texts{'simple_imbricated_macro_rmacro'} = '
truc.

bidule.
';

$result_errors{'simple_imbricated_macro_rmacro'} = [];


$result_floats{'simple_imbricated_macro_rmacro'} = {};


1;
