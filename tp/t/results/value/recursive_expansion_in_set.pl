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
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 2,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 3,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 4,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 5,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 6,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 7,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 8,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 9,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 10,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 11,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 12,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 13,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 14,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 15,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 16,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 17,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 18,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 19,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 20,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 21,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 22,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 23,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 24,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 25,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 26,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 27,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 28,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 29,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 30,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 31,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 32,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 33,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 34,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 35,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 36,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 37,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 38,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 39,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 40,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 41,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 42,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 43,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 44,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 45,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 46,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 47,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 48,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 49,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 50,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 51,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 52,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 53,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 54,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 55,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 56,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 57,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 58,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 59,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 60,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 61,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 62,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 63,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 64,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 65,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 66,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 67,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 68,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 69,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 70,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 71,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 72,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 73,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 74,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 75,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 76,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 77,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 78,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 79,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 80,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 81,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 82,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 83,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 84,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 85,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 86,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 87,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 88,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 89,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 90,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 91,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 92,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 93,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 94,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 95,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 96,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 97,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 98,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 99,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 100,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            },
            {
              'counter' => 100,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 99,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 98,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 97,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 96,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 95,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 94,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 93,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 92,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 91,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 90,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 89,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 88,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 87,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 86,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 85,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 84,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 83,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 82,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 81,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 80,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 79,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 78,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 77,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 76,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 75,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 74,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 73,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 72,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 71,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 70,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 69,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 68,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 67,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 66,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 65,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 64,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 63,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 62,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 61,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 60,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 59,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 58,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 57,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 56,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 55,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 54,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 53,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 52,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 51,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 50,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 49,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 48,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 47,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 46,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 45,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 44,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 43,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 42,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 41,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 40,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 39,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 38,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 37,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 36,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 35,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 34,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 33,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 32,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 31,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 30,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 29,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 28,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 27,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 26,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 25,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 24,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 23,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 22,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 21,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 20,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 19,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 18,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 17,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 16,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 15,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 14,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 13,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 12,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 11,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 10,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 9,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 8,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 7,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 6,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 5,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 4,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 3,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 2,
              'line' => 'V',
              'sourcemark_type' => 'value_expansion',
              'status' => 'end'
            },
            {
              'counter' => 1,
              'line' => 'V',
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
