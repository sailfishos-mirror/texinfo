use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'part_before_top'} = [
  {
    'contents' => [
      {
        'contents' => [],
        'parent' => {
          'contents' => [
            {},
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'part'
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
              'cmdname' => 'part',
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
              'parent' => {}
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
              'contents' => [],
              'extra' => {
                'associated_part' => {},
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'type' => 'document_root'
        },
        'type' => 'before_node_section'
      },
      {},
      {}
    ],
    'extra' => {
      'unit_command' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[0] = $result_trees{'part_before_top'}[0]{'contents'}[0];
$result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0];
$result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'parent'} = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0];
$result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'extra'}{'associated_part'} = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'parent'} = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'part_before_top'}[0]{'contents'}[1] = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'part_before_top'}[0]{'contents'}[2] = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'part_before_top'}[0]{'extra'}{'unit_command'} = $result_trees{'part_before_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];

$result_texis{'part_before_top'} = '@part part

@top top
';


$result_texts{'part_before_top'} = 'part
****

top
***
';

$result_sectioning{'part_before_top'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'top',
            'extra' => {
              'associated_part' => {}
            },
            'structure' => {
              'associated_unit' => {
                'extra' => {
                  'unit_command' => {}
                },
                'structure' => {
                  'directions' => {
                    'This' => {}
                  }
                },
                'type' => 'unit'
              },
              'level' => 0,
              'section_prev' => {},
              'section_up' => {}
            }
          }
        },
        'structure' => {
          'associated_unit' => {},
          'level' => 0,
          'section_up' => {}
        }
      },
      {}
    ]
  }
};
$result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'};
$result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'structure'}{'associated_unit'};
$result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'structure'}{'section_prev'} = $result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'structure'}{'section_up'} = $result_sectioning{'part_before_top'};
$result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'structure'}{'associated_unit'};
$result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'part_before_top'};
$result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[1] = $result_sectioning{'part_before_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'};

$result_errors{'part_before_top'} = [
  {
    'error_line' => ':1: warning: @part should not be associated with @top
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@part should not be associated with @top',
    'type' => 'warning'
  }
];


$result_floats{'part_before_top'} = {};


$result_elements{'part_before_top'} = [
  {
    'extra' => {
      'unit_command' => {
        'cmdname' => 'top',
        'extra' => {
          'associated_part' => {
            'cmdname' => 'part',
            'extra' => {},
            'structure' => {
              'associated_unit' => {},
              'level' => 0
            }
          }
        },
        'structure' => {
          'associated_unit' => {},
          'level' => 0
        }
      }
    },
    'structure' => {
      'directions' => {
        'This' => {}
      }
    },
    'type' => 'unit'
  }
];
$result_elements{'part_before_top'}[0]{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_elements{'part_before_top'}[0];
$result_elements{'part_before_top'}[0]{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'part_before_top'}[0];
$result_elements{'part_before_top'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'part_before_top'}[0];



$result_directions_text{'part_before_top'} = 'element: @top top
  This: @top top
';


$result_converted{'plaintext'}->{'part_before_top'} = 'top
***

';


$result_converted{'html'}->{'part_before_top'} = '<!DOCTYPE html>
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
<div class="part" id="part">
<h1 class="part">part</h1>
<hr>

</div>
<div class="top" id="top">
<h1 class="top">top</h1>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'part_before_top'} = '<part spaces=" "><sectiontitle>part</sectiontitle>

</part>
<top spaces=" "><sectiontitle>top</sectiontitle>
</top>
';

1;
