use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'top_node_part_top'} = [
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
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
                'line_nr' => 5,
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
      {},
      {}
    ],
    'extra' => {
      'unit_command' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[0] = $result_trees{'top_node_part_top'}[0]{'contents'}[0];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'associated_part'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'parent'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'top_node_part_top'}[0]{'contents'}[1] = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'top_node_part_top'}[0]{'contents'}[2] = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'top_node_part_top'}[0]{'contents'}[3] = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'top_node_part_top'}[0]{'extra'}{'unit_command'} = $result_trees{'top_node_part_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3];

$result_texis{'top_node_part_top'} = '@node Top

@part part

@top top
';


$result_texts{'top_node_part_top'} = '
part
****

top
***
';

$result_sectioning{'top_node_part_top'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'top',
            'extra' => {
              'associated_node' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'Top'
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
                  }
                }
              },
              'associated_part' => {}
            },
            'structure' => {
              'associated_unit' => {},
              'section_level' => 0,
              'section_prev' => {},
              'section_up' => {}
            }
          }
        },
        'structure' => {
          'associated_unit' => {},
          'section_level' => 0,
          'section_up' => {}
        }
      },
      {}
    ],
    'section_level' => -1
  }
};
$result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'};
$result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'structure'}{'associated_unit'} = $result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'structure'}{'section_prev'} = $result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'structure'}{'section_up'} = $result_sectioning{'top_node_part_top'};
$result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'top_node_part_top'};
$result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[1] = $result_sectioning{'top_node_part_top'}{'structure'}{'section_childs'}[0]{'extra'}{'part_associated_section'};

$result_nodes{'top_node_part_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'associated_part' => {
          'cmdname' => 'part',
          'extra' => {},
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
            }
          }
        }
      },
      'structure' => {
        'associated_unit' => {}
      }
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {}
  }
};
$result_nodes{'top_node_part_top'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_nodes{'top_node_part_top'}{'extra'}{'associated_section'};
$result_nodes{'top_node_part_top'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'top_node_part_top'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'top_node_part_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'} = $result_nodes{'top_node_part_top'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'top_node_part_top'}{'structure'}{'associated_unit'} = $result_nodes{'top_node_part_top'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};

$result_menus{'top_node_part_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {
      'extra' => {
        'unit_command' => {
          'cmdname' => 'top',
          'extra' => {
            'associated_part' => {
              'cmdname' => 'part',
              'extra' => {},
              'structure' => {
                'associated_unit' => {}
              }
            }
          },
          'structure' => {
            'associated_unit' => {}
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
  }
};
$result_menus{'top_node_part_top'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_menus{'top_node_part_top'}{'structure'}{'associated_unit'};
$result_menus{'top_node_part_top'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'top_node_part_top'}{'structure'}{'associated_unit'};
$result_menus{'top_node_part_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_menus{'top_node_part_top'}{'structure'}{'associated_unit'};

$result_errors{'top_node_part_top'} = [
  {
    'error_line' => 'warning: @node precedes @part, but parts may not be associated with nodes
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@node precedes @part, but parts may not be associated with nodes',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @part should not be associated with @top
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@part should not be associated with @top',
    'type' => 'warning'
  }
];


$result_floats{'top_node_part_top'} = {};


$result_elements{'top_node_part_top'} = [
  {
    'extra' => {
      'unit_command' => {
        'cmdname' => 'top',
        'extra' => {
          'associated_part' => {
            'cmdname' => 'part',
            'extra' => {},
            'structure' => {
              'associated_unit' => {}
            }
          }
        },
        'structure' => {
          'associated_unit' => {}
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
$result_elements{'top_node_part_top'}[0]{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_elements{'top_node_part_top'}[0];
$result_elements{'top_node_part_top'}[0]{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'top_node_part_top'}[0];
$result_elements{'top_node_part_top'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'top_node_part_top'}[0];



$result_directions_text{'top_node_part_top'} = 'element: @top top
  This: @top top
';


$result_converted{'info'}->{'top_node_part_top'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

top
***



Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'top_node_part_top'} = '<!DOCTYPE html>
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

</div>
<div class="part-level-extent" id="part">
<h1 class="part">part</h1>
<hr>

<h1 class="top" id="top">top</h1>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'top_node_part_top'} = '<node name="Top" spaces=" "><nodename>Top</nodename></node>

<part spaces=" "><sectiontitle>part</sectiontitle>

</part>
<top spaces=" "><sectiontitle>top</sectiontitle>
</top>
';

1;
