use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_without_node_nodes'} = 'U0 unit[E1]
UNIT_DIRECTIONS
This: [U0]
NodeUp: (dir)

 *before_node_section
 *0 @top C3 l1 {top section}
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
 *1 @node C1 l4 {second}
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
 *2 @chapter C3 l5 {Chapter}
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


$result_texis{'top_without_node_nodes'} = '@top top section
Top section

@node second,,,(dir)
@chapter Chapter

Text of chapter
';


$result_texts{'top_without_node_nodes'} = 'top section
***********
Top section

1 Chapter
*********

Text of chapter
';

$result_sectioning{'top_without_node_nodes'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'NodeUp' => {
              'unit_command' => {
                'extra' => {},
                'type' => 'line_arg'
              },
              'unit_type' => 'external_node_unit'
            },
            'This' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'second'
            }
          },
          'unit_type' => 'unit'
        },
        'cmdname' => 'top',
        'extra' => {
          'section_childs' => [
            {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {},
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
            }
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
$result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'associated_unit'} = $result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'};
$result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_without_node_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'top_without_node_nodes'};

$result_nodes{'top_without_node_nodes'} = [
  {
    'associated_unit' => {
      'directions' => {
        'NodeUp' => {
          'unit_command' => {
            'extra' => {
              'manual_content' => {}
            },
            'type' => 'line_arg'
          },
          'unit_type' => 'external_node_unit'
        },
        'This' => {}
      },
      'unit_command' => {},
      'unit_type' => 'unit'
    },
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'associated_unit' => {},
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '1'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'second'
    }
  }
];
$result_nodes{'top_without_node_nodes'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'top_without_node_nodes'}[0]{'associated_unit'};
$result_nodes{'top_without_node_nodes'}[0]{'associated_unit'}{'unit_command'} = $result_nodes{'top_without_node_nodes'}[0];
$result_nodes{'top_without_node_nodes'}[0]{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'top_without_node_nodes'}[0]{'associated_unit'};
$result_nodes{'top_without_node_nodes'}[0]{'extra'}{'node_directions'}{'up'} = $result_nodes{'top_without_node_nodes'}[0]{'associated_unit'}{'directions'}{'NodeUp'}{'unit_command'};

$result_menus{'top_without_node_nodes'} = [
  {
    'associated_unit' => {
      'directions' => {
        'NodeUp' => {
          'unit_command' => {
            'extra' => {
              'manual_content' => {}
            },
            'type' => 'line_arg'
          },
          'unit_type' => 'external_node_unit'
        },
        'This' => {}
      },
      'unit_command' => {},
      'unit_type' => 'unit'
    },
    'extra' => {
      'normalized' => 'second'
    }
  }
];
$result_menus{'top_without_node_nodes'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'top_without_node_nodes'}[0]{'associated_unit'};
$result_menus{'top_without_node_nodes'}[0]{'associated_unit'}{'unit_command'} = $result_menus{'top_without_node_nodes'}[0];

$result_errors{'top_without_node_nodes'} = [];


$result_floats{'top_without_node_nodes'} = {};


$result_elements{'top_without_node_nodes'} = [
  {
    'directions' => {
      'NodeUp' => {
        'unit_command' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        },
        'unit_type' => 'external_node_unit'
      },
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'second'
      }
    },
    'unit_type' => 'unit'
  }
];
$result_elements{'top_without_node_nodes'}[0]{'directions'}{'This'} = $result_elements{'top_without_node_nodes'}[0];
$result_elements{'top_without_node_nodes'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'top_without_node_nodes'}[0];



$result_directions_text{'top_without_node_nodes'} = 'output unit: @node second
  This: @node second
  NodeUp: _EXT_NODE: (dir)
';


$result_converted{'info'}->{'top_without_node_nodes'} = 'This is , produced from .

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

$result_converted_errors{'info'}->{'top_without_node_nodes'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'top_without_node_nodes'} = '<!DOCTYPE html>
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

1;
