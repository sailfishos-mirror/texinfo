use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'top_without_node_sections'} = [
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
                'text' => 'Top section
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
          'level' => 0
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
                'text' => 'second'
              }
            ],
            'parent' => {},
            'type' => 'line_arg'
          },
          {
            'contents' => [],
            'parent' => {},
            'type' => 'line_arg'
          },
          {
            'contents' => [],
            'parent' => {},
            'type' => 'line_arg'
          },
          {
            'contents' => [
              {
                'parent' => {},
                'text' => '('
              },
              {
                'parent' => {},
                'text' => 'dir'
              },
              {
                'parent' => {},
                'text' => ')'
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
              'normalized' => 'second'
            },
            undef,
            undef,
            {
              'manual_content' => [
                {}
              ]
            }
          ],
          'normalized' => 'second',
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 4,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {}
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'Chapter'
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
        'cmdname' => 'chapter',
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
                'text' => 'Text of chapter
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
          'line_nr' => 5,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1,
          'number' => 1
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
$result_trees{'top_without_node_sections'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[0];
$result_trees{'top_without_node_sections'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'top_without_node_sections'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[0]{'contents'}[1];
$result_trees{'top_without_node_sections'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'top_without_node_sections'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[0]{'contents'}[1];
$result_trees{'top_without_node_sections'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'top_without_node_sections'}[0]{'contents'}[1];
$result_trees{'top_without_node_sections'}[0]{'contents'}[1]{'parent'} = $result_trees{'top_without_node_sections'}[0];
$result_trees{'top_without_node_sections'}[0]{'extra'}{'section'} = $result_trees{'top_without_node_sections'}[0]{'contents'}[1];
$result_trees{'top_without_node_sections'}[0]{'extra'}{'unit_command'} = $result_trees{'top_without_node_sections'}[0]{'contents'}[1];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[0];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[0];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[0];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[0];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'extra'}{'nodes_manuals'}[3]{'manual_content'}[0] = $result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'top_without_node_sections'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[1];
$result_trees{'top_without_node_sections'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'top_without_node_sections'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[1];
$result_trees{'top_without_node_sections'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[1];
$result_trees{'top_without_node_sections'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'top_without_node_sections'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[1];
$result_trees{'top_without_node_sections'}[1]{'contents'}[1]{'parent'} = $result_trees{'top_without_node_sections'}[1];
$result_trees{'top_without_node_sections'}[1]{'extra'}{'node'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[0];
$result_trees{'top_without_node_sections'}[1]{'extra'}{'section'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[1];
$result_trees{'top_without_node_sections'}[1]{'extra'}{'unit_command'} = $result_trees{'top_without_node_sections'}[1]{'contents'}[1];
$result_trees{'top_without_node_sections'}[1]{'structure'}{'unit_prev'} = $result_trees{'top_without_node_sections'}[0];

$result_texis{'top_without_node_sections'} = '@top top section
Top section

@node second,,,(dir)
@chapter Chapter

Text of chapter
';


$result_texts{'top_without_node_sections'} = 'top section
***********
Top section

1 Chapter
*********

Text of chapter
';

$result_sectioning{'top_without_node_sections'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0,
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'second',
                    'spaces_before_argument' => ' '
                  },
                  'structure' => {}
                },
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'top_without_node_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'top_without_node_sections'}{'structure'}{'section_childs'}[0];
$result_sectioning{'top_without_node_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'top_without_node_sections'}{'structure'}{'section_childs'}[0];
$result_sectioning{'top_without_node_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'top_without_node_sections'}{'structure'}{'section_childs'}[0];
$result_sectioning{'top_without_node_sections'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'top_without_node_sections'};

$result_nodes{'top_without_node_sections'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'chapter',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'structure' => {
        'level' => 1,
        'number' => 1
      }
    },
    'normalized' => 'second',
    'spaces_before_argument' => ' '
  },
  'structure' => {
    'node_up' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'dir'
          }
        ]
      },
      'structure' => {}
    }
  }
};

$result_menus{'top_without_node_sections'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'second',
    'spaces_before_argument' => ' '
  },
  'structure' => {}
};

$result_errors{'top_without_node_sections'} = [];


$result_floats{'top_without_node_sections'} = {};


$result_elements{'top_without_node_sections'} = [
  {
    'extra' => {
      'section' => {
        'cmdname' => 'top',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0
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
                'normalized' => 'second',
                'spaces_before_argument' => ' '
              },
              'structure' => {}
            },
            'section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'number' => 1
              }
            },
            'unit_command' => {}
          },
          'structure' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'NodeUp' => {
                'extra' => {
                  'manual_content' => [
                    {
                      'text' => 'dir'
                    }
                  ]
                },
                'type' => 'external_node'
              },
              'This' => {},
              'Up' => {}
            }
          },
          'type' => 'unit'
        },
        'Forward' => {},
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {}
];
$result_elements{'top_without_node_sections'}[0]{'extra'}{'unit_command'} = $result_elements{'top_without_node_sections'}[0]{'extra'}{'section'};
$result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'top_without_node_sections'}[0];
$result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'top_without_node_sections'}[0];
$result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'top_without_node_sections'}[0];
$result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'top_without_node_sections'}[0];
$result_elements{'top_without_node_sections'}[1] = $result_elements{'top_without_node_sections'}[0]{'structure'}{'directions'}{'FastForward'};



$result_directions_text{'top_without_node_sections'} = 'element: @top top section
  FastForward: @chapter Chapter
  Forward: @chapter Chapter
  This: @top top section
element: @chapter Chapter
  Back: @top top section
  FastBack: @top top section
  NodeUp: (dir)
  This: @chapter Chapter
  Up: @top top section
';


$result_converted{'info'}->{'top_without_node_sections'} = 'This is , produced from .

top section
***********

Top section


File: ,  Node: second,  Up: (dir)

1 Chapter
*********

Text of chapter


Tag Table:
Node: second65

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'top_without_node_sections'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'top_without_node_sections'} = '<!DOCTYPE html>
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

<link href="#second" rel="start" title="second">
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
<div class="top" id="top-section">
<h1 class="top">top section</h1>
<p>Top section
</p>
<ul class="section-toc">
<li><a href="#second" accesskey="1">Chapter</a></li>
</ul>
<div class="chapter" id="second">
<h2 class="chapter" id="Chapter">1 Chapter</h2>

<p>Text of chapter
</p></div>
</div>



</body>
</html>
';

1;
