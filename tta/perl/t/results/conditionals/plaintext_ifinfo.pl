use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'plaintext_ifinfo'} = {
  'contents' => [
    {
      'contents' => [
        {
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'cmdname' => 'ifinfo',
                'contents' => [
                  {
                    'contents' => [
                      {
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
                  }
                ],
                'source_info' => {
                  'line_nr' => 2
                }
              },
              'position' => 1,
              'sourcemark_type' => 'expanded_conditional_command',
              'status' => 'start'
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
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'end',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifinfo'
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
                      'text_arg' => 'ifinfo'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 4
                    }
                  },
                  'position' => 51,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                }
              ],
              'text' => 'this text will appear only in Info and plain text.
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

$result_texis{'plaintext_ifinfo'} = '
this text will appear only in Info and plain text.
';


$result_texts{'plaintext_ifinfo'} = '
this text will appear only in Info and plain text.
';

$result_errors{'plaintext_ifinfo'} = [];


$result_floats{'plaintext_ifinfo'} = {};


1;
