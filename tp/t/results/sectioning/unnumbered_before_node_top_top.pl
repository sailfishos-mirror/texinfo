use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'unnumbered_before_node_top_top'} = [
  {
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
                'text' => 'before nodes'
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
        'cmdname' => 'unnumbered',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          },
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'in unnumbered
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
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 1,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {},
    'type' => 'unit'
  },
  {
    'contents' => [
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
          'line_nr' => 5,
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
                'text' => 'top section'
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
            'contents' => [
              {
                'parent' => {},
                'text' => 'Top node
'
              }
            ],
            'parent' => {},
            'type' => 'paragraph'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 6,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1
        }
      }
    ],
    'extra' => {
      'node' => {},
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[0];
$result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[0];
$result_trees{'unnumbered_before_node_top_top'}[0]{'extra'}{'section'} = $result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[0]{'extra'}{'unit_command'} = $result_trees{'unnumbered_before_node_top_top'}[0]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[0];
$result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[0]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[1];
$result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1]{'parent'} = $result_trees{'unnumbered_before_node_top_top'}[1];
$result_trees{'unnumbered_before_node_top_top'}[1]{'extra'}{'node'} = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[0];
$result_trees{'unnumbered_before_node_top_top'}[1]{'extra'}{'section'} = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[1]{'extra'}{'unit_command'} = $result_trees{'unnumbered_before_node_top_top'}[1]{'contents'}[1];
$result_trees{'unnumbered_before_node_top_top'}[1]{'structure'}{'unit_prev'} = $result_trees{'unnumbered_before_node_top_top'}[0];

$result_texis{'unnumbered_before_node_top_top'} = '@unnumbered before nodes

in unnumbered

@node Top
@top top section
Top node
';


$result_texts{'unnumbered_before_node_top_top'} = 'before nodes
************

in unnumbered

top section
***********
Top node
';

$result_sectioning{'unnumbered_before_node_top_top'} = {
  'section_childs' => [
    {
      'cmdname' => 'unnumbered',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'section_up' => {},
      'structure' => {
        'level' => 1
      }
    },
    {
      'cmdname' => 'top',
      'extra' => {
        'associated_node' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Top',
            'spaces_before_argument' => ' '
          }
        },
        'spaces_before_argument' => ' '
      },
      'section_prev' => {},
      'section_up' => {},
      'structure' => {
        'level' => 1
      },
      'toplevel_prev' => {}
    }
  ],
  'structure' => {
    'level' => 0
  }
};
$result_sectioning{'unnumbered_before_node_top_top'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'unnumbered_before_node_top_top'};
$result_sectioning{'unnumbered_before_node_top_top'}{'section_childs'}[1]{'section_prev'} = $result_sectioning{'unnumbered_before_node_top_top'}{'section_childs'}[0];
$result_sectioning{'unnumbered_before_node_top_top'}{'section_childs'}[1]{'section_up'} = $result_sectioning{'unnumbered_before_node_top_top'};
$result_sectioning{'unnumbered_before_node_top_top'}{'section_childs'}[1]{'toplevel_prev'} = $result_sectioning{'unnumbered_before_node_top_top'}{'section_childs'}[0];

$result_nodes{'unnumbered_before_node_top_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'structure' => {
        'level' => 1
      }
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_menus{'unnumbered_before_node_top_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'unnumbered_before_node_top_top'} = [
  {
    'error_line' => ':6: warning: lowering the section level of @top appearing after a lower element
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  }
];


$result_floats{'unnumbered_before_node_top_top'} = {};


$result_elements{'unnumbered_before_node_top_top'} = [
  {
    'extra' => {
      'section' => {
        'cmdname' => 'unnumbered',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 1
        }
      },
      'unit_command' => {}
    },
    'structure' => {
      'directions' => {
        'FastForward' => {
          'extra' => {
            'node' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'Top',
                'spaces_before_argument' => ' '
              }
            },
            'section' => {
              'cmdname' => 'top',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1
              }
            },
            'unit_command' => {}
          },
          'structure' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'Prev' => {},
              'This' => {}
            }
          },
          'type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {}
];
$result_elements{'unnumbered_before_node_top_top'}[0]{'extra'}{'unit_command'} = $result_elements{'unnumbered_before_node_top_top'}[0]{'extra'}{'section'};
$result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'unnumbered_before_node_top_top'}[0];
$result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'unnumbered_before_node_top_top'}[0];
$result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'unnumbered_before_node_top_top'}[0];
$result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'Next'} = $result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'unnumbered_before_node_top_top'}[0];
$result_elements{'unnumbered_before_node_top_top'}[1] = $result_elements{'unnumbered_before_node_top_top'}[0]{'structure'}{'directions'}{'FastForward'};



$result_directions_text{'unnumbered_before_node_top_top'} = 'element: @unnumbered before nodes
  FastForward: @top top section
  Forward: @top top section
  Next: @top top section
  This: @unnumbered before nodes
element: @top top section
  Back: @unnumbered before nodes
  FastBack: @unnumbered before nodes
  Prev: @unnumbered before nodes
  This: @top top section
';


$result_converted{'info'}->{'unnumbered_before_node_top_top'} = 'This is , produced from .

before nodes
************

in unnumbered


File: ,  Node: Top,  Up: (dir)

top section
***********

Top node


Tag Table:
Node: Top69

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'unnumbered_before_node_top_top'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top section</title>

<meta name="description" content="top section">
<meta name="keywords" content="top section">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.center-align {text-align:center}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
h1.center-align {text-align:center}
h2.center-align {text-align:center}
h3.center-align {text-align:center}
h3.right-align {text-align:right}
h4.center-align {text-align:center}
kbd {font-style: oblique}
p.center-align {text-align:center}
p.left-align {text-align:left}
p.right-align {text-align:right}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">
<div class="unnumbered" id="before-nodes">
<h2 class="unnumbered">before nodes</h2>

<p>in unnumbered
</p>
</div>
<div class="top" id="Top">
<h2 class="unnumbered" id="top-section">top section</h2>
<p>Top node
</p></div>



</body>
</html>
';

1;
