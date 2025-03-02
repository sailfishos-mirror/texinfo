use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'unnumbered_before_top_node'} = 'U0 unit[E0]
UNIT_DIRECTIONS
This: [U0]
 *before_node_section
 *0 @unnumbered C2 l1 {before nodes}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {before nodes}
  {empty_line:\\n}
 *1 @node C5 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  *paragraph C1
   {Top node\\n}
  {empty_line:\\n}
  *2 @titlefont C1 l6
  |EXTRA
  |global_command_number:{1}
   *brace_container C1
    {Title titlefont}
  {\\n}
';


$result_texis{'unnumbered_before_top_node'} = '@unnumbered before nodes

@node Top
Top node

@titlefont{Title titlefont}
';


$result_texts{'unnumbered_before_top_node'} = 'before nodes
************

Top node

Title titlefont
';

$result_sectioning{'unnumbered_before_top_node'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'This' => {}
          },
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'unnumbered',
        'extra' => {
          'section_level' => 1,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'unnumbered_before_top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'unnumbered_before_top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'unnumbered_before_top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'unnumbered_before_top_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'unnumbered_before_top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'unnumbered_before_top_node'};

$result_nodes{'unnumbered_before_top_node'} = [
  {
    'associated_unit' => {
      'directions' => {
        'This' => {}
      },
      'unit_command' => {
        'associated_unit' => {},
        'cmdname' => 'unnumbered',
        'extra' => {}
      },
      'unit_type' => 'unit'
    },
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];
$result_nodes{'unnumbered_before_top_node'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'unnumbered_before_top_node'}[0]{'associated_unit'};
$result_nodes{'unnumbered_before_top_node'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'unnumbered_before_top_node'}[0]{'associated_unit'};

$result_menus{'unnumbered_before_top_node'} = [
  {
    'associated_unit' => {
      'directions' => {
        'This' => {}
      },
      'unit_command' => {
        'associated_unit' => {},
        'extra' => {}
      },
      'unit_type' => 'unit'
    },
    'extra' => {
      'normalized' => 'Top'
    }
  }
];
$result_menus{'unnumbered_before_top_node'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'unnumbered_before_top_node'}[0]{'associated_unit'};
$result_menus{'unnumbered_before_top_node'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'unnumbered_before_top_node'}[0]{'associated_unit'};

$result_errors{'unnumbered_before_top_node'} = [];


$result_floats{'unnumbered_before_top_node'} = {};


$result_elements{'unnumbered_before_top_node'} = [
  {
    'directions' => {
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'unnumbered',
      'extra' => {}
    },
    'unit_type' => 'unit'
  }
];
$result_elements{'unnumbered_before_top_node'}[0]{'directions'}{'This'} = $result_elements{'unnumbered_before_top_node'}[0];
$result_elements{'unnumbered_before_top_node'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'unnumbered_before_top_node'}[0];



$result_directions_text{'unnumbered_before_top_node'} = 'output unit: @unnumbered before nodes
  This: @unnumbered before nodes
';


$result_converted{'info'}->{'unnumbered_before_top_node'} = 'This is , produced from .

before nodes
************


File: ,  Node: Top,  Up: (dir)

Top node

Title titlefont
***************


Tag Table:
Node: Top54

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'unnumbered_before_top_node'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Title titlefont</title>

<meta name="description" content="Title titlefont">
<meta name="keywords" content="Title titlefont">
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
<div class="unnumbered-level-extent" id="before-nodes">
<h2 class="unnumbered"><span>before nodes<a class="copiable-link" href="#before-nodes"> &para;</a></span></h2>

<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<p>Top node
</p>
<h1 class="titlefont">Title titlefont</h1>
</div>



</body>
</html>
';


$result_converted{'docbook'}->{'unnumbered_before_top_node'} = '<chapter label="">
<title>before nodes</title>

</chapter>
';

1;
