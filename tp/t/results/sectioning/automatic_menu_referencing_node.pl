use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'automatic_menu_referencing_node'} = {
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
            'spaces_after_argument' => '
'
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
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => ' '
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
              'text' => 'top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Chapter'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
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
            'normalized' => 'Chapter'
          }
        ],
        'normalized' => 'Chapter'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'chap'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'section'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
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
            'normalized' => 'section'
          }
        ],
        'normalized' => 'section'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'sec'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'section',
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'automatic_menu_referencing_node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'automatic_menu_referencing_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'automatic_menu_referencing_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'automatic_menu_referencing_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'automatic_menu_referencing_node'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'automatic_menu_referencing_node'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'automatic_menu_referencing_node'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'automatic_menu_referencing_node'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'automatic_menu_referencing_node'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'automatic_menu_referencing_node'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'automatic_menu_referencing_node'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'automatic_menu_referencing_node'}{'contents'}[5]{'args'}[0]{'contents'}[0];

$result_texis{'automatic_menu_referencing_node'} = '@node Top
@top top

@node Chapter
@chapter chap

@node section
@section sec
';


$result_texts{'automatic_menu_referencing_node'} = 'top
***

1 chap
******

1.1 sec
=======
';

$result_sectioning{'automatic_menu_referencing_node'} = {
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
            'info' => {},
            'structure' => {}
          }
        },
        'info' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Chapter'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'section'
                        },
                        'info' => {},
                        'structure' => {}
                      }
                    },
                    'info' => {},
                    'structure' => {
                      'section_level' => 2,
                      'section_number' => '1.1',
                      'section_up' => {}
                    }
                  }
                ],
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'automatic_menu_referencing_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'automatic_menu_referencing_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'automatic_menu_referencing_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'automatic_menu_referencing_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'automatic_menu_referencing_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'automatic_menu_referencing_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'automatic_menu_referencing_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'automatic_menu_referencing_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'automatic_menu_referencing_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'automatic_menu_referencing_node'};

$result_nodes{'automatic_menu_referencing_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'info' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'Chapter'
      },
      'info' => {},
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'automatic_menu_referencing_node'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'automatic_menu_referencing_node'};
$result_nodes{'automatic_menu_referencing_node'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'automatic_menu_referencing_node'};

$result_menus{'automatic_menu_referencing_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {}
};

$result_errors{'automatic_menu_referencing_node'} = [];


$result_floats{'automatic_menu_referencing_node'} = {};



$result_converted{'info'}->{'automatic_menu_referencing_node'} = 'This is , produced from .


File: ,  Node: Top,  Next: Chapter,  Up: (dir)

top
***

* Menu:

* Chapter::


File: ,  Node: Chapter,  Prev: Top,  Up: Top

1 chap
******

* Menu:

* section::


File: ,  Node: section,  Up: Chapter

1.1 sec
=======



Tag Table:
Node: Top27
Node: Chapter108
Node: section193

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'automatic_menu_referencing_node'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#Chapter" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#Chapter" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="Chapter">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chap">1 chap</h2>

<ul class="mini-toc">
<li><a href="#section" accesskey="1">sec</a></li>
</ul>
<hr>
<div class="section-level-extent" id="section">
<div class="nav-panel">
<p>
Up: <a href="#Chapter" accesskey="u" rel="up">chap</a> &nbsp; </p>
</div>
<h3 class="section" id="sec">1.1 sec</h3>
</div>
</div>
</div>



</body>
</html>
';

1;
