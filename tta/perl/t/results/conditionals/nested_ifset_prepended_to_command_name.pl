use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_ifset_prepended_to_command_name'} = {
  'contents' => [
    {
      'contents' => [
        {
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'cmdname' => 'ifset',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'a'
                          }
                        ],
                        'info' => {
                          'spaces_after_argument' => {
                            'text' => '
'
                          }
                        },
                        'type' => 'block_line_arg'
                      }
                    ],
                    'type' => 'arguments_line'
                  },
                  {
                    'text' => '@ifsettoto b
',
                    'type' => 'raw'
                  },
                  {
                    'text' => 'GG
',
                    'type' => 'raw'
                  },
                  {
                    'cmdname' => 'end',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifset'
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
                      'text_arg' => 'ifset'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 4
                    }
                  }
                ],
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'source_info' => {
                  'line_nr' => 1
                }
              },
              'sourcemark_type' => 'ignored_conditional_block'
            }
          ],
          'text' => ''
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'nested_ifset_prepended_to_command_name'} = '';


$result_texts{'nested_ifset_prepended_to_command_name'} = '';

$result_errors{'nested_ifset_prepended_to_command_name'} = [
  {
    'error_line' => 'unmatched `@end ifset\'
',
    'line_nr' => 5,
    'text' => 'unmatched `@end ifset\'',
    'type' => 'error'
  }
];


$result_floats{'nested_ifset_prepended_to_command_name'} = {};


1;
