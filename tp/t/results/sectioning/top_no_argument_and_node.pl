use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'top_no_argument_and_node'} = {
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
              'text' => 'start'
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
            'normalized' => 'start'
          }
        ],
        'normalized' => 'start',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {}
    },
    {
      'args' => [
        {
          'contents' => [],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [],
      'extra' => {},
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
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
$result_trees{'top_no_argument_and_node'}{'contents'}[0]{'parent'} = $result_trees{'top_no_argument_and_node'};
$result_trees{'top_no_argument_and_node'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_no_argument_and_node'}{'contents'}[1]{'args'}[0];
$result_trees{'top_no_argument_and_node'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'top_no_argument_and_node'}{'contents'}[1];
$result_trees{'top_no_argument_and_node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'top_no_argument_and_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'top_no_argument_and_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'top_no_argument_and_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'top_no_argument_and_node'}{'contents'}[1]{'parent'} = $result_trees{'top_no_argument_and_node'};
$result_trees{'top_no_argument_and_node'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'top_no_argument_and_node'}{'contents'}[2];
$result_trees{'top_no_argument_and_node'}{'contents'}[2]{'parent'} = $result_trees{'top_no_argument_and_node'};

$result_texis{'top_no_argument_and_node'} = '@node start
@top
';


$result_texts{'top_no_argument_and_node'} = '';

$result_sectioning{'top_no_argument_and_node'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'start',
              'spaces_before_argument' => ' '
            },
            'structure' => {}
          }
        },
        'structure' => {
          'level' => 0,
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'top_no_argument_and_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'top_no_argument_and_node'};

$result_nodes{'top_no_argument_and_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {
        'level' => 0
      }
    },
    'normalized' => 'start',
    'spaces_before_argument' => ' '
  },
  'structure' => {}
};

$result_menus{'top_no_argument_and_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'start',
    'spaces_before_argument' => ' '
  },
  'structure' => {}
};

$result_errors{'top_no_argument_and_node'} = [];


$result_floats{'top_no_argument_and_node'} = {};



$result_converted{'info'}->{'top_no_argument_and_node'} = 'This is , produced from .


File: ,  Node: start



Tag Table:
Node: start27

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'top_no_argument_and_node'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'top_no_argument_and_node'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#start" rel="start" title="start">
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
<div class="top" id="start">
<a class="top-anchor" id="SEC_Top"></a></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'top_no_argument_and_node'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
