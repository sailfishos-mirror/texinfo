use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'menu_node_unterminated'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'first'
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
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
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Example'
                    }
                  ],
                  'type' => 'menu_entry_name'
                },
                {
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Examples of Login Verification Functions'
                    },
                    {
                      'text' => '
',
                      'type' => 'space_at_end_menu_node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'Examples-of-Login-Verification-Functions'
                  },
                  'type' => 'menu_entry_node'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
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
                'text_arg' => 'menu'
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
          'source_info' => {
            'line_nr' => 3
          }
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'first'
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
  'type' => 'document_root'
};
$result_trees{'menu_node_unterminated'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'menu_node_unterminated'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'menu_node_unterminated'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'menu_node_unterminated'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[3]{'contents'}[1];

$result_texis{'menu_node_unterminated'} = '@node first

@menu
* Example: Examples of Login Verification Functions
@end menu
';


$result_texts{'menu_node_unterminated'} = '
* Example: Examples of Login Verification Functions
';

$result_nodes{'menu_node_unterminated'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_menus{'menu_node_unterminated'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'first'
    }
  }
];

$result_errors{'menu_node_unterminated'} = [
  {
    'error_line' => '@menu reference to nonexistent node `Examples of Login Verification Functions
\'
',
    'line_nr' => 4,
    'text' => '@menu reference to nonexistent node `Examples of Login Verification Functions
\'',
    'type' => 'error'
  }
];


$result_floats{'menu_node_unterminated'} = {};


1;
