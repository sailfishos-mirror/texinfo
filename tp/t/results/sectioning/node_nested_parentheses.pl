use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'node_nested_parentheses'} = {
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
                      'text' => '(some) file'
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
                'line_nr' => 4,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
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
                      'text' => 'other (file)'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => 'node name'
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
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'node-name'
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'open('
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
                        'line_nr' => 6,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'parent' => {},
                      'text' => 'close)'
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
                  ],
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'close_0029'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => ')))'
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
                        'line_nr' => 7,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' error'
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
                  'node_content' => [
                    {},
                    {},
                    {}
                  ],
                  'normalized' => '_0028_0029_0029_0029-error'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
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
                'line_nr' => 8,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
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
$result_trees{'node_nested_parentheses'}{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'};
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'args'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[3]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[3]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[4]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[4];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[2]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'extra'}{'menu_entry_description'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'extra'}{'menu_entry_node'}{'node_content'}[1] = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'extra'}{'menu_entry_node'}{'node_content'}[2] = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[2];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[4];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_nested_parentheses'}{'contents'}[1];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'node_nested_parentheses'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_nested_parentheses'}{'contents'}[1]{'parent'} = $result_trees{'node_nested_parentheses'};

$result_texis{'node_nested_parentheses'} = '@node Top

@menu
* ((some) file)::
* (other (file))node name::
* (@code{open(}) close)::
* (@code{)))} error::
@end menu
';


$result_texts{'node_nested_parentheses'} = '
* ((some) file)::
* (other (file))node name::
* (open() close)::
* ())) error::
';

$result_nodes{'node_nested_parentheses'} = {
  'cmdname' => 'node',
  'extra' => {
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => '(some) file'
          }
        ]
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'node_nested_parentheses'}{'structure'}{'node_next'} = $result_nodes{'node_nested_parentheses'}{'structure'}{'menu_child'};

$result_menus{'node_nested_parentheses'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => '(some) file'
          }
        ]
      }
    }
  }
};

$result_errors{'node_nested_parentheses'} = [
  {
    'error_line' => '@menu reference to nonexistent node `(@code{)))} error\'
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => '@menu reference to nonexistent node `(@code{)))} error\'',
    'type' => 'error'
  }
];


$result_floats{'node_nested_parentheses'} = {};


1;
