use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'simple'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'a-_5b',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'the value @b{b}',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' a-_5b the value @b{b} @c comment
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
                            'text' => 'a-_5b'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ]
                  },
                  'line' => 'the value @b{b}',
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'the value '
            },
            {
              'cmdname' => 'b',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'b'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              },
              'source_marks' => [
                {
                  'counter' => 1,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ]
            },
            {
              'text' => ' After value.
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

$result_texis{'simple'} = '@set a-_5b the value @b{b} @c comment

the value @b{b} After value.
';


$result_texts{'simple'} = '
the value b After value.
';

$result_errors{'simple'} = [];


$result_floats{'simple'} = {};


1;
