use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'node_referenced_in_ref'} = {
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
                      'text' => 'first level node'
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
                  'normalized' => 'first-level-node'
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          }
        },
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
                      'text' => 'second level node'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'label' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'second level node'
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
                        'normalized' => 'second-level-node'
                      }
                    ],
                    'normalized' => 'second-level-node',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  }
                },
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'second-level-node'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
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
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'first level node'
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
            'normalized' => 'first-level-node'
          }
        ],
        'normalized' => 'first-level-node',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      }
    },
    {}
  ],
  'type' => 'document_root'
};
$result_trees{'node_referenced_in_ref'}{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'};
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'args'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'label'}{'args'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'label'};
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'label'}{'parent'} = $result_trees{'node_referenced_in_ref'};
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[1];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[1]{'parent'} = $result_trees{'node_referenced_in_ref'};
$result_trees{'node_referenced_in_ref'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[2]{'args'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[2];
$result_trees{'node_referenced_in_ref'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'node_referenced_in_ref'}{'contents'}[2];
$result_trees{'node_referenced_in_ref'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'node_referenced_in_ref'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'node_referenced_in_ref'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'node_referenced_in_ref'}{'contents'}[2]{'parent'} = $result_trees{'node_referenced_in_ref'};
$result_trees{'node_referenced_in_ref'}{'contents'}[3] = $result_trees{'node_referenced_in_ref'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'label'};

$result_texis{'node_referenced_in_ref'} = '@node Top

@menu
* first level node::
@end menu

@ref{second level node}.

@node first level node

@node second level node
';


$result_texts{'node_referenced_in_ref'} = '
* first level node::

second level node.


';

$result_nodes{'node_referenced_in_ref'} = {
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
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'first-level-node'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'node_referenced_in_ref'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'node_referenced_in_ref'};
$result_nodes{'node_referenced_in_ref'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'node_referenced_in_ref'};
$result_nodes{'node_referenced_in_ref'}{'structure'}{'node_next'} = $result_nodes{'node_referenced_in_ref'}{'structure'}{'menu_child'};

$result_menus{'node_referenced_in_ref'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'first-level-node'
      },
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'node_referenced_in_ref'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'node_referenced_in_ref'};

$result_errors{'node_referenced_in_ref'} = [];


$result_floats{'node_referenced_in_ref'} = {};


1;
