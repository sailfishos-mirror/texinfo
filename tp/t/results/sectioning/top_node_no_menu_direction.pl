use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'top_node_no_menu_direction'} = {
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
                      'text' => 'chap node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chap-node'
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
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'TOP'
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
                          'text' => 'myself
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
                'line_nr' => 5
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
                'line_nr' => 6
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
                  'text' => 'chap node'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'top'
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
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'TOP'
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
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chap-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 8
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'top_node_no_menu_direction'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'top_node_no_menu_direction'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'top_node_no_menu_direction'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'top_node_no_menu_direction'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'top_node_no_menu_direction'}{'contents'}[2]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'top_node_no_menu_direction'}{'contents'}[2]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'top_node_no_menu_direction'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'top_node_no_menu_direction'}{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];

$result_texis{'top_node_no_menu_direction'} = '@node Top

@menu
* chap node::
* TOP:: myself
@end menu

@node chap node,,top,TOP
';


$result_texts{'top_node_no_menu_direction'} = '
* chap node::
* TOP:: myself

';

$result_nodes{'top_node_no_menu_direction'} = [
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
            'normalized' => 'chap-node'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'top_node_no_menu_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'top_node_no_menu_direction'}[0];
$result_nodes{'top_node_no_menu_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'top_node_no_menu_direction'}[0];
$result_nodes{'top_node_no_menu_direction'}[1] = $result_nodes{'top_node_no_menu_direction'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'top_node_no_menu_direction'} = [
  {
    'extra' => {
      'menu_directions' => {
        'prev' => {
          'extra' => {
            'menu_directions' => {
              'next' => {},
              'up' => {}
            },
            'normalized' => 'chap-node'
          }
        },
        'up' => {}
      },
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {}
];
$result_menus{'top_node_no_menu_direction'}[0]{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'top_node_no_menu_direction'}[0];
$result_menus{'top_node_no_menu_direction'}[0]{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'top_node_no_menu_direction'}[0];
$result_menus{'top_node_no_menu_direction'}[0]{'extra'}{'menu_directions'}{'up'} = $result_menus{'top_node_no_menu_direction'}[0];
$result_menus{'top_node_no_menu_direction'}[1] = $result_menus{'top_node_no_menu_direction'}[0]{'extra'}{'menu_directions'}{'prev'};

$result_errors{'top_node_no_menu_direction'} = [
  {
    'error_line' => 'warning: Prev pointer `top\' (for node `chap node\') different from node name `Top\'
',
    'line_nr' => 8,
    'text' => 'Prev pointer `top\' (for node `chap node\') different from node name `Top\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: Up pointer `TOP\' (for node `chap node\') different from node name `Top\'
',
    'line_nr' => 8,
    'text' => 'Up pointer `TOP\' (for node `chap node\') different from node name `Top\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `TOP\' different from node name `Top\'
',
    'line_nr' => 5,
    'text' => '@menu entry node name `TOP\' different from node name `Top\'',
    'type' => 'warning'
  }
];


$result_floats{'top_node_no_menu_direction'} = {};



$result_converted{'info'}->{'top_node_no_menu_direction'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap node,  Up: (dir)

* Menu:

* chap node::
* TOP:: myself


File: ,  Node: chap node,  Prev: Top,  Up: Top


Tag Table:
Node: Top27
Node: chap node118

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'top_node_no_menu_direction'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap-node" accesskey="n" rel="next">chap node</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>


<hr>
<a class="node-id" id="chap-node"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Top</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap node<a class="copiable-link" href="#chap-node"> &para;</a></span></h4>



</body>
</html>
';

$result_converted_errors{'html'}->{'top_node_no_menu_direction'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
