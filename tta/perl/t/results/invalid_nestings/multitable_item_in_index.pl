use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'multitable_item_in_index'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'aaa'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      },
                      'type' => 'bracketed_arg'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'bbb'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      },
                      'type' => 'bracketed_arg'
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
              'contents' => [
                {
                  'cmdname' => 'vindex',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'text' => 'on item line'
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
                    'index_entry' => [
                      'vr',
                      1
                    ]
                  },
                  'info' => {
                    'command_name' => 'vindex',
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 2
                  },
                  'type' => 'index_entry_command'
                }
              ],
              'type' => 'before_item'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'multitable'
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
                'text_arg' => 'multitable'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            }
          ],
          'extra' => {
            'max_columns' => 2
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'multitable_item_in_index'} = '@multitable {aaa} {bbb}
@vindex  on item line
@end multitable
';


$result_texts{'multitable_item_in_index'} = '';

$result_errors{'multitable_item_in_index'} = [
  {
    'error_line' => 'warning: @item should not appear on @vindex line
',
    'line_nr' => 2,
    'text' => '@item should not appear on @vindex line',
    'type' => 'warning'
  },
  {
    'error_line' => '@item outside of table or list
',
    'line_nr' => 2,
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @multitable has text but no @item
',
    'line_nr' => 1,
    'text' => '@multitable has text but no @item',
    'type' => 'warning'
  }
];


$result_floats{'multitable_item_in_index'} = {};


$result_indices_sort_strings{'multitable_item_in_index'} = {
  'vr' => [
    'on item line'
  ]
};


1;
