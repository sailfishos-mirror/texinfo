use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'shortcontents_no_top'} = {
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {},
      'structure' => {
        'level' => 1
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap2'
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
      'number' => 2,
      'parent' => {},
      'structure' => {
        'level' => 1
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'sec'
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
      'cmdname' => 'section',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'shortcontents',
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          },
          'parent' => {}
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
      'number' => '2.1',
      'parent' => {},
      'structure' => {
        'level' => 2
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'shortcontents_no_top'}{'contents'}[0]{'parent'} = $result_trees{'shortcontents_no_top'};
$result_trees{'shortcontents_no_top'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[1]{'args'}[0];
$result_trees{'shortcontents_no_top'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[1];
$result_trees{'shortcontents_no_top'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[1];
$result_trees{'shortcontents_no_top'}{'contents'}[1]{'parent'} = $result_trees{'shortcontents_no_top'};
$result_trees{'shortcontents_no_top'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[2]{'args'}[0];
$result_trees{'shortcontents_no_top'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[2];
$result_trees{'shortcontents_no_top'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[2];
$result_trees{'shortcontents_no_top'}{'contents'}[2]{'parent'} = $result_trees{'shortcontents_no_top'};
$result_trees{'shortcontents_no_top'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[3]{'args'}[0];
$result_trees{'shortcontents_no_top'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[3];
$result_trees{'shortcontents_no_top'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[3];
$result_trees{'shortcontents_no_top'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[3]{'contents'}[1];
$result_trees{'shortcontents_no_top'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'shortcontents_no_top'}{'contents'}[3];
$result_trees{'shortcontents_no_top'}{'contents'}[3]{'parent'} = $result_trees{'shortcontents_no_top'};

$result_texis{'shortcontents_no_top'} = '@chapter chap

@chapter chap2

@section sec

@shortcontents
';


$result_texts{'shortcontents_no_top'} = '1 chap
******

2 chap2
*******

2.1 sec
=======

';

$result_sectioning{'shortcontents_no_top'} = {
  'section_childs' => [
    {
      'cmdname' => 'chapter',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'number' => 1,
      'section_up' => {},
      'structure' => {
        'level' => 1
      }
    },
    {
      'cmdname' => 'chapter',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'number' => 2,
      'section_childs' => [
        {
          'cmdname' => 'section',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'number' => '2.1',
          'section_up' => {},
          'structure' => {
            'level' => 2
          }
        }
      ],
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
$result_sectioning{'shortcontents_no_top'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'shortcontents_no_top'};
$result_sectioning{'shortcontents_no_top'}{'section_childs'}[1]{'section_childs'}[0]{'section_up'} = $result_sectioning{'shortcontents_no_top'}{'section_childs'}[1];
$result_sectioning{'shortcontents_no_top'}{'section_childs'}[1]{'section_prev'} = $result_sectioning{'shortcontents_no_top'}{'section_childs'}[0];
$result_sectioning{'shortcontents_no_top'}{'section_childs'}[1]{'section_up'} = $result_sectioning{'shortcontents_no_top'};
$result_sectioning{'shortcontents_no_top'}{'section_childs'}[1]{'toplevel_prev'} = $result_sectioning{'shortcontents_no_top'}{'section_childs'}[0];

$result_errors{'shortcontents_no_top'} = [];


$result_floats{'shortcontents_no_top'} = {};



$result_converted{'html'}->{'shortcontents_no_top'} = '<!DOCTYPE html>
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
<div class="chapter" id="chap">
<h2 class="chapter">1 chap</h2>

</div>
<div class="chapter" id="chap2">
<h2 class="chapter">2 chap2</h2>

<ul class="section-toc">
<li><a href="#sec" accesskey="1">sec</a></li>
</ul>
<div class="section" id="sec">
<h3 class="section">2.1 sec</h3>

<div class="Overview_element" id="SEC_Overview">
<h2 class="shortcontents-heading">Short Table of Contents</h2>

<div class="shortcontents">
<ul class="no-bullet">
<li><a id="stoc-chap" href="#toc-chap">1 chap</a></li>
<li><a id="stoc-chap2" href="#toc-chap2">2 chap2</a></li>

</ul>
</div>
</div>
</div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'shortcontents_no_top'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
