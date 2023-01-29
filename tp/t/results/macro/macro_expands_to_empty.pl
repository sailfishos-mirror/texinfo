use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_expands_to_empty'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'foo',
              'type' => 'macro_name'
            },
            {
              'text' => 'arg',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '\\arg\\
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' foo {arg}
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
                    'text' => ''
                  }
                ],
                'extra' => {
                  'name' => 'foo'
                },
                'type' => 'macro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
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
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 2,
                  'location' => 'text',
                  'position' => 2,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'aa
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'source_marks' => [
        {
          'counter' => 2,
          'element' => {
            'args' => [
              {
                'text' => 'aa'
              }
            ],
            'extra' => {
              'name' => 'foo'
            },
            'type' => 'macro_call'
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

$result_texis{'macro_expands_to_empty'} = '@macro foo {arg}
\\arg\\
@end macro


aa
';


$result_texts{'macro_expands_to_empty'} = '

aa
';

$result_errors{'macro_expands_to_empty'} = [];


$result_floats{'macro_expands_to_empty'} = {};


1;
