use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'internal_top_node_up'} = [
  {
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
                'text' => 'internal top node up'
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
        'cmdname' => 'top',
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
                        'text' => 'chap'
                      }
                    ],
                    'extra' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'chap'
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
              'line_nr' => 4,
              'macro' => ''
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
          'file_name' => '',
          'line_nr' => 2,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'chap'
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
        'extra' => {
          'is_target' => 1,
          'normalized' => 'chap'
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
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  }
];
$result_trees{'internal_top_node_up'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'internal_top_node_up'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'internal_top_node_up'}[0]{'unit_command'} = $result_trees{'internal_top_node_up'}[0]{'contents'}[1];
$result_trees{'internal_top_node_up'}[1]{'unit_command'} = $result_trees{'internal_top_node_up'}[1]{'contents'}[0];

$result_texis{'internal_top_node_up'} = '@node Top
@top internal top node up

@menu
* chap::
@end menu

@node chap
';


$result_texts{'internal_top_node_up'} = 'internal top node up
********************

* chap::

';

$result_sectioning{'internal_top_node_up'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'Forward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodeBack' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'type' => 'unit',
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'chap'
                },
                'structure' => {}
              }
            },
            'NodeForward' => {},
            'NodeNext' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'type' => 'unit',
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {},
          'section_directions' => {
            'up' => {}
          },
          'section_level' => 0
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'};
$result_sectioning{'internal_top_node_up'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'internal_top_node_up'};

$result_nodes{'internal_top_node_up'} = {
  'associated_unit' => {
    'directions' => {
      'Forward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'NodeBack' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {}
        },
        'tree_unit_directions' => {
          'prev' => {}
        },
        'type' => 'unit',
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap'
          },
          'structure' => {}
        }
      },
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'tree_unit_directions' => {
      'next' => {}
    },
    'type' => 'unit',
    'unit_command' => {}
  },
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'associated_unit' => {},
      'cmdname' => 'top',
      'extra' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'node_directions' => {
      'next' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {}
  }
};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'internal_top_node_up'}{'associated_unit'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_nodes{'internal_top_node_up'}{'associated_unit'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'internal_top_node_up'}{'associated_unit'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'internal_top_node_up'}{'associated_unit'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'internal_top_node_up'}{'associated_unit'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'internal_top_node_up'}{'associated_unit'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'internal_top_node_up'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'internal_top_node_up'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'This'} = $result_nodes{'internal_top_node_up'}{'associated_unit'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'internal_top_node_up'}{'associated_unit'}{'unit_command'} = $result_nodes{'internal_top_node_up'};
$result_nodes{'internal_top_node_up'}{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'internal_top_node_up'}{'associated_unit'};
$result_nodes{'internal_top_node_up'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'unit_command'};
$result_nodes{'internal_top_node_up'}{'structure'}{'menu_child'} = $result_nodes{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'unit_command'};

$result_menus{'internal_top_node_up'} = {
  'associated_unit' => {
    'directions' => {
      'Forward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'NodeBack' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {}
        },
        'tree_unit_directions' => {
          'prev' => {}
        },
        'type' => 'unit',
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'node',
          'extra' => {
            'menu_directions' => {
              'up' => {}
            },
            'normalized' => 'chap'
          },
          'structure' => {
            'menu_up_hash' => {
              'Top' => 1
            }
          }
        }
      },
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'tree_unit_directions' => {
      'next' => {}
    },
    'type' => 'unit',
    'unit_command' => {}
  },
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {}
  }
};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'internal_top_node_up'}{'associated_unit'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_menus{'internal_top_node_up'}{'associated_unit'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'internal_top_node_up'}{'associated_unit'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'internal_top_node_up'}{'associated_unit'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'internal_top_node_up'}{'associated_unit'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'internal_top_node_up'}{'associated_unit'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'internal_top_node_up'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'This'} = $result_menus{'internal_top_node_up'}{'associated_unit'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'internal_top_node_up'}{'associated_unit'}{'unit_command'} = $result_menus{'internal_top_node_up'};
$result_menus{'internal_top_node_up'}{'structure'}{'menu_child'} = $result_menus{'internal_top_node_up'}{'associated_unit'}{'directions'}{'Forward'}{'unit_command'};

$result_errors{'internal_top_node_up'} = [];


$result_floats{'internal_top_node_up'} = {};


$result_elements{'internal_top_node_up'} = [
  {
    'directions' => {
      'Forward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'NodeBack' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {}
        },
        'type' => 'unit',
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'node',
          'extra' => {
            'menu_directions' => {
              'up' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'Top'
                },
                'structure' => {
                  'menu_child' => {}
                }
              }
            },
            'normalized' => 'chap'
          },
          'structure' => {
            'menu_up_hash' => {
              'Top' => 1
            }
          }
        }
      },
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'type' => 'unit',
    'unit_command' => {}
  },
  {}
];
$result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'internal_top_node_up'}[0];
$result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'internal_top_node_up'}[0];
$result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'internal_top_node_up'}[0];
$result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'internal_top_node_up'}[0];
$result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'internal_top_node_up'}[0];
$result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'};
$result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'};
$result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'}{'associated_unit'} = $result_elements{'internal_top_node_up'}[0];
$result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'}{'structure'}{'menu_child'} = $result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'unit_command'};
$result_elements{'internal_top_node_up'}[0]{'directions'}{'NodeForward'} = $result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'};
$result_elements{'internal_top_node_up'}[0]{'directions'}{'NodeNext'} = $result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'};
$result_elements{'internal_top_node_up'}[0]{'directions'}{'This'} = $result_elements{'internal_top_node_up'}[0];
$result_elements{'internal_top_node_up'}[0]{'unit_command'} = $result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'internal_top_node_up'}[1] = $result_elements{'internal_top_node_up'}[0]{'directions'}{'Forward'};



$result_directions_text{'internal_top_node_up'} = 'element: @node Top
  Forward: @node chap
  NodeForward: @node chap
  NodeNext: @node chap
  This: @node Top
element: @node chap
  Back: @node Top
  FastBack: @node Top
  NodeBack: @node Top
  NodePrev: @node Top
  NodeUp: @node Top
  This: @node chap
';


$result_converted{'info'}->{'internal_top_node_up'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: node@@ node

internal top node up
********************

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top



Tag Table:
Node: Top27
Node: chap142

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'internal_top_node_up'} = '<!DOCTYPE html>
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
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chap" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="top" id="internal-top-node-up"><span>internal top node up<a class="copiable-link" href="#internal-top-node-up"> &para;</a></span></h1>


<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">internal top node up</a>, Up: <a href="#Top" accesskey="u" rel="up">internal top node up</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>
</div>



</body>
</html>
';

1;
