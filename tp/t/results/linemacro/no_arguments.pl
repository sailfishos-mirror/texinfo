use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_arguments'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'noarg',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'text' => 'Body.
',
              'type' => 'raw'
            },
            {
              'args' => [
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'linemacro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' noarg
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'args' => [
                  {
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
                  'name' => 'noarg'
                },
                'source_info' => {
                  'file_name' => '',
                  'line_nr' => 5,
                  'macro' => ''
                },
                'type' => 'linemacro_call'
              },
              'sourcemark_type' => 'linemacro_expansion',
              'status' => 'start'
            }
          ],
          'text' => '',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'position' => 6,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'Body.
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
          'source_marks' => [
            {
              'counter' => 2,
              'element' => {
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => 'A'
                      },
                      {
                        'extra' => {
                          'def_role' => 'spaces'
                        },
                        'text' => ' ',
                        'type' => 'spaces'
                      },
                      {
                        'text' => 'B'
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
                  'name' => 'noarg'
                },
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'source_info' => {
                  'file_name' => '',
                  'line_nr' => 7,
                  'macro' => ''
                },
                'type' => 'linemacro_call'
              },
              'sourcemark_type' => 'linemacro_expansion',
              'status' => 'start'
            }
          ],
          'text' => '',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 2,
                  'position' => 6,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'Body.
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
          'source_marks' => [
            {
              'counter' => 3,
              'element' => {
                'args' => [
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'in brace'
                          }
                        ],
                        'type' => 'bracketed_arg'
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
                  'name' => 'noarg'
                },
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'source_info' => {
                  'file_name' => '',
                  'line_nr' => 9,
                  'macro' => ''
                },
                'type' => 'linemacro_call'
              },
              'sourcemark_type' => 'linemacro_expansion',
              'status' => 'start'
            }
          ],
          'text' => '',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 3,
                  'position' => 6,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'Body.
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

$result_texis{'no_arguments'} = '@linemacro noarg
Body.
@end linemacro

Body.

Body.

Body.
';


$result_texts{'no_arguments'} = '
Body.

Body.

Body.
';

$result_errors{'no_arguments'} = [];


$result_floats{'no_arguments'} = {};


1;
