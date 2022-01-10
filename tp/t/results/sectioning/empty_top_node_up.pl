use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_top_node_up'} = {
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
              'text' => 'empty top node up'
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
            'normalized' => 'first'
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
};
$result_trees{'empty_top_node_up'}{'contents'}[0]{'parent'} = $result_trees{'empty_top_node_up'};
$result_trees{'empty_top_node_up'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[1]{'args'}[0];
$result_trees{'empty_top_node_up'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[1];
$result_trees{'empty_top_node_up'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'empty_top_node_up'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_top_node_up'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'empty_top_node_up'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_top_node_up'}{'contents'}[1]{'parent'} = $result_trees{'empty_top_node_up'};
$result_trees{'empty_top_node_up'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'args'}[0];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[2];
$result_trees{'empty_top_node_up'}{'contents'}[2]{'parent'} = $result_trees{'empty_top_node_up'};
$result_trees{'empty_top_node_up'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[3]{'args'}[0];
$result_trees{'empty_top_node_up'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'empty_top_node_up'}{'contents'}[3];
$result_trees{'empty_top_node_up'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'empty_top_node_up'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'empty_top_node_up'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'empty_top_node_up'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'empty_top_node_up'}{'contents'}[3]{'parent'} = $result_trees{'empty_top_node_up'};

$result_texis{'empty_top_node_up'} = '@node Top
@top empty top node up

@menu
* first::
@end menu

@node first
';


$result_texts{'empty_top_node_up'} = 'empty top node up
*****************

* first::

';

$result_sectioning{'empty_top_node_up'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'empty_top_node_up'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'empty_top_node_up'};

$result_nodes{'empty_top_node_up'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
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
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'first'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'empty_top_node_up'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'empty_top_node_up'};
$result_nodes{'empty_top_node_up'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'empty_top_node_up'};
$result_nodes{'empty_top_node_up'}{'structure'}{'node_next'} = $result_nodes{'empty_top_node_up'}{'structure'}{'menu_child'};

$result_menus{'empty_top_node_up'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'first'
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
$result_menus{'empty_top_node_up'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'empty_top_node_up'};

$result_errors{'empty_top_node_up'} = [];


$result_floats{'empty_top_node_up'} = {};



$result_converted{'info'}->{'empty_top_node_up'} = 'This is , produced from .


File: ,  Node: Top,  Next: first,  Up: 

empty top node up
*****************

* Menu:

* first::


File: ,  Node: first,  Prev: Top,  Up: Top



Tag Table:
Node: Top27
Node: first127

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'empty_top_node_up'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>empty top node up</title>

<meta name="description" content="empty top node up">
<meta name="keywords" content="empty top node up">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
-->
</style>


</head>

<body lang="en">
<div class="top" id="Top">
<div class="nav-header">
<p>
Next: <a href="#first" accesskey="n" rel="next">first</a> &nbsp; </p>
</div>
<h1 class="top" id="empty-top-node-up">empty top node up</h1>


<hr>
<a class="node-anchor" id="first"></a><div class="nav-header">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">empty top node up</a>, Up: <a href="#Top" accesskey="u" rel="up">empty top node up</a> &nbsp; </p>
</div>
<h4 class="node-heading">first</h4>
</div>



</body>
</html>
';

1;
