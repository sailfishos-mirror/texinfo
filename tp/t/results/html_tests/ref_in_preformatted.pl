use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ref_in_preformatted'} = {
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
                      'text' => 'nnn the node name'
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
                  'normalized' => 'nnn-the-node-name'
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
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Now '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'nnn the
'
                        },
                        {
                          'parent' => {},
                          'text' => 'node name'
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
                              'text' => 'nnn the node name'
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
                            'normalized' => 'nnn-the-node-name'
                          }
                        ],
                        'normalized' => 'nnn-the-node-name',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 12,
                        'macro' => ''
                      }
                    },
                    'node_argument' => {
                      'node_content' => [
                        {},
                        {}
                      ],
                      'normalized' => 'nnn-the-node-name'
                    }
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
'
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
                      'parent' => {},
                      'text' => 'example'
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
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          }
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
    {}
  ],
  'type' => 'document_root'
};
$result_trees{'ref_in_preformatted'}{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'};
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'args'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'label'}{'args'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'label'};
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'label'}{'parent'} = $result_trees{'ref_in_preformatted'};
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'node_argument'}{'node_content'}[1] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'ref_in_preformatted'}{'contents'}[1];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'parent'} = $result_trees{'ref_in_preformatted'};
$result_trees{'ref_in_preformatted'}{'contents'}[2] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'label'};

$result_texis{'ref_in_preformatted'} = '@node Top

@menu
* nnn the node name::
@end menu

@example
Now @ref{nnn the
node name}
@end example

@node nnn the node name
';


$result_texts{'ref_in_preformatted'} = '
* nnn the node name::

Now nnn the
node name

';

$result_nodes{'ref_in_preformatted'} = {
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
        'normalized' => 'nnn-the-node-name'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'ref_in_preformatted'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'ref_in_preformatted'};
$result_nodes{'ref_in_preformatted'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'ref_in_preformatted'};
$result_nodes{'ref_in_preformatted'}{'structure'}{'node_next'} = $result_nodes{'ref_in_preformatted'}{'structure'}{'menu_child'};

$result_menus{'ref_in_preformatted'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'nnn-the-node-name'
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
$result_menus{'ref_in_preformatted'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'ref_in_preformatted'};

$result_errors{'ref_in_preformatted'} = [];


$result_floats{'ref_in_preformatted'} = {};



$result_converted{'html_text'}->{'ref_in_preformatted'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="node">Top</h1>


<div class="example">
<pre class="example-preformatted">Now <a class="ref" href="#nnn-the-node-name">nnn the
node name</a>
</pre></div>

<hr>
<a class="node-id" id="nnn-the-node-name"></a><div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h4 class="node">nnn the node name</h4>
';

1;
