use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_for_end'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'myend',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@end
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
            'arg_line' => ' myend
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
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'cartouche',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'cartouche'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'source_marks' => [
                    {
                      'counter' => 1,
                      'location' => 'text',
                      'position' => 0,
                      'sourcemark_type' => 'macro_expansion',
                      'status' => 'end'
                    }
                  ],
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'cartouche'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => 'myend'
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          },
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
                  'name' => 'myend'
                },
                'type' => 'macro_call'
              },
              'location' => 'text',
              'position' => 0,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'start'
            }
          ]
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'macro_for_end'} = '@macro myend
@end
@end macro

@cartouche
@end cartouche
';


$result_texts{'macro_for_end'} = '
';

$result_errors{'macro_for_end'} = [];


$result_floats{'macro_for_end'} = {};


1;
