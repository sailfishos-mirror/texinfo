use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'protected_node_parentheses'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
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
                  'text' => 'first'
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
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'first'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 2
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'top'
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
                      'cmdname' => 'asis',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '('
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 6
                      }
                    },
                    {
                      'text' => 'manual) name'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_0028manual_0029-name'
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
                'line_nr' => 6
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
                'line_nr' => 7
              }
            }
          ],
          'source_info' => {
            'line_nr' => 5
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 3
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
                  'cmdname' => 'asis',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '('
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 9
                  }
                },
                {
                  'text' => 'manual) name'
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
          'cmdname' => 'anchor',
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'asis',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '('
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 11
                  }
                },
                {
                  'text' => 'manual2) name2'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'is_target' => 1,
            'normalized' => '_0028manual2_0029-name2'
          },
          'source_info' => {
            'line_nr' => 11
          }
        },
        {
          'text' => '
',
          'type' => 'spaces_after_close_brace'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'asis',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '('
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 13
                      }
                    },
                    {
                      'text' => 'manual2) name2'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {}
                      ]
                    },
                    'normalized' => '_0028manual2_0029-name2'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 13
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => '_0028manual_0029-name'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 9
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[1];

$result_texis{'protected_node_parentheses'} = '
@node first
@top top

@menu
* @asis{(}manual) name::
@end menu

@node @asis{(}manual) name

@anchor{@asis{(}manual2) name2}

@ref{@asis{(}manual2) name2}.
';


$result_texts{'protected_node_parentheses'} = '
top
***

* (manual) name::



(manual2) name2.
';

$result_sectioning{'protected_node_parentheses'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'first'
            }
          },
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'protected_node_parentheses'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'protected_node_parentheses'};

$result_nodes{'protected_node_parentheses'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'normalized' => 'first'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'up' => {}
      },
      'normalized' => '_0028manual_0029-name'
    }
  }
];
$result_nodes{'protected_node_parentheses'}[1]{'extra'}{'node_directions'}{'up'} = $result_nodes{'protected_node_parentheses'}[0];

$result_menus{'protected_node_parentheses'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'first'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => '_0028manual_0029-name'
    }
  }
];
$result_menus{'protected_node_parentheses'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'protected_node_parentheses'}[0];

$result_errors{'protected_node_parentheses'} = [];


$result_floats{'protected_node_parentheses'} = {};



$result_converted{'info'}->{'protected_node_parentheses'} = 'This is , produced from .


File: ,  Node: first

top
***

* Menu:

* (manual) name::


File: ,  Node: (manual) name,  Up: first

*note (manual2) name2::.


Tag Table:
Node: first27
Node: (manual) name88
Ref: (manual2) name2132

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'protected_node_parentheses'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'protected_node_parentheses'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#first" rel="start" title="first">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">

<div class="top-level-extent" id="first">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<hr>
<a class="node-id" id="g_t_0028manual_0029-name"></a><div class="nav-panel">
<p>
Up: <a href="#first" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h4 class="node"><span>(manual) name<a class="copiable-link" href="#g_t_0028manual_0029-name"> &para;</a></span></h4>

<a class="anchor" id="g_t_0028manual2_0029-name2"></a>
<p><a class="ref" href="#g_t_0028manual2_0029-name2">(manual2) name2</a>.
</p></div>



</body>
</html>
';

1;
