use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'one_node_counted_elements'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'Garbage
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'before nodes'
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
              'cmdname' => 'cindex',
              'extra' => {
                'index_entry' => {
                  'content_normalized' => [],
                  'entry_content' => [],
                  'entry_element' => {},
                  'entry_number' => 1,
                  'in_code' => 0,
                  'index_at_command' => 'cindex',
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex'
                }
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              },
              'type' => 'index_entry_command'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'one node'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'type' => 'line_arg'
        },
        {
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => '('
            },
            {
              'text' => 'dir'
            },
            {
              'text' => ')'
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
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'Top node
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'Top node'
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
              'cmdname' => 'cindex',
              'extra' => {
                'index_entry' => {
                  'content_normalized' => [],
                  'entry_content' => [],
                  'entry_element' => {},
                  'entry_node' => {},
                  'entry_number' => 2,
                  'in_code' => 0,
                  'index_at_command' => 'cindex',
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex'
                }
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'type' => 'index_entry_command'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'anchor ref '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'ref'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'anchor',
              'extra' => {
                'node_content' => [
                  {}
                ],
                'normalized' => 'ref'
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
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
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'some_manual_name_with_gcc'
                    },
                    {
                      'text' => ')'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'ref to gcc
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
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
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'ref to ref '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'ref'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'ref'
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Some text.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          }
        }
      ],
      'extra' => {
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'one-node'
          },
          undef,
          undef,
          {
            'manual_content' => [
              {}
            ]
          }
        ],
        'normalized' => 'one-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'one_node_counted_elements'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'one_node_counted_elements'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'one_node_counted_elements'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'one_node_counted_elements'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'one_node_counted_elements'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'one_node_counted_elements'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'one_node_counted_elements'}{'contents'}[1];
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[3];
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[1]{'contents'}[1];
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[7]{'contents'}[1]{'extra'}{'label'} = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[7]{'contents'}[1]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'one_node_counted_elements'}{'contents'}[1]{'extra'}{'nodes_manuals'}[3]{'manual_content'}[0] = $result_trees{'one_node_counted_elements'}{'contents'}[1]{'args'}[3]{'contents'}[1];

$result_texis{'one_node_counted_elements'} = 'Garbage
@cindex before nodes

@node one node,,,(dir)
Top node
@cindex Top node

anchor ref @anchor{ref}.

@menu
* (some_manual_name_with_gcc):: ref to gcc
@end menu


ref to ref @ref{ref}.

Some text.

@printindex cp
';


$result_texts{'one_node_counted_elements'} = 'Garbage

Top node

anchor ref .

* (some_manual_name_with_gcc):: ref to gcc


ref to ref ref.

Some text.

';

$result_nodes{'one_node_counted_elements'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'one-node'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'some_manual_name_with_gcc'
          }
        ]
      }
    },
    'node_up' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'dir'
          }
        ]
      }
    }
  }
};

$result_menus{'one_node_counted_elements'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'one-node'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'some_manual_name_with_gcc'
          }
        ]
      }
    }
  }
};

$result_errors{'one_node_counted_elements'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'one_node_counted_elements'} = {};


$result_indices_sort_strings{'one_node_counted_elements'} = {
  'cp' => [
    'before nodes',
    'Top node'
  ]
};



$result_converted{'info'}->{'one_node_counted_elements'} = 'This is , produced from .

Garbage


File: ,  Node: one node,  Up: (dir)

Top node

   anchor ref .

* Menu:

* (some_manual_name_with_gcc):: ref to gcc

   ref to ref *note ref::.

   Some text.

 [index ]
* Menu:

* before nodes:                          (outside of any node). (line 0)
* Top node:                              one node.              (line 3)



Tag Table:
Node: one node36
Ref: ref98

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'one_node_counted_elements'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


1;
