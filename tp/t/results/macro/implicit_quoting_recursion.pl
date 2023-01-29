use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'implicit_quoting_recursion'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'cat',
              'type' => 'macro_name'
            },
            {
              'text' => 'a',
              'type' => 'macro_arg'
            },
            {
              'text' => 'b',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'rmacro',
          'contents' => [
            {
              'text' => '\\a\\\\b\\
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
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' cat{a,b}
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
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 6,
                  'location' => 'text',
                  'position' => 4,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 5,
                  'location' => 'text',
                  'position' => 6,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 4,
                  'location' => 'text',
                  'position' => 8,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 3,
                  'location' => 'text',
                  'position' => 10,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 2,
                  'location' => 'text',
                  'position' => 13,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                },
                {
                  'counter' => 1,
                  'location' => 'text',
                  'position' => 16,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'natopocotuototam
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'source_marks' => [
        {
          'counter' => 1,
          'element' => {
            'args' => [
              {
                'text' => '@cat{@cat{@cat{@cat{@cat{na, to}, po}, co}, tu}, oto}'
              },
              {
                'text' => 'tam'
              }
            ],
            'extra' => {
              'name' => 'cat'
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
                'text' => '@cat{@cat{@cat{@cat{na, to}, po}, co}, tu}'
              },
              {
                'text' => 'oto'
              }
            ],
            'extra' => {
              'name' => 'cat'
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
                'text' => '@cat{@cat{@cat{na, to}, po}, co}'
              },
              {
                'text' => 'tu'
              }
            ],
            'extra' => {
              'name' => 'cat'
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
                'text' => '@cat{@cat{na, to}, po}'
              },
              {
                'text' => 'co'
              }
            ],
            'extra' => {
              'name' => 'cat'
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
                'text' => '@cat{na, to}'
              },
              {
                'text' => 'po'
              }
            ],
            'extra' => {
              'name' => 'cat'
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
                'text' => 'na'
              },
              {
                'text' => 'to'
              }
            ],
            'extra' => {
              'name' => 'cat'
            },
            'type' => 'rmacro_call'
          },
          'location' => 'text',
          'position' => 0,
          'sourcemark_type' => 'macro_expansion',
          'status' => 'start'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'implicit_quoting_recursion'} = '@rmacro cat{a,b}
\\a\\\\b\\
@end rmacro

natopocotuototam
';


$result_texts{'implicit_quoting_recursion'} = '
natopocotuototam
';

$result_errors{'implicit_quoting_recursion'} = [];


$result_floats{'implicit_quoting_recursion'} = {};


1;
