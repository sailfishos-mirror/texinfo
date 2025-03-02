use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodes_after_top_before_section_sections'} = 'U0 unit[E4]
UNIT_DIRECTIONS
This: [U0]
NodePrev: [U0]
NodeUp: [U0]
 *before_node_section
 *0 @node C4 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  *paragraph C1
   {Top node\\n}
  *1 @menu C4 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap node}
    |normalized:{chap-node}
     {chap node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{third node}
    |normalized:{third-node}
     {third node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *2 @node C4 l8
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E3|up->E0]
 |node_directions:D[next->E3|prev->E0|up->E0]
 |normalized:{chap-node}
  *arguments_line C4
   *line_arg C1
    {chap node}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{third node}
   |normalized:{third-node}
    {third node}
   *line_arg C1
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *paragraph C1
   {second node\\n}
  {empty_line:\\n}
 *3 @node C1 l12
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[prev->E2|up->E0]
 |node_directions:D[prev->E2|up->E0]
 |normalized:{third-node}
  *arguments_line C4
   *line_arg C1
    {third node}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{chap node}
   |normalized:{chap-node}
    {chap node}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *4 @subsection C1 l13
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_level:{3}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E4]
  ||section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection}
';


$result_texis{'nodes_after_top_before_section_sections'} = '@node Top
Top node
@menu
* chap node::
* third node::
@end menu

@node chap node, third node,Top,Top

second node

@node third node,,chap node,Top
@subsection subsection
';


$result_texts{'nodes_after_top_before_section_sections'} = 'Top node
* chap node::
* third node::


second node

1 subsection
------------
';

$result_sectioning{'nodes_after_top_before_section_sections'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {}
          },
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'subsection',
        'extra' => {
          'associated_node' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'third-node'
            }
          },
          'section_level' => 3,
          'section_number' => '1',
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => 2
  }
};
$result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodePrev'} = $result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeUp'} = $result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'nodes_after_top_before_section_sections'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'nodes_after_top_before_section_sections'};

$result_nodes{'nodes_after_top_before_section_sections'} = [
  {
    'associated_unit' => {
      'directions' => {
        'NodePrev' => {},
        'NodeUp' => {},
        'This' => {}
      },
      'unit_command' => {
        'associated_unit' => {},
        'cmdname' => 'subsection',
        'extra' => {
          'section_number' => '1'
        }
      },
      'unit_type' => 'unit'
    },
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'associated_unit' => {},
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'next' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {},
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'third-node'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap-node'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'}{'directions'}{'NodePrev'} = $result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'}{'directions'}{'NodeUp'} = $result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'} = $result_nodes{'nodes_after_top_before_section_sections'}[0]{'associated_unit'}{'unit_command'};
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodes_after_top_before_section_sections'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodes_after_top_before_section_sections'}[0];
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodes_after_top_before_section_sections'}[0];
$result_nodes{'nodes_after_top_before_section_sections'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodes_after_top_before_section_sections'}[0];
$result_nodes{'nodes_after_top_before_section_sections'}[1] = $result_nodes{'nodes_after_top_before_section_sections'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodes_after_top_before_section_sections'}[2] = $result_nodes{'nodes_after_top_before_section_sections'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'nodes_after_top_before_section_sections'} = [
  {
    'associated_unit' => {
      'directions' => {
        'NodePrev' => {},
        'NodeUp' => {},
        'This' => {}
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
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'associated_unit' => {},
    'extra' => {
      'menu_directions' => {
        'next' => {
          'associated_unit' => {},
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'third-node'
          }
        },
        'up' => {}
      },
      'normalized' => 'chap-node'
    }
  },
  {}
];
$result_menus{'nodes_after_top_before_section_sections'}[0]{'associated_unit'}{'directions'}{'NodePrev'} = $result_menus{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_menus{'nodes_after_top_before_section_sections'}[0]{'associated_unit'}{'directions'}{'NodeUp'} = $result_menus{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_menus{'nodes_after_top_before_section_sections'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_menus{'nodes_after_top_before_section_sections'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_menus{'nodes_after_top_before_section_sections'}[1]{'associated_unit'} = $result_menus{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_menus{'nodes_after_top_before_section_sections'}[1]{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'nodes_after_top_before_section_sections'}[0]{'associated_unit'};
$result_menus{'nodes_after_top_before_section_sections'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'nodes_after_top_before_section_sections'}[1];
$result_menus{'nodes_after_top_before_section_sections'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodes_after_top_before_section_sections'}[0];
$result_menus{'nodes_after_top_before_section_sections'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodes_after_top_before_section_sections'}[0];
$result_menus{'nodes_after_top_before_section_sections'}[2] = $result_menus{'nodes_after_top_before_section_sections'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'nodes_after_top_before_section_sections'} = [];


$result_floats{'nodes_after_top_before_section_sections'} = {};


$result_elements{'nodes_after_top_before_section_sections'} = [
  {
    'directions' => {
      'NodePrev' => {},
      'NodeUp' => {},
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'subsection',
      'extra' => {
        'section_number' => '1'
      }
    },
    'unit_type' => 'unit'
  }
];
$result_elements{'nodes_after_top_before_section_sections'}[0]{'directions'}{'NodePrev'} = $result_elements{'nodes_after_top_before_section_sections'}[0];
$result_elements{'nodes_after_top_before_section_sections'}[0]{'directions'}{'NodeUp'} = $result_elements{'nodes_after_top_before_section_sections'}[0];
$result_elements{'nodes_after_top_before_section_sections'}[0]{'directions'}{'This'} = $result_elements{'nodes_after_top_before_section_sections'}[0];
$result_elements{'nodes_after_top_before_section_sections'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'nodes_after_top_before_section_sections'}[0];



$result_directions_text{'nodes_after_top_before_section_sections'} = 'output unit: @subsection subsection
  This: @subsection subsection
  NodePrev: @subsection subsection
  NodeUp: @subsection subsection
';


$result_converted{'info'}->{'nodes_after_top_before_section_sections'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap node,  Up: (dir)

Top node
* Menu:

* chap node::
* third node::


File: ,  Node: chap node,  Next: third node,  Prev: Top,  Up: Top

second node


File: ,  Node: third node,  Prev: chap node,  Up: Top

1 subsection
------------


Tag Table:
Node: Top27
Node: chap node127
Node: third node209

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'nodes_after_top_before_section_sections'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
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
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap-node" accesskey="n" rel="next">chap node</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<p>Top node
</p>
<hr>
<a class="node-id" id="chap-node"></a><div class="nav-panel">
<p>
Next: <a href="#third-node" accesskey="n" rel="next">subsection</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Top</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap node<a class="copiable-link" href="#chap-node"> &para;</a></span></h4>

<p>second node
</p>
<hr>
<div class="subsection-level-extent" id="third-node">
<div class="nav-panel">
<p>
Previous: <a href="#chap-node" accesskey="p" rel="prev">chap node</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="subsection" id="subsection"><span>1 subsection<a class="copiable-link" href="#subsection"> &para;</a></span></h4>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'nodes_after_top_before_section_sections'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
