use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_value'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' ab
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'a
',
              'type' => 'raw'
            },
            {
              'text' => '
',
              'type' => 'raw'
            },
            {
              'text' => 'b
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
                'line_nr' => 5
              }
            }
          ],
          'extra' => {
            'macro_name' => 'ab',
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
              'text' => 'flagab',
              'type' => 'rawline_arg'
            },
            {
              'text' => '@ab',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' flagab @ab
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
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'flagab'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => '@ab',
                  'position' => 8,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 1,
                  'element' => {
                    'info' => {
                      'command_name' => 'ab'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 8,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'flagab: a
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
              'source_marks' => [
                {
                  'counter' => 1,
                  'position' => 1,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 1,
                  'position' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'b
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

$result_texis{'macro_in_value'} = '@macro ab
a

b
@end macro

@set flagab @ab

flagab: a

b
';


$result_texts{'macro_in_value'} = '

flagab: a

b
';

$result_errors{'macro_in_value'} = [];


$result_floats{'macro_in_value'} = {};


1;
