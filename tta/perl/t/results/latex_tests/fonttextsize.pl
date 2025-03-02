use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'fonttextsize'} = '*document_root C10
 *before_node_section C1
  *preamble_before_content C2
   *@fonttextsize C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |misc_args:A{10}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {10}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
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
 *1 @top C2 l4 {section top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
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
 *2 @node C1 l6 {chapter}
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
 *3 @chapter C2 l7 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_childs:EC[E4]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
 *4 @section C2 l9 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E5|E6|E7|E8]
 |section_directions:D[up->E3]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *5 @subsection C4 l11 {Subsection 10pts}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E6|up->E4]
 |section_level:{3}
 |section_number:{1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection 10pts}
  *paragraph C1
   {In 10pts\\n}
  {empty_line:\\n}
  *@fonttextsize C1 l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{11}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {11}
 *6 @subsection C5 l15 {Subsection 11pts}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E7|prev->E5|up->E4]
 |section_level:{3}
 |section_number:{1.1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection 11pts}
  {empty_line:\\n}
  *paragraph C1
   {In 11pts\\n}
  {empty_line:\\n}
  *@fonttextsize C1 l19
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {8}
 *7 @subsection C5 l20 {Subsection 8pts}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E8|prev->E6|up->E4]
 |section_level:{3}
 |section_number:{1.1.3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection 8pts}
  {empty_line:\\n}
  *paragraph C1
   {In 8pts\\n}
  {empty_line:\\n}
  *@fonttextsize C1 l24
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {15}
 *8 @subsection C3 l25 {Subsection 15pts}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E7|up->E4]
 |section_level:{3}
 |section_number:{1.1.4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection 15pts}
  {empty_line:\\n}
  *paragraph C1
   {In 15pts\\n}
';


$result_texis{'fonttextsize'} = '@fonttextsize 10

@node Top
@top section top

@node chapter
@chapter Chapter

@section section

@subsection Subsection 10pts
In 10pts

@fonttextsize 11
@subsection Subsection 11pts

In 11pts

@fonttextsize 8
@subsection Subsection 8pts

In 8pts

@fonttextsize 15
@subsection Subsection 15pts

In 15pts
';


$result_texts{'fonttextsize'} = '
section top
***********

1 Chapter
*********

1.1 section
===========

1.1.1 Subsection 10pts
----------------------
In 10pts

1.1.2 Subsection 11pts
----------------------

In 11pts

1.1.3 Subsection 8pts
---------------------

In 8pts

1.1.4 Subsection 15pts
----------------------

In 15pts
';

$result_sectioning{'fonttextsize'} = {
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
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'section_childs' => [
                        {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'section_directions' => {
                              'up' => {}
                            },
                            'section_level' => 3,
                            'section_number' => '1.1.1'
                          }
                        },
                        {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'section_directions' => {
                              'prev' => {},
                              'up' => {}
                            },
                            'section_level' => 3,
                            'section_number' => '1.1.2'
                          }
                        },
                        {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'section_directions' => {
                              'prev' => {},
                              'up' => {}
                            },
                            'section_level' => 3,
                            'section_number' => '1.1.3'
                          }
                        },
                        {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'section_directions' => {
                              'prev' => {},
                              'up' => {}
                            },
                            'section_level' => 3,
                            'section_number' => '1.1.4'
                          }
                        }
                      ],
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
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
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0];
$result_sectioning{'fonttextsize'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'fonttextsize'};

$result_nodes{'fonttextsize'} = [
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
$result_nodes{'fonttextsize'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'fonttextsize'}[0];
$result_nodes{'fonttextsize'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'fonttextsize'}[0];
$result_nodes{'fonttextsize'}[1] = $result_nodes{'fonttextsize'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'fonttextsize'} = [
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

$result_errors{'fonttextsize'} = [
  {
    'error_line' => 'warning: multiple @fonttextsize
',
    'line_nr' => 14,
    'text' => 'multiple @fonttextsize',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @fonttextsize
',
    'line_nr' => 19,
    'text' => 'multiple @fonttextsize',
    'type' => 'warning'
  },
  {
    'error_line' => 'Only @fonttextsize 10 or 11 is supported, not `8\'
',
    'line_nr' => 19,
    'text' => 'Only @fonttextsize 10 or 11 is supported, not `8\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: multiple @fonttextsize
',
    'line_nr' => 24,
    'text' => 'multiple @fonttextsize',
    'type' => 'warning'
  },
  {
    'error_line' => 'Only @fonttextsize 10 or 11 is supported, not `15\'
',
    'line_nr' => 24,
    'text' => 'Only @fonttextsize 10 or 11 is supported, not `15\'',
    'type' => 'error'
  }
];


$result_floats{'fonttextsize'} = {};



$result_converted{'latex_text'}->{'fonttextsize'} = '\\changefontsize{10}

\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chapter}%

\\section{{section}}

\\subsection{{Subsection 10pts}}
In 10pts

\\changefontsize{11}
\\subsection{{Subsection 11pts}}

In 11pts

\\subsection{{Subsection 8pts}}

In 8pts

\\subsection{{Subsection 15pts}}

In 15pts
';

1;
