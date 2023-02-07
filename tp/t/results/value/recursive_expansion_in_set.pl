use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'recursive_expansion_in_set'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'V',
              'type' => 'misc_arg'
            },
            {
              'text' => '@value{V}',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'V',
              '@value{V}'
            ]
          },
          'info' => {
            'arg_line' => ' V @value{V}
'
          }
        },
        {
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 2,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 3,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 4,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 5,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 6,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 7,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 8,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 9,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 10,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 11,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 12,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 13,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 14,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 15,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 16,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 17,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 18,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 19,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 20,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 21,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 22,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 23,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 24,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 25,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 26,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 27,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 28,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 29,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 30,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 31,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 32,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 33,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 34,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 35,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 36,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 37,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 38,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 39,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 40,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 41,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 42,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 43,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 44,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 45,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 46,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 47,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 48,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 49,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 50,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 51,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 52,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 53,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 54,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 55,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 56,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 57,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 58,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 59,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 60,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 61,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 62,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 63,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 64,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 65,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 66,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 67,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 68,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 69,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 70,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 71,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 72,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 73,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 74,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 75,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 76,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 77,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 78,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 79,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 80,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 81,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 82,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 83,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 84,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 85,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 86,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 87,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 88,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 89,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 90,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 91,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 92,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 93,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 94,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 95,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 96,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 97,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 98,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 99,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 100,
              'element' => {
                'args' => [
                  {
                    'text' => 'V'
                  }
                ],
                'cmdname' => 'value'
              },
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 100,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 99,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 98,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 97,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 96,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 95,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 94,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 93,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 92,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 91,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 90,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 89,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 88,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 87,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 86,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 85,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 84,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 83,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 82,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 81,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 80,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 79,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 78,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 77,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 76,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 75,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 74,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 73,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 72,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 71,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 70,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 69,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 68,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 67,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 66,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 65,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 64,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 63,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 62,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 61,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 60,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 59,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 58,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 57,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 56,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 55,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 54,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 53,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 52,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 51,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 50,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 49,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 48,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 47,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 46,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 45,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 44,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 43,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 42,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 41,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 40,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 39,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 38,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 37,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 36,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 35,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 34,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 33,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 32,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 31,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 30,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 29,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 28,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 27,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 26,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 25,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 24,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 23,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 22,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 21,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 20,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 19,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 18,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 17,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 16,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 15,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 14,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 13,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 12,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 11,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 10,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 9,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 8,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 7,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 6,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 5,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 4,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 3,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 2,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 1,
              'line' => '@value{V}',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            }
          ],
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

$result_texis{'recursive_expansion_in_set'} = '@set V @value{V}

';


$result_texts{'recursive_expansion_in_set'} = '
';

$result_errors{'recursive_expansion_in_set'} = [
  {
    'error_line' => 'warning: value call nested too deeply (set MAX_MACRO_CALL_NESTING to override; current value 100)
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'value call nested too deeply (set MAX_MACRO_CALL_NESTING to override; current value 100)',
    'type' => 'warning'
  }
];


$result_floats{'recursive_expansion_in_set'} = {};


1;
