use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'non_automatic_top_node_up_url'} = [
  {
    'contents' => [
      {
        'contents' => [],
        'parent' => {
          'contents' => [
            {},
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Top'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'first'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'dir'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'dir'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'node',
              'contents' => [],
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
                  },
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'first'
                  },
                  {
                    'manual_content' => [
                      {}
                    ]
                  },
                  {
                    'manual_content' => [
                      {}
                    ]
                  }
                ],
                'normalized' => 'Top',
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'internal top node up'
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
              'cmdname' => 'top',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'cmdname' => 'menu',
                  'contents' => [
                    {
                      'extra' => {
                        'command' => {}
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line_after_command'
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
                              'text' => 'first'
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
                            {}
                          ],
                          'normalized' => 'first'
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'parent' => {},
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
                        'command_argument' => 'menu',
                        'spaces_before_argument' => ' ',
                        'text_arg' => 'menu'
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 6,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'extra' => {
                    'end_command' => {}
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'first'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Top'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'dir'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'node',
              'contents' => [],
              'extra' => {
                'node_content' => [
                  {}
                ],
                'nodes_manuals' => [
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'first'
                  },
                  undef,
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'Top'
                  },
                  {
                    'manual_content' => [
                      {}
                    ]
                  }
                ],
                'normalized' => 'first',
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'type' => 'document_root'
        },
        'type' => 'before_node_section'
      },
      {},
      {}
    ],
    'extra' => {
      'unit_command' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {}
    ],
    'extra' => {
      'unit_command' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[2]{'contents'}[1]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[2]{'contents'}[2]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'nodes_manuals'}[2]{'manual_content'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[2]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'nodes_manuals'}[3]{'manual_content'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[3]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'};
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'};
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[2]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[2]{'contents'}[0];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'nodes_manuals'}[3]{'manual_content'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3]{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'parent'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'};
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[1] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[2] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'non_automatic_top_node_up_url'}[1]{'contents'}[0] = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'non_automatic_top_node_up_url'}[1]{'extra'}{'unit_command'} = $result_trees{'non_automatic_top_node_up_url'}[0]{'contents'}[0]{'parent'}{'contents'}[3];

$result_texis{'non_automatic_top_node_up_url'} = '@node Top, first, (dir), (dir)
@top internal top node up

@menu
* first::
@end menu

@node first, , Top, (dir)
';


$result_texts{'non_automatic_top_node_up_url'} = 'internal top node up
********************

* first::

';

$result_sectioning{'non_automatic_top_node_up_url'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {
              'associated_unit' => {
                'extra' => {
                  'unit_command' => {}
                },
                'structure' => {
                  'directions' => {
                    'Forward' => {
                      'extra' => {
                        'unit_command' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => 'first'
                          },
                          'structure' => {
                            'associated_unit' => {}
                          }
                        }
                      },
                      'structure' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'NodeBack' => {},
                          'NodePrev' => {},
                          'NodeUp' => {
                            'extra' => {},
                            'type' => 'external_node'
                          },
                          'This' => {}
                        },
                        'unit_prev' => {}
                      },
                      'type' => 'unit'
                    },
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {
                      'extra' => {},
                      'type' => 'external_node'
                    },
                    'NodeUp' => {
                      'extra' => {},
                      'type' => 'external_node'
                    },
                    'This' => {}
                  },
                  'unit_next' => {}
                },
                'type' => 'unit'
              }
            }
          }
        },
        'structure' => {
          'associated_unit' => {},
          'level' => 0,
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_prev'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'non_automatic_top_node_up_url'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'non_automatic_top_node_up_url'};

$result_nodes{'non_automatic_top_node_up_url'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {
        'associated_unit' => {
          'extra' => {
            'unit_command' => {}
          },
          'structure' => {
            'directions' => {
              'Forward' => {
                'extra' => {
                  'unit_command' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'first'
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'node_prev' => {},
                      'node_up' => {
                        'extra' => {
                          'manual_content' => [
                            {
                              'text' => 'dir'
                            }
                          ]
                        },
                        'structure' => {}
                      }
                    }
                  }
                },
                'structure' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'NodeBack' => {},
                    'NodePrev' => {},
                    'NodeUp' => {
                      'extra' => {
                        'manual_content' => []
                      },
                      'type' => 'external_node'
                    },
                    'This' => {}
                  },
                  'unit_prev' => {}
                },
                'type' => 'unit'
              },
              'NodeForward' => {},
              'NodeNext' => {},
              'NodePrev' => {
                'extra' => {
                  'manual_content' => [
                    {
                      'text' => 'dir'
                    }
                  ]
                },
                'type' => 'external_node'
              },
              'NodeUp' => {
                'extra' => {
                  'manual_content' => [
                    {
                      'text' => 'dir'
                    }
                  ]
                },
                'type' => 'external_node'
              },
              'This' => {}
            },
            'unit_next' => {}
          },
          'type' => 'unit'
        },
        'level' => 0
      }
    },
    'menus' => [
      {
        'cmdname' => 'menu',
        'extra' => {}
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {},
    'menu_child' => {},
    'node_next' => {},
    'node_prev' => {
      'extra' => {
        'manual_content' => []
      }
    },
    'node_up' => {
      'extra' => {
        'manual_content' => []
      }
    }
  }
};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_nodes{'non_automatic_top_node_up_url'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_prev'} = $result_nodes{'non_automatic_top_node_up_url'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'}{'extra'}{'manual_content'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_up'}{'extra'}{'manual_content'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_prev'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'non_automatic_top_node_up_url'}{'structure'}{'menu_child'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};
$result_nodes{'non_automatic_top_node_up_url'}{'structure'}{'node_next'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};
$result_nodes{'non_automatic_top_node_up_url'}{'structure'}{'node_prev'}{'extra'}{'manual_content'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'}{'extra'}{'manual_content'};
$result_nodes{'non_automatic_top_node_up_url'}{'structure'}{'node_up'}{'extra'}{'manual_content'} = $result_nodes{'non_automatic_top_node_up_url'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'}{'extra'}{'manual_content'};

$result_menus{'non_automatic_top_node_up_url'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {
      'extra' => {
        'unit_command' => {}
      },
      'structure' => {
        'directions' => {
          'Forward' => {
            'extra' => {
              'unit_command' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'first'
                },
                'structure' => {
                  'associated_unit' => {},
                  'menu_up' => {},
                  'menu_up_hash' => {
                    'Top' => 1
                  }
                }
              }
            },
            'structure' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodeBack' => {},
                'NodePrev' => {},
                'NodeUp' => {
                  'extra' => {
                    'manual_content' => [
                      {
                        'text' => 'dir'
                      }
                    ]
                  },
                  'type' => 'external_node'
                },
                'This' => {}
              },
              'unit_prev' => {}
            },
            'type' => 'unit'
          },
          'NodeForward' => {},
          'NodeNext' => {},
          'NodePrev' => {
            'extra' => {
              'manual_content' => [
                {
                  'text' => 'dir'
                }
              ]
            },
            'type' => 'external_node'
          },
          'NodeUp' => {
            'extra' => {
              'manual_content' => [
                {
                  'text' => 'dir'
                }
              ]
            },
            'type' => 'external_node'
          },
          'This' => {}
        },
        'unit_next' => {}
      },
      'type' => 'unit'
    },
    'menu_child' => {}
  }
};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_menus{'non_automatic_top_node_up_url'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_up'} = $result_menus{'non_automatic_top_node_up_url'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_prev'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'non_automatic_top_node_up_url'}{'structure'}{'menu_child'} = $result_menus{'non_automatic_top_node_up_url'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};

$result_errors{'non_automatic_top_node_up_url'} = [];


$result_floats{'non_automatic_top_node_up_url'} = {};


$result_elements{'non_automatic_top_node_up_url'} = [
  {
    'extra' => {
      'unit_command' => {
        'cmdname' => 'node',
        'extra' => {
          'normalized' => 'Top'
        },
        'structure' => {
          'associated_unit' => {},
          'menu_child' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'first'
            },
            'structure' => {
              'associated_unit' => {
                'extra' => {
                  'unit_command' => {}
                },
                'structure' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'NodeBack' => {},
                    'NodePrev' => {},
                    'NodeUp' => {
                      'extra' => {
                        'manual_content' => [
                          {
                            'text' => 'dir'
                          }
                        ]
                      },
                      'type' => 'external_node'
                    },
                    'This' => {}
                  }
                },
                'type' => 'unit'
              },
              'menu_up' => {},
              'menu_up_hash' => {
                'Top' => 1
              }
            }
          }
        }
      }
    },
    'structure' => {
      'directions' => {
        'Forward' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'NodePrev' => {
          'extra' => {
            'manual_content' => [
              {
                'text' => 'dir'
              }
            ]
          },
          'type' => 'external_node'
        },
        'NodeUp' => {
          'extra' => {
            'manual_content' => [
              {
                'text' => 'dir'
              }
            ]
          },
          'type' => 'external_node'
        },
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {}
];
$result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'non_automatic_top_node_up_url'}[0];
$result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'};
$result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_elements{'non_automatic_top_node_up_url'}[0];
$result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'non_automatic_top_node_up_url'}[0];
$result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'non_automatic_top_node_up_url'}[0];
$result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'non_automatic_top_node_up_url'}[0];
$result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'};
$result_elements{'non_automatic_top_node_up_url'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'non_automatic_top_node_up_url'}[0]{'structure'}{'directions'}{'NodeForward'} = $result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'non_automatic_top_node_up_url'}[0]{'structure'}{'directions'}{'NodeNext'} = $result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'non_automatic_top_node_up_url'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'non_automatic_top_node_up_url'}[0];
$result_elements{'non_automatic_top_node_up_url'}[1] = $result_elements{'non_automatic_top_node_up_url'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};



$result_directions_text{'non_automatic_top_node_up_url'} = 'element: @node Top
  Forward: @node first
  NodeForward: @node first
  NodeNext: @node first
  NodePrev: (dir)
  NodeUp: (dir)
  This: @node Top
element: @node first
  Back: @node Top
  FastBack: @node Top
  NodeBack: @node Top
  NodePrev: @node Top
  NodeUp: (dir)
  This: @node first
';


$result_converted{'info'}->{'non_automatic_top_node_up_url'} = 'This is , produced from .


File: ,  Node: Top,  Next: first,  Prev: (dir),  Up: (dir)

internal top node up
********************

* Menu:

* first::


File: ,  Node: first,  Prev: Top,  Up: (dir)



Tag Table:
Node: Top27
Node: first152

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'non_automatic_top_node_up_url'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>internal top node up</title>

<meta name="description" content="internal top node up">
<meta name="keywords" content="internal top node up">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="http://www.gnu.org/manual/" rel="up" title="(dir)">
<style type="text/css">
<!--
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.center-align {text-align:center}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
h1.center-align {text-align:center}
h2.center-align {text-align:center}
h3.center-align {text-align:center}
h3.right-align {text-align:right}
h4.center-align {text-align:center}
kbd {font-style: oblique}
kbd.key {font-style: normal}
p.center-align {text-align:center}
p.left-align {text-align:left}
p.right-align {text-align:right}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">
<div class="top" id="Top">
<div class="header">
<p>
Next: <a href="#first" accesskey="n" rel="next">first</a>, Previous: <a href="dir.html#Top" accesskey="p" rel="prev">(dir)</a>, Up: <a href="dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; </p>
</div>
<h1 class="top" id="internal-top-node-up">internal top node up</h1>


<hr>
<a class="node-anchor" id="first"></a><div class="header">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">internal top node up</a>, Up: <a href="dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; </p>
</div>
<h4 class="node-heading">first</h4>
</div>



</body>
</html>
';

1;
