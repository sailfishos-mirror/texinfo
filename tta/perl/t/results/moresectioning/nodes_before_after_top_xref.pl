use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodes_before_after_top_xref'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content C2
   *@setfilename C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodes_before_after_top_xref.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodes_before_after_top_xref.info}
   {empty_line:\\n}
 *0 @node C4 l3 {node before}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{node-before}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node before}
  {empty_line:\\n}
  *paragraph C1
   {In node before\\n}
  {empty_line:\\n}
 *1 @node C1 l7 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |is_target:{1}
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C4 l8 {top sectionning}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E1]
 |section_childs:EC[E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top sectionning}
  {empty_line:\\n}
  *paragraph C1
   {in node Top\\n}
  {empty_line:\\n}
 *3 @node C4 l12 {after}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{after}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {after}
  {empty_line:\\n}
  *paragraph C1
   {in node after\\n}
  {empty_line:\\n}
 *4 @node C1 l16 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |node_directions:D[prev->E1|up->E1]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *5 @chapter C10 l17 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_directions:D[up->E2]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E2|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *paragraph C1
   {in chap\\n}
  {empty_line:\\n}
  *@xrefautomaticsectiontitle C1 l21
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{on}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on}
  *paragraph C4
   *6 @xref C1 l22
    *brace_arg C1
    |EXTRA
    |node_content:{node before}
    |normalized:{node-before}
     {node before}
   {.\\n}
   *7 @xref C1 l23
    *brace_arg C1
    |EXTRA
    |node_content:{after}
    |normalized:{after}
     {after}
   {.\\n}
  {empty_line:\\n}
  *@xrefautomaticsectiontitle C1 l25
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{off}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {off}
  *paragraph C4
   *8 @xref C1 l26
    *brace_arg C1
    |EXTRA
    |node_content:{node before}
    |normalized:{node-before}
     {node before}
   {.\\n}
   *9 @xref C1 l27
    *brace_arg C1
    |EXTRA
    |node_content:{after}
    |normalized:{after}
     {after}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'nodes_before_after_top_xref'} = '@setfilename nodes_before_after_top_xref.info

@node node before

In node before

@node Top
@top top sectionning

in node Top

@node after

in node after

@node chap
@chapter chap

in chap

@xrefautomaticsectiontitle on
@xref{node before}.
@xref{after}.

@xrefautomaticsectiontitle off
@xref{node before}.
@xref{after}.

';


$result_texts{'nodes_before_after_top_xref'} = '

In node before

top sectionning
***************

in node Top


in node after

1 chap
******

in chap

node before.
after.

node before.
after.

';

$result_sectioning{'nodes_before_after_top_xref'} = {
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
                    'normalized' => 'chap'
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
$result_sectioning{'nodes_before_after_top_xref'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodes_before_after_top_xref'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodes_before_after_top_xref'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodes_before_after_top_xref'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodes_before_after_top_xref'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodes_before_after_top_xref'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodes_before_after_top_xref'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'nodes_before_after_top_xref'};

$result_nodes{'nodes_before_after_top_xref'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'node-before'
    }
  },
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
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'after'
    }
  },
  {}
];
$result_nodes{'nodes_before_after_top_xref'}[1]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodes_before_after_top_xref'}[1];
$result_nodes{'nodes_before_after_top_xref'}[1]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodes_before_after_top_xref'}[1];
$result_nodes{'nodes_before_after_top_xref'}[3] = $result_nodes{'nodes_before_after_top_xref'}[1]{'extra'}{'node_directions'}{'next'};

$result_menus{'nodes_before_after_top_xref'} = [
  {
    'extra' => {
      'normalized' => 'node-before'
    }
  },
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'after'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'nodes_before_after_top_xref'} = [
  {
    'error_line' => 'warning: node `node before\' not in menu
',
    'line_nr' => 3,
    'text' => 'node `node before\' not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `after\' not in menu
',
    'line_nr' => 12,
    'text' => 'node `after\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'nodes_before_after_top_xref'} = {};



$result_converted{'latex_text'}->{'nodes_before_after_top_xref'} = '
\\begin{document}
\\label{anchor:node-before}%

In node before

\\label{anchor:Top}%
\\label{anchor:after}%

in node after

\\chapter{{chap}}
\\label{anchor:chap}%

in chap

See \\hyperref[anchor:node-before]{\\chaptername~\\ref*{anchor:node-before} [top sectionning], page~\\pageref*{anchor:node-before}}.
See \\hyperref[anchor:after]{\\chaptername~\\ref*{anchor:after} [top sectionning], page~\\pageref*{anchor:after}}.

See \\hyperref[anchor:node-before]{\\chaptername~\\ref*{anchor:node-before} [node before], page~\\pageref*{anchor:node-before}}.
See \\hyperref[anchor:after]{\\chaptername~\\ref*{anchor:after} [after], page~\\pageref*{anchor:after}}.

';

1;
