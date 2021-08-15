use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'node_sectop_before_chapter_no_node'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'node_sectop_before_chapter_no_node.info'
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
          'cmdname' => 'setfilename',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'node_sectop_before_chapter_no_node.info'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
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
      'parent' => {},
      'type' => 'text_root'
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
        'line_nr' => 3,
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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 4,
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
              'text' => 'chap'
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
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[0]{'contents'}[0];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[0];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[0];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'};
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[1]{'args'}[0];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[1];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[1]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'};
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[2]{'args'}[0];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[2];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[2];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[2]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'};
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[3]{'args'}[0];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[3];
$result_trees{'node_sectop_before_chapter_no_node'}{'contents'}[3]{'parent'} = $result_trees{'node_sectop_before_chapter_no_node'};

$result_texis{'node_sectop_before_chapter_no_node'} = '@setfilename node_sectop_before_chapter_no_node.info

@node Top
@top top section

@chapter chap
';


$result_texts{'node_sectop_before_chapter_no_node'} = '
top section
***********

1 chap
******
';

$result_sectioning{'node_sectop_before_chapter_no_node'} = {
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
          }
        },
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'section_childs' => [
        {
          'cmdname' => 'chapter',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 1,
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'node_sectop_before_chapter_no_node'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'node_sectop_before_chapter_no_node'}{'section_childs'}[0];
$result_sectioning{'node_sectop_before_chapter_no_node'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'node_sectop_before_chapter_no_node'}{'section_childs'}[0];
$result_sectioning{'node_sectop_before_chapter_no_node'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'node_sectop_before_chapter_no_node'}{'section_childs'}[0];
$result_sectioning{'node_sectop_before_chapter_no_node'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'node_sectop_before_chapter_no_node'};

$result_nodes{'node_sectop_before_chapter_no_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_menus{'node_sectop_before_chapter_no_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'node_sectop_before_chapter_no_node'} = [];


$result_floats{'node_sectop_before_chapter_no_node'} = {};



$result_converted{'plaintext'}->{'node_sectop_before_chapter_no_node'} = 'top section
***********

1 chap
******

';


$result_converted{'html'}->{'node_sectop_before_chapter_no_node'} = '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
kbd {font-style: oblique}
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
<span id="top-section"></span><h1 class="top">top section</h1>

<ul class="section-toc">
<li><a href="#chap" accesskey="1">chap</a></li>
</ul>
<div class="chapter" id="chap">
<h2 class="chapter">1 chap</h2>
<hr></div>
</div>



</body>
</html>
';


$result_converted{'latex'}->{'node_sectop_before_chapter_no_node'} = '
\\chapter{chap}
';

1;
