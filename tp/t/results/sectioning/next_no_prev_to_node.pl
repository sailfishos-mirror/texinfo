use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'next_no_prev_to_node'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
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
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'first node'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
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
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'first-node'
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              },
              'type' => 'menu_entry'
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
                      'text' => 'no return'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
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
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'no-return'
                }
              },
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
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          }
        },
        {
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
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
              'text' => 'first node'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'no return'
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        },
        {
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            },
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [
        {
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
            'normalized' => 'first-node'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'no-return'
          },
          undef,
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'first-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'no return'
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
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => ' 
'
            },
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'no-return'
          },
          undef,
          undef,
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'no-return'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 10,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'next_no_prev_to_node'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'next_no_prev_to_node'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[3];
$result_trees{'next_no_prev_to_node'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'next_no_prev_to_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'next_no_prev_to_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'next_no_prev_to_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'next_no_prev_to_node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'next_no_prev_to_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'next_no_prev_to_node'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'next_no_prev_to_node'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'next_no_prev_to_node'}{'contents'}[2]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'next_no_prev_to_node'}{'contents'}[2]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'next_no_prev_to_node'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'next_no_prev_to_node'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'next_no_prev_to_node'}{'contents'}[3]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'next_no_prev_to_node'}{'contents'}[3]{'args'}[3]{'contents'}[0];

$result_texis{'next_no_prev_to_node'} = '@node Top

@menu
* first node::
* no return::
@end menu

@node first node, no return,, Top

@node no return,,, Top 
';


$result_texts{'next_no_prev_to_node'} = '
* first node::
* no return::


';

$result_nodes{'next_no_prev_to_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'first-node'
      },
      'info' => {},
      'structure' => {
        'node_next' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'no-return'
          },
          'info' => {},
          'structure' => {
            'node_up' => {}
          }
        },
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'next_no_prev_to_node'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'next_no_prev_to_node'};
$result_nodes{'next_no_prev_to_node'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'next_no_prev_to_node'};
$result_nodes{'next_no_prev_to_node'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'next_no_prev_to_node'};
$result_nodes{'next_no_prev_to_node'}{'structure'}{'node_next'} = $result_nodes{'next_no_prev_to_node'}{'structure'}{'menu_child'};

$result_menus{'next_no_prev_to_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'first-node'
      },
      'info' => {},
      'structure' => {
        'menu_next' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'no-return'
          },
          'info' => {},
          'structure' => {
            'menu_prev' => {},
            'menu_up' => {},
            'menu_up_hash' => {
              'Top' => 1
            }
          }
        },
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'next_no_prev_to_node'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'next_no_prev_to_node'}{'structure'}{'menu_child'};
$result_menus{'next_no_prev_to_node'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'next_no_prev_to_node'};
$result_menus{'next_no_prev_to_node'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'next_no_prev_to_node'};

$result_errors{'next_no_prev_to_node'} = [];


$result_floats{'next_no_prev_to_node'} = {};



$result_converted{'xml'}->{'next_no_prev_to_node'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">first node</nodenext></node>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>first node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>no return</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node name="first-node" spaces=" "><nodename>first node</nodename><nodenext spaces=" ">no return</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup spaces=" ">Top</nodeup></node>

<node name="no-return" spaces=" "><nodename>no return</nodename><nodenext></nodenext><nodeprev></nodeprev><nodeup spaces=" " trailingspaces=" ">Top</nodeup></node>
';

1;
