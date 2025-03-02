use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_node_up_url'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section
 *0 @node C1 l1
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
 *1 @top C4 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {internal top node up}
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
    |node_content:{chap}
    |normalized:{chap}
     {chap}
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
U1 unit[E3]
unit_directions:D[prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Back: [U0]
FastBack: [U0]
NodePrev: [U0]
NodeUp: [U0]
NodeBack: [U0]
 *3 @node C1 l8
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
';


$result_texis{'top_node_up_url'} = '@node Top
@top internal top node up

@menu
* chap::
@end menu

@node chap
';


$result_texts{'top_node_up_url'} = 'internal top node up
********************

* chap::

';

$result_sectioning{'top_node_up_url'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'Forward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodeBack' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'chap'
                }
              },
              'unit_type' => 'unit'
            },
            'NodeForward' => {},
            'NodeNext' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'unit_type' => 'unit'
        },
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {},
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'};
$result_sectioning{'top_node_up_url'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'top_node_up_url'};

$result_nodes{'top_node_up_url'} = [
  {
    'associated_unit' => {
      'directions' => {
        'Forward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'NodeBack' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'node_directions' => {
                'prev' => {},
                'up' => {}
              },
              'normalized' => 'chap'
            }
          },
          'unit_type' => 'unit'
        },
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'unit_command' => {},
      'unit_type' => 'unit'
    },
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'associated_unit' => {},
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {}
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'top_node_up_url'}[0];
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'top_node_up_url'}[0];
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'unit_command'} = $result_nodes{'top_node_up_url'}[0];
$result_nodes{'top_node_up_url'}[0]{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'};
$result_nodes{'top_node_up_url'}[0]{'extra'}{'node_directions'}{'next'} = $result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'};
$result_nodes{'top_node_up_url'}[1] = $result_nodes{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'};

$result_menus{'top_node_up_url'} = [
  {
    'associated_unit' => {
      'directions' => {
        'Forward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'NodeBack' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {}
          },
          'tree_unit_directions' => {
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'extra' => {
              'menu_directions' => {
                'up' => {}
              },
              'normalized' => 'chap'
            }
          },
          'unit_type' => 'unit'
        },
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'unit_command' => {},
      'unit_type' => 'unit'
    },
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {}
];
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'top_node_up_url'}[0];
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'};
$result_menus{'top_node_up_url'}[0]{'associated_unit'}{'unit_command'} = $result_menus{'top_node_up_url'}[0];
$result_menus{'top_node_up_url'}[1] = $result_menus{'top_node_up_url'}[0]{'associated_unit'}{'directions'}{'Forward'}{'unit_command'};

$result_errors{'top_node_up_url'} = [];


$result_floats{'top_node_up_url'} = {};


$result_elements{'top_node_up_url'} = [
  {
    'directions' => {
      'Forward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'NodeBack' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {}
        },
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'node',
          'extra' => {
            'menu_directions' => {
              'up' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'Top'
                }
              }
            },
            'normalized' => 'chap'
          }
        },
        'unit_type' => 'unit'
      },
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'unit_command' => {},
    'unit_type' => 'unit'
  },
  {}
];
$result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'top_node_up_url'}[0];
$result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'top_node_up_url'}[0];
$result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'top_node_up_url'}[0];
$result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'top_node_up_url'}[0];
$result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'top_node_up_url'}[0];
$result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'};
$result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'};
$result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'}{'associated_unit'} = $result_elements{'top_node_up_url'}[0];
$result_elements{'top_node_up_url'}[0]{'directions'}{'NodeForward'} = $result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'};
$result_elements{'top_node_up_url'}[0]{'directions'}{'NodeNext'} = $result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'};
$result_elements{'top_node_up_url'}[0]{'directions'}{'This'} = $result_elements{'top_node_up_url'}[0];
$result_elements{'top_node_up_url'}[0]{'unit_command'} = $result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'top_node_up_url'}[1] = $result_elements{'top_node_up_url'}[0]{'directions'}{'Forward'};



$result_directions_text{'top_node_up_url'} = 'output unit: @node Top
  This: @node Top
  Forward: @node chap
  NodeNext: @node chap
  NodeForward: @node chap
output unit: @node chap
  This: @node chap
  Back: @node Top
  FastBack: @node Top
  NodePrev: @node Top
  NodeUp: @node Top
  NodeBack: @node Top
';


$result_converted{'info'}->{'top_node_up_url'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: @acronym{GNU, @acronym{GNU}\'s Not Unix} manuals

internal top node up
********************

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top


Tag Table:
Node: Top27
Node: chap178

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'top_node_up_url'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>internal top node up</title>

<meta name="description" content="internal top node up">
<meta name="keywords" content="internal top node up">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="http://www.gnu.org/manual/" rel="up" title="@acronym{GNU, @acronym{GNU}\'s Not Unix} manuals">
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
Next: <a href="#chap" accesskey="n" rel="next">chap</a>, Up: <a href="http://www.gnu.org/manual/" accesskey="u" rel="up">@acronym{GNU, @acronym{GNU}\'s Not Unix} manuals</a> &nbsp; </p>
</div>
<h1 class="top" id="internal-top-node-up"><span>internal top node up<a class="copiable-link" href="#internal-top-node-up"> &para;</a></span></h1>


<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">internal top node up</a>, Up: <a href="#Top" accesskey="u" rel="up">internal top node up</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>
</div>



</body>
</html>
';

1;
