use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodes_before_after_top'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
 *0 @node C4 l1 {node before}
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
 *1 @node C1 l5 {Top}
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
 *2 @top C4 l6 {top sectionning}
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
 *3 @node C4 l10 {after}
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
 *4 @node C1 l14 {chap}
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
 *5 @chapter C3 l15 {chap}
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
';


$result_texis{'nodes_before_after_top'} = '@node node before

In node before

@node Top
@top top sectionning

in node Top

@node after

in node after

@node chap
@chapter chap

in chap
';


$result_texts{'nodes_before_after_top'} = '
In node before

top sectionning
***************

in node Top


in node after

1 chap
******

in chap
';

$result_errors{'nodes_before_after_top'} = [
  {
    'error_line' => 'warning: node `node before\' unreferenced
',
    'line_nr' => 1,
    'text' => 'node `node before\' unreferenced',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `after\' unreferenced
',
    'line_nr' => 10,
    'text' => 'node `after\' unreferenced',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'nodes_before_after_top'} = '\\begin{document}
\\label{anchor:node-before}%

In node before

\\label{anchor:Top}%
\\label{anchor:after}%

in node after

\\chapter{{chap}}
\\label{anchor:chap}%

in chap
';

1;
