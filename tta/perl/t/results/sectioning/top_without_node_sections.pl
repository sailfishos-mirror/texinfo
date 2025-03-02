use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_without_node_sections'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
 *before_node_section
 *0 @top C3 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  *paragraph C1
   {Top section\\n}
  {empty_line:\\n}
U1 unit[E2]
unit_directions:D[prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Back: [U0]
FastBack: [U0]
Up: [U0]
NodeUp: (dir)

 *1 @node C1 l4
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |is_target:{1}
 |node_directions:D[up->MISSING: (line_arg)[C3]]
 |normalized:{second}
  *arguments_line C4
   *line_arg C1
    {second}
   *line_arg
   *line_arg
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *2 @chapter C3 l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E1]
 |section_directions:D[up->E0]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C1
   {Text of chapter\\n}
';


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
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodeUp' => {
                  'unit_command' => {
                    'extra' => {},
                    'type' => 'line_arg'
                  },
                  'unit_type' => 'external_node_unit'
                },
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'chapter',
                'extra' => {
                  'associated_node' => {
                    'associated_unit' => {},
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'second'
                    }
                  },
                  'section_directions' => {
                    'up' => {}
                  },
                  'section_level' => 1,
                  'section_number' => '1',
                  'toplevel_directions' => {
                    'prev' => {},
                    'up' => {}
                  }
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'top',
        'extra' => {
          'section_childs' => [
            {}
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0] = $result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'top_without_node_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'top_without_node_sections'};

$result_nodes{'top_without_node_sections'} = [
  {
    'associated_unit' => {
      'directions' => {
        'Back' => {
          'directions' => {
            'FastForward' => {},
            'Forward' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'top',
            'extra' => {}
          },
          'unit_type' => 'unit'
        },
        'FastBack' => {},
        'NodeUp' => {
          'unit_command' => {
            'extra' => {
              'manual_content' => {}
            },
            'type' => 'line_arg'
          },
          'unit_type' => 'external_node_unit'
        },
        'This' => {},
        'Up' => {}
      },
      'tree_unit_directions' => {
        'prev' => {}
      },
      'unit_command' => {
        'associated_unit' => {},
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '1'
        }
      },
      'unit_type' => 'unit'
    },
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {},
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'second'
    }
  }
];
$result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'}{'directions'}{'This'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastBack'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Up'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'tree_unit_directions'}{'prev'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'};
$result_nodes{'top_without_node_sections'}[0]{'extra'}{'associated_section'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'unit_command'};
$result_nodes{'top_without_node_sections'}[0]{'extra'}{'node_directions'}{'up'} = $result_nodes{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'NodeUp'}{'unit_command'};

$result_menus{'top_without_node_sections'} = [
  {
    'associated_unit' => {
      'directions' => {
        'Back' => {
          'directions' => {
            'FastForward' => {},
            'Forward' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'next' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'extra' => {}
          },
          'unit_type' => 'unit'
        },
        'FastBack' => {},
        'NodeUp' => {
          'unit_command' => {
            'extra' => {
              'manual_content' => {}
            },
            'type' => 'line_arg'
          },
          'unit_type' => 'external_node_unit'
        },
        'This' => {},
        'Up' => {}
      },
      'tree_unit_directions' => {
        'prev' => {}
      },
      'unit_command' => {
        'associated_unit' => {},
        'extra' => {
          'section_number' => '1'
        }
      },
      'unit_type' => 'unit'
    },
    'extra' => {
      'normalized' => 'second'
    }
  }
];
$result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'}{'directions'}{'FastForward'} = $result_menus{'top_without_node_sections'}[0]{'associated_unit'};
$result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'}{'directions'}{'Forward'} = $result_menus{'top_without_node_sections'}[0]{'associated_unit'};
$result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'}{'directions'}{'This'} = $result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'}{'tree_unit_directions'}{'next'} = $result_menus{'top_without_node_sections'}[0]{'associated_unit'};
$result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'}{'unit_command'}{'associated_unit'} = $result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'FastBack'} = $result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'top_without_node_sections'}[0]{'associated_unit'};
$result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Up'} = $result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'tree_unit_directions'}{'prev'} = $result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'directions'}{'Back'};
$result_menus{'top_without_node_sections'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'top_without_node_sections'}[0]{'associated_unit'};

$result_errors{'top_without_node_sections'} = [];


$result_floats{'top_without_node_sections'} = {};


$result_elements{'top_without_node_sections'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'NodeUp' => {
            'unit_command' => {
              'extra' => {
                'manual_content' => {}
              },
              'type' => 'line_arg'
            },
            'unit_type' => 'external_node_unit'
          },
          'This' => {},
          'Up' => {}
        },
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'chapter',
          'extra' => {
            'section_number' => '1'
          }
        },
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'top',
      'extra' => {}
    },
    'unit_type' => 'unit'
  },
  {}
];
$result_elements{'top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'top_without_node_sections'}[0];
$result_elements{'top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'top_without_node_sections'}[0];
$result_elements{'top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'top_without_node_sections'}[0]{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'top_without_node_sections'}[0];
$result_elements{'top_without_node_sections'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'top_without_node_sections'}[0]{'directions'}{'Forward'} = $result_elements{'top_without_node_sections'}[0]{'directions'}{'FastForward'};
$result_elements{'top_without_node_sections'}[0]{'directions'}{'This'} = $result_elements{'top_without_node_sections'}[0];
$result_elements{'top_without_node_sections'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'top_without_node_sections'}[0];
$result_elements{'top_without_node_sections'}[1] = $result_elements{'top_without_node_sections'}[0]{'directions'}{'FastForward'};



$result_directions_text{'top_without_node_sections'} = 'output unit: @top top section
  This: @top top section
  Forward: @chapter Chapter
  FastForward: @chapter Chapter
output unit: @chapter Chapter
  This: @chapter Chapter
  Back: @top top section
  FastBack: @top top section
  Up: @top top section
  NodeUp: _EXT_NODE: (dir)
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
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
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
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="top-section">
<h1 class="top"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h1>
<p>Top section
</p>
<ul class="mini-toc">
<li><a href="#second" accesskey="1">Chapter</a></li>
</ul>
<div class="chapter-level-extent" id="second">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>Text of chapter
</p></div>
</div>



</body>
</html>
';


$result_converted{'docbook'}->{'top_without_node_sections'} = '<chapter label="">
<title>top section</title>
<para>Top section
</para>
</chapter>
<chapter label="1" id="second">
<title>Chapter</title>

<para>Text of chapter
</para></chapter>
';

1;
