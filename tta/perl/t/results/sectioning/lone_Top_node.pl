use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'lone_Top_node'} = 'U0 unit[E3]
UNIT_DIRECTIONS
This: [U0]
NodePrev: [U0]
NodeUp: [U0]
 *before_node_section C1
  *preamble_before_content
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
  {empty_line:\\n}
  *1 @menu C3 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{First}
    |normalized:{First}
     {First}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l5
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
 *2 @node C1 l7
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{First}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {First}
 *3 @chapter C1 l8
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
';


$result_texis{'lone_Top_node'} = '@node Top

@menu
* First::
@end menu

@node First
@chapter chap
';


$result_texts{'lone_Top_node'} = '
* First::

1 chap
******
';

$result_sectioning{'lone_Top_node'} = {
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
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'First'
            }
          },
          'section_level' => 1,
          'section_number' => '1',
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodePrev'} = $result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeUp'} = $result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'lone_Top_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'lone_Top_node'};

$result_nodes{'lone_Top_node'} = [
  {
    'associated_unit' => {
      'directions' => {
        'NodePrev' => {},
        'NodeUp' => {},
        'This' => {}
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
            'normalized' => 'First'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'lone_Top_node'}[0]{'associated_unit'}{'directions'}{'NodePrev'} = $result_nodes{'lone_Top_node'}[0]{'associated_unit'};
$result_nodes{'lone_Top_node'}[0]{'associated_unit'}{'directions'}{'NodeUp'} = $result_nodes{'lone_Top_node'}[0]{'associated_unit'};
$result_nodes{'lone_Top_node'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'lone_Top_node'}[0]{'associated_unit'};
$result_nodes{'lone_Top_node'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'lone_Top_node'}[0]{'associated_unit'};
$result_nodes{'lone_Top_node'}[0]{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'lone_Top_node'}[0]{'associated_unit'};
$result_nodes{'lone_Top_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'} = $result_nodes{'lone_Top_node'}[0]{'associated_unit'}{'unit_command'};
$result_nodes{'lone_Top_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'lone_Top_node'}[0];
$result_nodes{'lone_Top_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'lone_Top_node'}[0];
$result_nodes{'lone_Top_node'}[1] = $result_nodes{'lone_Top_node'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'lone_Top_node'} = [
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
        'up' => {}
      },
      'normalized' => 'First'
    }
  }
];
$result_menus{'lone_Top_node'}[0]{'associated_unit'}{'directions'}{'NodePrev'} = $result_menus{'lone_Top_node'}[0]{'associated_unit'};
$result_menus{'lone_Top_node'}[0]{'associated_unit'}{'directions'}{'NodeUp'} = $result_menus{'lone_Top_node'}[0]{'associated_unit'};
$result_menus{'lone_Top_node'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'lone_Top_node'}[0]{'associated_unit'};
$result_menus{'lone_Top_node'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'lone_Top_node'}[0]{'associated_unit'};
$result_menus{'lone_Top_node'}[1]{'associated_unit'} = $result_menus{'lone_Top_node'}[0]{'associated_unit'};
$result_menus{'lone_Top_node'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'lone_Top_node'}[0];

$result_errors{'lone_Top_node'} = [
  {
    'error_line' => 'warning: node `Top\' is up for `First\' in menu but not in sectioning
',
    'line_nr' => 7,
    'text' => 'node `Top\' is up for `First\' in menu but not in sectioning',
    'type' => 'warning'
  }
];


$result_floats{'lone_Top_node'} = {};


$result_elements{'lone_Top_node'} = [
  {
    'directions' => {
      'NodePrev' => {},
      'NodeUp' => {},
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'chapter',
      'extra' => {
        'section_number' => '1'
      }
    },
    'unit_type' => 'unit'
  }
];
$result_elements{'lone_Top_node'}[0]{'directions'}{'NodePrev'} = $result_elements{'lone_Top_node'}[0];
$result_elements{'lone_Top_node'}[0]{'directions'}{'NodeUp'} = $result_elements{'lone_Top_node'}[0];
$result_elements{'lone_Top_node'}[0]{'directions'}{'This'} = $result_elements{'lone_Top_node'}[0];
$result_elements{'lone_Top_node'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'lone_Top_node'}[0];



$result_directions_text{'lone_Top_node'} = 'output unit: @chapter chap
  This: @chapter chap
  NodePrev: @chapter chap
  NodeUp: @chapter chap
';


$result_converted{'latex_text'}->{'lone_Top_node'} = '\\begin{document}
\\label{anchor:Top}%
\\chapter{{chap}}
\\label{anchor:First}%
';

1;
