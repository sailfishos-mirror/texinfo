use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ref_to_top'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'ToP'
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
        'line_nr' => 2,
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
              'text' => 'top'
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'TOP'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Top'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
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
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 0
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ref_to_top'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[0];
$result_trees{'ref_to_top'}{'contents'}[0]{'parent'} = $result_trees{'ref_to_top'};
$result_trees{'ref_to_top'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[1]{'args'}[0];
$result_trees{'ref_to_top'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[1];
$result_trees{'ref_to_top'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'ref_to_top'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_to_top'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ref_to_top'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_to_top'}{'contents'}[1]{'parent'} = $result_trees{'ref_to_top'};
$result_trees{'ref_to_top'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[2]{'args'}[0];
$result_trees{'ref_to_top'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[2];
$result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[2];
$result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'} = $result_trees{'ref_to_top'}{'contents'}[1];
$result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1];
$result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1];
$result_trees{'ref_to_top'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'ref_to_top'}{'contents'}[2];
$result_trees{'ref_to_top'}{'contents'}[2]{'parent'} = $result_trees{'ref_to_top'};

$result_texis{'ref_to_top'} = '
@node ToP
@top top

@xref{TOP}.
';


$result_texts{'ref_to_top'} = '
top
***

TOP.
';

$result_sectioning{'ref_to_top'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top',
              'spaces_before_argument' => ' '
            },
            'structure' => {}
          },
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0,
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'ref_to_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'ref_to_top'};

$result_nodes{'ref_to_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'structure' => {
        'level' => 0
      }
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'structure' => {}
};

$result_menus{'ref_to_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'structure' => {}
};

$result_errors{'ref_to_top'} = [
  {
    'error_line' => ':5: warning: @xref to `TOP\', different from node name `ToP\'
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@xref to `TOP\', different from node name `ToP\'',
    'type' => 'warning'
  }
];


$result_floats{'ref_to_top'} = {};



$result_converted{'info'}->{'ref_to_top'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

top
***

*Note ToP::.


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'ref_to_top'} = '<!DOCTYPE html>
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

<link href="#Top" rel="start" title="ToP">
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

<div class="top" id="Top">
<h1 class="top" id="top">top</h1>

<p>See <a href="#Top">top</a>.
</p></div>



</body>
</html>
';

1;
