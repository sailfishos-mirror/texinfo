use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      },
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
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
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
$result_sectioning{'node_sectop_before_chapter_no_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'node_sectop_before_chapter_no_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'node_sectop_before_chapter_no_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'node_sectop_before_chapter_no_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'node_sectop_before_chapter_no_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'node_sectop_before_chapter_no_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'node_sectop_before_chapter_no_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'node_sectop_before_chapter_no_node'};

$result_nodes{'node_sectop_before_chapter_no_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  }
};

$result_menus{'node_sectop_before_chapter_no_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'node_sectop_before_chapter_no_node'} = [];


$result_floats{'node_sectop_before_chapter_no_node'} = {};



$result_converted{'plaintext'}->{'node_sectop_before_chapter_no_node'} = 'top section
***********

1 chap
******

';


$result_converted{'html'}->{'node_sectop_before_chapter_no_node'} = '<!DOCTYPE html>
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
kbd {font-style: oblique}
-->
</style>


</head>

<body lang="en">

<div class="top" id="Top">
<h1 class="top" id="top-section">top section</h1>

<ul class="section-toc">
<li><a href="#chap" accesskey="1">chap</a></li>
</ul>
<div class="chapter" id="chap">
<h2 class="chapter">1 chap</h2>
</div>
</div>



</body>
</html>
';


$result_converted{'latex'}->{'node_sectop_before_chapter_no_node'} = '
';

1;
