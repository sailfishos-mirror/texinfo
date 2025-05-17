use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_before_top'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content
 *0 @node C2 l1 {before Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{before-Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {before Top}
  {empty_line:\\n}
 *1 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C2 l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *3 @node C1 l6 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{3}
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *4 @chapter C3 l7 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E2]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E2|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
  *paragraph C2
   *@pxref C1 l9
    *brace_arg C1
    |EXTRA
    |node_content:{before Top}
    |normalized:{before-Top}
     {before Top}
   {\\n}
';


$result_texis{'node_before_top'} = '@node before Top

@node Top
@top top

@node Chapter
@chapter Chap

@pxref{before Top}
';


$result_texts{'node_before_top'} = '
top
***

1 Chap
******

before Top
';

$result_errors{'node_before_top'} = [
  {
    'error_line' => 'warning: node `before Top\' not in menu
',
    'line_nr' => 1,
    'text' => 'node `before Top\' not in menu',
    'type' => 'warning'
  }
];


$result_nodes_list{'node_before_top'} = '1|before Top
2|Top
 associated_section: top
 associated_title_command: top
 node_directions:
  next->Chapter
3|Chapter
 associated_section: 1 Chap
 associated_title_command: 1 Chap
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'node_before_top'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
2|Chap
 associated_anchor_command: Chapter
 associated_node: Chapter
';

$result_headings_list{'node_before_top'} = '';


$result_converted{'latex_text'}->{'node_before_top'} = '\\begin{document}
\\label{anchor:before-Top}%

\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:Chapter}%

see \\hyperref[anchor:before-Top]{\\chaptername~\\ref*{anchor:before-Top} [before Top], page~\\pageref*{anchor:before-Top}}
';

1;
