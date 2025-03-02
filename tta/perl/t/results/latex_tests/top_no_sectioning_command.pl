use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_no_sectioning_command'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content
 *0 @node C2 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E1]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
 *1 @node C1 l3
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |is_target:{1}
 |node_directions:D[prev->E0]
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *2 @chapter C3 l4
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E1]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
  *paragraph C2
   *3 @pxref C1 l6
    *brace_arg C1
    |EXTRA
    |node_content:{Top}
    |normalized:{Top}
     {Top}
   {\\n}
';


$result_texis{'top_no_sectioning_command'} = '@node Top

@node Chapter
@chapter Chap

@pxref{Top}
';


$result_texts{'top_no_sectioning_command'} = '
1 Chap
******

Top
';

$result_sectioning{'top_no_sectioning_command'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Chapter'
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
$result_sectioning{'top_no_sectioning_command'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'top_no_sectioning_command'};

$result_nodes{'top_no_sectioning_command'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'Chapter'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'top_no_sectioning_command'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'top_no_sectioning_command'}[0];
$result_nodes{'top_no_sectioning_command'}[1] = $result_nodes{'top_no_sectioning_command'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'top_no_sectioning_command'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'Chapter'
    }
  }
];

$result_errors{'top_no_sectioning_command'} = [];


$result_floats{'top_no_sectioning_command'} = {};



$result_converted{'latex_text'}->{'top_no_sectioning_command'} = '\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:Chapter}%

see \\hyperref[anchor:Top]{\\chaptername~\\ref*{anchor:Top} [Top], page~\\pageref*{anchor:Top}}
';

1;
