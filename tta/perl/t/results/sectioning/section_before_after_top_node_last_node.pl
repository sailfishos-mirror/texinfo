use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'section_before_after_top_node_last_node'} = {
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
      'cmdname' => 'unnumbered',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'before'
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
        }
      ],
      'extra' => {},
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
        'line_nr' => 3
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
                  'text' => 'top section'
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 4
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Chapter'
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
          'contents' => [
            {
              'text' => 'in chapter
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 6
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
                  'text' => 'node after'
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
        'normalized' => 'node-after'
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
  'type' => 'document_root'
};

$result_texis{'section_before_after_top_node_last_node'} = '@unnumbered before

@node Top
@top top section

@chapter Chapter

in chapter

@node node after
';


$result_texts{'section_before_after_top_node_last_node'} = 'before
******

top section
***********

1 Chapter
*********

in chapter

';

$result_sectioning{'section_before_after_top_node_last_node'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'unnumbered',
        'extra' => {
          'section_directions' => {},
          'section_level' => 1,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 1,
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      },
      {
        'cmdname' => 'chapter',
        'extra' => {
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 1,
          'section_number' => '1',
          'toplevel_directions' => {
            'prev' => {},
            'up' => {}
          }
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'section_before_after_top_node_last_node'};
$result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[1];
$result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[1];
$result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'section_before_after_top_node_last_node'}{'extra'}{'section_childs'}[1];

$result_nodes{'section_before_after_top_node_last_node'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'node-after'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'section_before_after_top_node_last_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'section_before_after_top_node_last_node'}[0];
$result_nodes{'section_before_after_top_node_last_node'}[1] = $result_nodes{'section_before_after_top_node_last_node'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'section_before_after_top_node_last_node'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'node-after'
    }
  }
];

$result_errors{'section_before_after_top_node_last_node'} = [
  {
    'error_line' => 'warning: lowering the section level of @top appearing after a lower element
',
    'line_nr' => 4,
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `node after\' not in menu
',
    'line_nr' => 10,
    'text' => 'node `node after\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'section_before_after_top_node_last_node'} = {};



$result_converted{'info'}->{'section_before_after_top_node_last_node'} = 'This is , produced from section_before_after_top_node_last_node.texi.

before
******


File: ,  Node: Top,  Next: node after,  Up: (dir)

top section
***********

1 Chapter
*********

in chapter


File: ,  Node: node after,  Prev: Top


Tag Table:
Node: Top86
Node: node after197

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'section_before_after_top_node_last_node'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
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
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="unnumbered-level-extent" id="before">
<div class="nav-panel">
<p>
Next: <a href="#node-after" accesskey="n" rel="next">node after</a> &nbsp; </p>
</div>
<h2 class="unnumbered"><span>before<a class="copiable-link" href="#before"> &para;</a></span></h2>

</div>
<div class="unnumbered-level-extent" id="Top">
<h2 class="unnumbered top-level-set-unnumbered" id="top-section"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h2>

</div>
<div class="chapter-level-extent" id="Chapter">
<h2 class="chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>in chapter
</p>
<hr>
<a class="node-id" id="node-after"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top section</a> &nbsp; </p>
</div>
<h4 class="node"><span>node after<a class="copiable-link" href="#node-after"> &para;</a></span></h4>
</div>



</body>
</html>
';


$result_converted{'docbook'}->{'section_before_after_top_node_last_node'} = '<chapter label="">
<title>before</title>

</chapter>
<anchor id="node-after"/>
';


$result_converted{'latex_text'}->{'section_before_after_top_node_last_node'} = '\\begin{document}
\\chapter*{{before}}

\\label{anchor:Top}%
\\label{anchor:node-after}%
';

1;
