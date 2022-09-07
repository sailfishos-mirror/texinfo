use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'menu_in_style_command'} = {
  'contents' => [
    {
      'contents' => [],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'truc'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          }
        }
      ],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'menu_in_style_command'}{'contents'}[0]{'parent'} = $result_trees{'menu_in_style_command'};
$result_trees{'menu_in_style_command'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'args'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[3];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[3];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'args'}[1]{'contents'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'menu_in_style_command'}{'contents'}[1];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'menu_in_style_command'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'menu_in_style_command'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'menu_in_style_command'}{'contents'}[1]{'parent'} = $result_trees{'menu_in_style_command'};

$result_texis{'menu_in_style_command'} = '@node Top

@code{
}@menu
* (truc)::
@end menu
';


$result_texts{'menu_in_style_command'} = '

* (truc)::
';

$result_nodes{'menu_in_style_command'} = {
  'cmdname' => 'node',
  'extra' => {
    'menus' => [
      {
        'cmdname' => 'menu',
        'extra' => {}
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'truc'
          }
        ]
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'menu_in_style_command'}{'structure'}{'node_next'} = $result_nodes{'menu_in_style_command'}{'structure'}{'menu_child'};

$result_menus{'menu_in_style_command'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'truc'
          }
        ]
      }
    }
  }
};

$result_errors{'menu_in_style_command'} = [
  {
    'error_line' => 'warning: @menu should not appear in @code
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => '@menu should not appear in @code',
    'type' => 'warning'
  },
  {
    'error_line' => '@code missing closing brace
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@code missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'menu_in_style_command'} = {};


1;
