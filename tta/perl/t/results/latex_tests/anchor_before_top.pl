use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_before_top'} = '*document_root C5
 *before_node_section C5
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content
  *0 @anchor C1 l2
  |EXTRA
  |is_target:{1}
  |normalized:{a-before-Top}
   *brace_arg C1
    {a before Top}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *1 @node C1 l4 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E2]
 |is_target:{1}
 |node_directions:D[next->E3]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C2 l5 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E1]
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
 *3 @node C1 l7 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E4]
 |is_target:{1}
 |node_directions:D[prev->E1|up->E1]
 |node_number:{2}
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *4 @chapter C3 l8 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
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
   *@pxref C1 l10
    *brace_arg C1
    |EXTRA
    |node_content:{a before Top}
    |normalized:{a-before-Top}
     {a before Top}
   {\\n}
';


$result_texis{'anchor_before_top'} = '
@anchor{a before Top}

@node Top
@top top

@node Chapter
@chapter Chap

@pxref{a before Top}
';


$result_texts{'anchor_before_top'} = '
top
***

1 Chap
******

a before Top
';

$result_errors{'anchor_before_top'} = [];


$result_nodes_list{'anchor_before_top'} = '1|Top
 associated_section: top
2|Chapter
 associated_section: 1 Chap
';

$result_sections_list{'anchor_before_top'} = '1|top
 associated_node: Top
2|Chap
 associated_node: Chapter
';


$result_converted{'latex_text'}->{'anchor_before_top'} = '\\begin{document}
\\label{anchor:a-before-Top}%

\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:Chapter}%

see \\hyperref[anchor:a-before-Top]{[a before Top], page~\\pageref*{anchor:a-before-Top}}
';

1;
