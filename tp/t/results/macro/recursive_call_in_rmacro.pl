use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'recursive_call_in_rmacro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => 'rec',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'rmacro',
          'contents' => [
            {
              'text' => '@rec{}
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'rmacro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'rmacro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' rec
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
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
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 2,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 3,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 4,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 5,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 6,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 7,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 8,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 9,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 10,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 11,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 12,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 13,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 14,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 15,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 16,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 17,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 18,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 19,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 20,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 21,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 22,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 23,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 24,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 25,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 26,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 27,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 28,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 29,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 30,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 31,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 32,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 33,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 34,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 35,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 36,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 37,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 38,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 39,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 40,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 41,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 42,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 43,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 44,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 45,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 46,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 47,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 48,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 49,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 50,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 51,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 52,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 53,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 54,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 55,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 56,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 57,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 58,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 59,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 60,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 61,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 62,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 63,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 64,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 65,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 66,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 67,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 68,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 69,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 70,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 71,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 72,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 73,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 74,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 75,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 76,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 77,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 78,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 79,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 80,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 81,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 82,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 83,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 84,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 85,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 86,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 87,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 88,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 89,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 90,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 91,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 92,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 93,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 94,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 95,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 96,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 97,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 98,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 99,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 100,
              'element' => {
                'args' => [
                  {
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'rec'
                },
                'type' => 'rmacro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            },
            {
              'counter' => 100,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 99,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 98,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 97,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 96,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 95,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 94,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 93,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 92,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 91,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 90,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 89,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 88,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 87,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 86,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 85,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 84,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 83,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 82,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 81,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 80,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 79,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 78,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 77,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 76,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 75,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 74,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 73,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 72,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 71,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 70,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 69,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 68,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 67,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 66,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 65,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 64,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 63,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 62,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 61,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 60,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 59,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 58,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 57,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 56,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 55,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 54,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 53,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 52,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 51,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 50,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 49,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 48,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 47,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 46,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 45,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 44,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 43,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 42,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 41,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 40,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 39,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 38,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 37,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 36,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 35,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 34,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 33,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 32,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 31,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 30,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 29,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 28,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 27,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 26,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 25,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 24,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 23,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 22,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 21,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 20,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 19,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 18,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 17,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 16,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 15,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 14,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 13,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 12,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 11,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 10,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 9,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 8,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 7,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 6,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 5,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 4,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 3,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 2,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            },
            {
              'counter' => 1,
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            }
          ],
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'recursive_call_in_rmacro'} = '
@rmacro rec
@rec{}
@end rmacro



';


$result_texts{'recursive_call_in_rmacro'} = '



';

$result_errors{'recursive_call_in_rmacro'} = [
  {
    'error_line' => 'warning: macro call nested too deeply (set MAX_MACRO_CALL_NESTING to override; current value 100) (possibly involving @rec)
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => 'rec',
    'text' => 'macro call nested too deeply (set MAX_MACRO_CALL_NESTING to override; current value 100)',
    'type' => 'warning'
  }
];


$result_floats{'recursive_call_in_rmacro'} = {};


1;
