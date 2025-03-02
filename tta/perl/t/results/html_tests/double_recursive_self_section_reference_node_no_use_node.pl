use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_recursive_self_section_reference_node_no_use_node'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {n1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E3]
 |normalized:{n1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {n1}
 *1 @chapter C2 l2 {@ref{n2}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_directions:D[next->E4]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E4]
  ||section_level:{0}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *2 @ref C1 l2
     *brace_arg C1
     |EXTRA
     |node_content:{n2}
     |normalized:{n2}
      {n2}
  {empty_line:\\n}
 *3 @node C1 l4 {n2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |node_directions:D[prev->E0]
 |normalized:{n2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {n2}
 *4 @chapter C1 l5 {@ref{n1}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[prev->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *5 @ref C1 l5
     *brace_arg C1
     |EXTRA
     |node_content:{n1}
     |normalized:{n1}
      {n1}
';


$result_texis{'double_recursive_self_section_reference_node_no_use_node'} = '@node n1
@chapter @ref{n2}

@node n2
@chapter @ref{n1}
';


$result_texts{'double_recursive_self_section_reference_node_no_use_node'} = '1 n2
****

2 n1
****
';

$result_sectioning{'double_recursive_self_section_reference_node_no_use_node'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'n1'
            }
          },
          'section_directions' => {},
          'section_level' => 1,
          'section_number' => '1',
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'n2'
            }
          },
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 1,
          'section_number' => '2',
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'double_recursive_self_section_reference_node_no_use_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'double_recursive_self_section_reference_node_no_use_node'};
$result_sectioning{'double_recursive_self_section_reference_node_no_use_node'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'double_recursive_self_section_reference_node_no_use_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'double_recursive_self_section_reference_node_no_use_node'}{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'double_recursive_self_section_reference_node_no_use_node'}{'extra'}{'section_childs'}[0];

$result_nodes{'double_recursive_self_section_reference_node_no_use_node'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '1'
        }
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '2'
              }
            },
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'n2'
          }
        }
      },
      'normalized' => 'n1'
    }
  },
  {}
];
$result_nodes{'double_recursive_self_section_reference_node_no_use_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'double_recursive_self_section_reference_node_no_use_node'}[0];
$result_nodes{'double_recursive_self_section_reference_node_no_use_node'}[1] = $result_nodes{'double_recursive_self_section_reference_node_no_use_node'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'double_recursive_self_section_reference_node_no_use_node'} = [
  {
    'extra' => {
      'normalized' => 'n1'
    }
  },
  {
    'extra' => {
      'normalized' => 'n2'
    }
  }
];

$result_errors{'double_recursive_self_section_reference_node_no_use_node'} = [];


$result_floats{'double_recursive_self_section_reference_node_no_use_node'} = {};


$result_converted_errors{'file_html'}->{'double_recursive_self_section_reference_node_no_use_node'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'double_recursive_self_section_reference_node_no_use_node.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
