use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'double_index_entry'} = {
  'contents' => [
    {
      'contents' => [
        {
          'type' => 'preamble_before_content'
        }
      ],
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'aaa'
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
            'element_node' => {},
            'index_entry' => [
              'cp',
              1
            ]
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 3
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Text
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
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'aaa'
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
            'element_node' => {},
            'index_entry' => [
              'cp',
              2
            ]
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 7
          },
          'type' => 'index_entry_command'
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
                      'text' => 'chap other node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chap-other-node'
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
                'line_nr' => 10
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
                'line_nr' => 11
              }
            }
          ],
          'source_info' => {
            'line_nr' => 9
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
                  'text' => 'chap other node'
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
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'Top'
              },
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
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'aaa'
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
            'element_node' => {},
            'index_entry' => [
              'cp',
              3
            ]
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 15
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
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
            'line_nr' => 17
          }
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
        'normalized' => 'chap-other-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 13
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'double_index_entry'}{'contents'}[1]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'double_index_entry'}{'contents'}[1];
$result_trees{'double_index_entry'}{'contents'}[1]{'contents'}[6]{'extra'}{'element_node'} = $result_trees{'double_index_entry'}{'contents'}[1];
$result_trees{'double_index_entry'}{'contents'}[1]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'double_index_entry'}{'contents'}[1]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'double_index_entry'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'double_index_entry'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'double_index_entry'}{'contents'}[2]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'double_index_entry'}{'contents'}[2];

$result_texis{'double_index_entry'} = '@node Top

@cindex aaa

Text

@cindex aaa

@menu
* chap other node::
@end menu

@node chap other node,,,Top

@cindex aaa

@printindex cp
';


$result_texts{'double_index_entry'} = '

Text


* chap other node::



';

$result_nodes{'double_index_entry'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'node_directions' => {
              'up' => {}
            },
            'normalized' => 'chap-other-node'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'double_index_entry'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'double_index_entry'}[0];
$result_nodes{'double_index_entry'}[1] = $result_nodes{'double_index_entry'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'double_index_entry'} = [
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
      'normalized' => 'chap-other-node'
    }
  }
];
$result_menus{'double_index_entry'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'double_index_entry'}[0];

$result_errors{'double_index_entry'} = [];


$result_floats{'double_index_entry'} = {};


$result_indices_sort_strings{'double_index_entry'} = {
  'cp' => [
    'aaa',
    'aaa',
    'aaa'
  ]
};



$result_converted{'info'}->{'double_index_entry'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap other node,  Up: (dir)

Text

* Menu:

* chap other node::


File: ,  Node: chap other node,  Up: Top

 [index ]
* Menu:

* aaa:                                   Top.                   (line 3)
* aaa <1>:                               Top.                   (line 5)
* aaa <2>:                               chap other node.       (line 3)


Tag Table:
Node: Top27
Node: chap other node121

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'double_index_entry'} = 'Text

* Menu:

* aaa:                                   Top.                   (line 0)
* aaa <1>:                               Top.                   (line 1)
* aaa <2>:                               chap other node.       (line 2)

';


$result_converted{'html_text'}->{'double_index_entry'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
[<a href="#chap-other-node" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<a class="index-entry-id" id="index-aaa"></a>

<p>Text
</p>
<a class="index-entry-id" id="index-aaa-1"></a>


<hr>
<a class="node-id" id="chap-other-node"></a><div class="nav-panel">
<p>
[<a href="#chap-other-node" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap other node<a class="copiable-link" href="#chap-other-node"> &para;</a></span></h4>

<a class="index-entry-id" id="index-aaa-2"></a>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chap-other-node_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-aaa">aaa</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-aaa-1">aaa</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-aaa-2">aaa</a></td><td class="printindex-index-section"><a href="#chap-other-node">chap other node</a></td></tr>
</table>
</div>
';


$result_converted{'xml'}->{'double_index_entry'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap other node</nodenext></node>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">aaa</indexterm></cindex>

<para>Text
</para>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">aaa</indexterm></cindex>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chap other node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="chap-other-node" spaces=" "><nodename>chap other node</nodename><nodenext></nodenext><nodeprev></nodeprev><nodeup>Top</nodeup></node>

<cindex index="cp" spaces=" "><indexterm index="cp" number="3">aaa</indexterm></cindex>

<printindex spaces=" " value="cp" line="cp"></printindex>
';

1;
