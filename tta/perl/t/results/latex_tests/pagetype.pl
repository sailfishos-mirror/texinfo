use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'pagetype'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content C4
   *@afourpaper C1 l1
    {rawline_arg:\\n}
   {empty_line:\\n}
   *@afourwide C1 l3
    {rawline_arg:\\n}
   {empty_line:\\n}
 *0 @node C1 l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l6 {section top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E4]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section top}
  {empty_line:\\n}
 *2 @node C1 l8 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C11 l9 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[next->E4|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E4|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *@smallbook C1 l11
   {rawline_arg:\\n}
  {empty_line:\\n}
  {spaces_before_paragraph: }
  *paragraph C1
   {In smallbook\\n}
  {empty_line:\\n}
  *paragraph C2
   {In smallbook\\n}
   *@afourpaper C1 l16
    {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C1
   {After afourpaper\\n}
  {empty_line:\\n}
 *4 @chapter C3 l20 {afourpaper reset}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {afourpaper reset}
  {empty_line:\\n}
  *paragraph C1
   {In afourpaper reset\\n}
';


$result_texis{'pagetype'} = '@afourpaper

@afourwide

@node Top
@top section top

@node chapter
@chapter Chapter

@smallbook

 In smallbook

In smallbook
@afourpaper

After afourpaper

@chapter afourpaper reset

In afourpaper reset
';


$result_texts{'pagetype'} = '

section top
***********

1 Chapter
*********


In smallbook

In smallbook

After afourpaper

2 afourpaper reset
******************

In afourpaper reset
';

$result_sectioning{'pagetype'} = {
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
                    'normalized' => 'chapter'
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
            {
              'cmdname' => 'chapter',
              'extra' => {
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
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
$result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0];
$result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0];
$result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0];
$result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0];
$result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0];
$result_sectioning{'pagetype'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'pagetype'};

$result_nodes{'pagetype'} = [
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
            'normalized' => 'chapter'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'pagetype'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'pagetype'}[0];
$result_nodes{'pagetype'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'pagetype'}[0];
$result_nodes{'pagetype'}[1] = $result_nodes{'pagetype'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'pagetype'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chapter'
    }
  }
];

$result_errors{'pagetype'} = [
  {
    'error_line' => 'unknown command `Chapter\'
',
    'line_nr' => 13,
    'text' => 'unknown command `Chapter\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: multiple @afourpaper
',
    'line_nr' => 16,
    'text' => 'multiple @afourpaper',
    'type' => 'warning'
  }
];


$result_floats{'pagetype'} = {};



$result_converted{'latex_text'}->{'pagetype'} = '\\geometry{papername=a4paper}%

\\geometry{papername=a4paper}%

\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chapter}%

\\geometry{paperheight=9.25in,paperwidth=7in}%

 In smallbook

In smallbook
\\geometry{papername=a4paper}%

After afourpaper

\\chapter{{afourpaper reset}}

In afourpaper reset
';

1;
