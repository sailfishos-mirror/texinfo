use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'bye_in_macro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' byeinmacro
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'Text
',
              'type' => 'raw'
            },
            {
              'text' => '@bye
',
              'type' => 'raw'
            },
            {
              'text' => '
',
              'type' => 'raw'
            },
            {
              'text' => 'after bye
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
            'macro_name' => 'byeinmacro',
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
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'info' => {
                      'command_name' => 'byeinmacro'
                    },
                    'type' => 'macro_call'
                  },
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                }
              ],
              'text' => 'Text
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '
',
          'type' => 'rawline_arg'
        }
      ]
    },
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'text_after_end'
        },
        {
          'source_marks' => [
            {
              'counter' => 1,
              'position' => 9,
              'sourcemark_type' => 'macro_expansion',
              'status' => 'end'
            }
          ],
          'text' => 'after bye',
          'type' => 'text_after_end'
        },
        {
          'text' => '
',
          'type' => 'text_after_end'
        },
        {
          'text' => '
',
          'type' => 'text_after_end'
        },
        {
          'text' => 'After end
',
          'type' => 'text_after_end'
        }
      ],
      'type' => 'postamble_after_end'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'bye_in_macro'} = '@macro byeinmacro
Text
@bye

after bye
@end macro

Text
@bye

after bye

After end
';


$result_texts{'bye_in_macro'} = '
Text
';

$result_errors{'bye_in_macro'} = [];


$result_floats{'bye_in_macro'} = {};


1;
