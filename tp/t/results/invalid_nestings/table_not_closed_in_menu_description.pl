use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'table_not_closed_in_menu_description'} = {
  'contents' => [
    {
      'contents' => [
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
                      'text' => 'gcc'
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
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'text '
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'asis',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 2,
                                'macro' => ''
                              },
                              'type' => 'command_as_argument'
                            }
                          ],
                          'extra' => {
                            'spaces_after_argument' => '
'
                          },
                          'parent' => {},
                          'type' => 'block_line_arg'
                        }
                      ],
                      'cmdname' => 'table',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'item'
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
                                  'cmdname' => 'item',
                                  'extra' => {
                                    'spaces_before_argument' => ' '
                                  },
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 3,
                                    'macro' => ''
                                  }
                                }
                              ],
                              'parent' => {},
                              'type' => 'table_term'
                            },
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'table line
'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'preformatted'
                                }
                              ],
                              'parent' => {},
                              'type' => 'table_item'
                            }
                          ],
                          'parent' => {},
                          'type' => 'table_entry'
                        }
                      ],
                      'extra' => {
                        'command_as_argument' => {},
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
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
                'line_nr' => 2,
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
                'line_nr' => 5,
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
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'}{'contents'}[0];
$result_trees{'table_not_closed_in_menu_description'}{'contents'}[0]{'parent'} = $result_trees{'table_not_closed_in_menu_description'};

$result_texis{'table_not_closed_in_menu_description'} = '@menu
* (gcc):: text @table @asis
@item item
table line
@end menu
';


$result_texts{'table_not_closed_in_menu_description'} = '* (gcc):: text item
table line
';

$result_errors{'table_not_closed_in_menu_description'} = [
  {
    'error_line' => 'warning: @table should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@table should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => '`@end\' expected `table\', but saw `menu\'
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '`@end\' expected `table\', but saw `menu\'',
    'type' => 'error'
  }
];


$result_floats{'table_not_closed_in_menu_description'} = {};


1;
