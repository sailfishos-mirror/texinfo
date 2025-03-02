use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'part_node_after_top'} = 'U0 unit[E1]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
Next: [U1]
NodeNext: [U0]
NodeForward: [U0]
NodeBack: [U0]
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_directions:D[next->E4]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E4]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *2 @menu C3 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap part node after top}
    |normalized:{chap-part-node-after-top}
     {chap part node after top}
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
 *3 @node C1 l8 {chap part node after top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap-part-node-after-top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap part node after top}
U1 unit[E4]
unit_directions:D[prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Back: [U0]
FastBack: [U0]
Prev: [U0]
 *4 @part C1 l9 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |section_directions:D[prev->E1]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
';


$result_texis{'part_node_after_top'} = '@node Top
@top top

@menu
* chap part node after top::
@end menu

@node chap part node after top
@part part
';


$result_texts{'part_node_after_top'} = 'top
***

* chap part node after top::

part
****
';

$result_sectioning{'part_node_after_top'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'Prev' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'part',
                'extra' => {
                  'section_directions' => {
                    'prev' => {}
                  },
                  'section_level' => 0
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'Next' => {},
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_directions' => {},
          'section_level' => 0,
          'sectioning_root' => {}
        }
      },
      {}
    ],
    'section_level' => -1
  }
};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeBack'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'part_node_after_top'};
$result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[1] = $result_sectioning{'part_node_after_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};

$result_nodes{'part_node_after_top'} = [
  {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'Prev' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'part',
            'extra' => {}
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
        'NodeBack' => {},
        'NodeForward' => {},
        'NodeNext' => {},
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
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {},
      'node_directions' => {
        'next' => {
          'associated_unit' => {},
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap-part-node-after-top'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'NodeBack'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_after_top'}[0]{'extra'}{'associated_section'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'}{'unit_command'};
$result_nodes{'part_node_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'part_node_after_top'}[0]{'associated_unit'};
$result_nodes{'part_node_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'part_node_after_top'}[0];
$result_nodes{'part_node_after_top'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'part_node_after_top'}[0];
$result_nodes{'part_node_after_top'}[1] = $result_nodes{'part_node_after_top'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'part_node_after_top'} = [
  {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'Prev' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'extra' => {}
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
        'NodeBack' => {},
        'NodeForward' => {},
        'NodeNext' => {},
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
        'up' => {}
      },
      'normalized' => 'chap-part-node-after-top'
    }
  }
];
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'Next'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'NodeBack'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'part_node_after_top'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_after_top'}[1]{'associated_unit'} = $result_menus{'part_node_after_top'}[0]{'associated_unit'};
$result_menus{'part_node_after_top'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'part_node_after_top'}[0];

$result_errors{'part_node_after_top'} = [
  {
    'error_line' => 'warning: @node precedes @part, but parts may not be associated with nodes
',
    'line_nr' => 9,
    'text' => '@node precedes @part, but parts may not be associated with nodes',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no sectioning command associated with @part
',
    'line_nr' => 9,
    'text' => 'no sectioning command associated with @part',
    'type' => 'warning'
  }
];


$result_floats{'part_node_after_top'} = {};


$result_elements{'part_node_after_top'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'Prev' => {},
          'This' => {}
        },
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'part',
          'extra' => {}
        },
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'Next' => {},
      'NodeBack' => {},
      'NodeForward' => {},
      'NodeNext' => {},
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
$result_elements{'part_node_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'part_node_after_top'}[0];
$result_elements{'part_node_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'part_node_after_top'}[0];
$result_elements{'part_node_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'part_node_after_top'}[0];
$result_elements{'part_node_after_top'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'part_node_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_after_top'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'part_node_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_after_top'}[0]{'directions'}{'Forward'} = $result_elements{'part_node_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_after_top'}[0]{'directions'}{'Next'} = $result_elements{'part_node_after_top'}[0]{'directions'}{'FastForward'};
$result_elements{'part_node_after_top'}[0]{'directions'}{'NodeBack'} = $result_elements{'part_node_after_top'}[0];
$result_elements{'part_node_after_top'}[0]{'directions'}{'NodeForward'} = $result_elements{'part_node_after_top'}[0];
$result_elements{'part_node_after_top'}[0]{'directions'}{'NodeNext'} = $result_elements{'part_node_after_top'}[0];
$result_elements{'part_node_after_top'}[0]{'directions'}{'This'} = $result_elements{'part_node_after_top'}[0];
$result_elements{'part_node_after_top'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'part_node_after_top'}[0];
$result_elements{'part_node_after_top'}[1] = $result_elements{'part_node_after_top'}[0]{'directions'}{'FastForward'};



$result_directions_text{'part_node_after_top'} = 'output unit: @top top
  This: @top top
  Forward: @part part
  FastForward: @part part
  Next: @part part
  NodeNext: @top top
  NodeForward: @top top
  NodeBack: @top top
output unit: @part part
  This: @part part
  Back: @top top
  FastBack: @top top
  Prev: @top top
';


$result_converted{'info'}->{'part_node_after_top'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap part node after top,  Up: (dir)

top
***

* Menu:

* chap part node after top::


File: ,  Node: chap part node after top,  Prev: Top,  Up: Top


Tag Table:
Node: Top27
Node: chap part node after top142

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'part_node_after_top'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
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
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chap-part-node-after-top" accesskey="n" rel="next">chap part node after top</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<hr>
<a class="node-id" id="chap-part-node-after-top"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap part node after top<a class="copiable-link" href="#chap-part-node-after-top"> &para;</a></span></h4>
</div>
<div class="part-level-extent" id="part">
<h1 class="part"><span>part<a class="copiable-link" href="#part"> &para;</a></span></h1>
<hr>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'part_node_after_top'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap part node after top</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chap part node after top</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="chap-part-node-after-top" spaces=" "><nodename>chap part node after top</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<part spaces=" "><sectiontitle>part</sectiontitle>
</part>
';

1;
