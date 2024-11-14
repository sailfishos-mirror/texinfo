use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ref_in_preformatted'} = {
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
          'type' => 'argument'
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
              'type' => 'argument'
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
                      'text' => 'chap nnn the node name'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chap-nnn-the-node-name'
                  },
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
              'source_info' => {
                'line_nr' => 4
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
                'line_nr' => 5
              }
            }
          ],
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'example',
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
              'type' => 'argument'
            },
            {
              'contents' => [
                {
                  'text' => 'Now '
                },
                {
                  'cmdname' => 'ref',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'chap nnn the
'
                        },
                        {
                          'text' => 'node name'
                        }
                      ],
                      'extra' => {
                        'node_content' => {
                          'contents' => [
                            {},
                            {}
                          ]
                        },
                        'normalized' => 'chap-nnn-the-node-name'
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 8
                  }
                },
                {
                  'text' => '
'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
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
                'text_arg' => 'example'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 10
              }
            }
          ],
          'source_info' => {
            'line_nr' => 7
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'chap nnn the node name'
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
          'type' => 'argument'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chap-nnn-the-node-name'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 12
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'ref_in_preformatted'}{'contents'}[1]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1];

$result_texis{'ref_in_preformatted'} = '@node Top

@menu
* chap nnn the node name::
@end menu

@example
Now @ref{chap nnn the
node name}
@end example

@node chap nnn the node name
';


$result_texts{'ref_in_preformatted'} = '
* chap nnn the node name::

Now chap nnn the
node name

';

$result_nodes{'ref_in_preformatted'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap-nnn-the-node-name'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'ref_in_preformatted'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'ref_in_preformatted'}[0];
$result_nodes{'ref_in_preformatted'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'ref_in_preformatted'}[0];
$result_nodes{'ref_in_preformatted'}[1] = $result_nodes{'ref_in_preformatted'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'ref_in_preformatted'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'chap-nnn-the-node-name'
    }
  }
];
$result_menus{'ref_in_preformatted'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'ref_in_preformatted'}[0];

$result_errors{'ref_in_preformatted'} = [];


$result_floats{'ref_in_preformatted'} = {};



$result_converted{'html_text'}->{'ref_in_preformatted'} = '<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>


<div class="example">
<pre class="example-preformatted">Now <a class="ref" href="#chap-nnn-the-node-name">chap nnn the
node name</a>
</pre></div>

<hr>
<h4 class="node" id="chap-nnn-the-node-name"><span>chap nnn the node name<a class="copiable-link" href="#chap-nnn-the-node-name"> &para;</a></span></h4>
';

1;
