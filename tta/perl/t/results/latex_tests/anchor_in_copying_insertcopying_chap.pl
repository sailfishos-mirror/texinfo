use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_in_copying_insertcopying_chap'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *0 @copying C3 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C3
     {Cop. }
     *1 @anchor C1 l2
     |EXTRA
     |is_target:{1}
     |normalized:{a-in-copying}
      *brace_arg C1
      |EXTRA
      |element_region:{copying}
       {a in copying}
     {. Ying.\\n}
    *@end C1 l3
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   {empty_line:\\n}
 *2 @node C1 l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *3 @top C2 l6
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_childs:EC[E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *4 @node C1 l8
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E2]
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *5 @chapter C7 l9
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E3|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
  *paragraph C2
   *6 @pxref C1 l11
    *brace_arg C1
    |EXTRA
    |node_content:{a in copying}
    |normalized:{a-in-copying}
     {a in copying}
   {\\n}
  {empty_line:\\n}
  *@insertcopying C1 l13
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C2
   *7 @pxref C1 l15
    *brace_arg C1
    |EXTRA
    |node_content:{a in copying}
    |normalized:{a-in-copying}
     {a in copying}
   {\\n}
';


$result_texis{'anchor_in_copying_insertcopying_chap'} = '@copying
Cop. @anchor{a in copying}. Ying.
@end copying

@node Top
@top top

@node Chapter
@chapter Chap

@pxref{a in copying}

@insertcopying

@pxref{a in copying}
';


$result_texts{'anchor_in_copying_insertcopying_chap'} = '
top
***

1 Chap
******

a in copying


a in copying
';

$result_sectioning{'anchor_in_copying_insertcopying_chap'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
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
$result_sectioning{'anchor_in_copying_insertcopying_chap'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'anchor_in_copying_insertcopying_chap'}{'extra'}{'section_childs'}[0];
$result_sectioning{'anchor_in_copying_insertcopying_chap'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'anchor_in_copying_insertcopying_chap'}{'extra'}{'section_childs'}[0];
$result_sectioning{'anchor_in_copying_insertcopying_chap'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'anchor_in_copying_insertcopying_chap'}{'extra'}{'section_childs'}[0];
$result_sectioning{'anchor_in_copying_insertcopying_chap'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'anchor_in_copying_insertcopying_chap'};

$result_nodes{'anchor_in_copying_insertcopying_chap'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
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
              'prev' => {},
              'up' => {}
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
$result_nodes{'anchor_in_copying_insertcopying_chap'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'anchor_in_copying_insertcopying_chap'}[0];
$result_nodes{'anchor_in_copying_insertcopying_chap'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'anchor_in_copying_insertcopying_chap'}[0];
$result_nodes{'anchor_in_copying_insertcopying_chap'}[1] = $result_nodes{'anchor_in_copying_insertcopying_chap'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'anchor_in_copying_insertcopying_chap'} = [
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

$result_errors{'anchor_in_copying_insertcopying_chap'} = [];


$result_floats{'anchor_in_copying_insertcopying_chap'} = {};



$result_converted{'latex_text'}->{'anchor_in_copying_insertcopying_chap'} = '
\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:Chapter}%

see \\hyperref[anchor:a-in-copying]{[a in copying], page~\\pageref*{anchor:a-in-copying}}

Cop. \\label{anchor:a-in-copying}%
. Ying.

see \\hyperref[anchor:a-in-copying]{[a in copying], page~\\pageref*{anchor:a-in-copying}}
';

1;
