use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

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
 |is_target:{1}
 |node_directions:D[next->E2]
 |node_number:{1}
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
 |section_childs:EC[E3|E4]
 |section_level:{0}
 |section_number:{1}
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
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
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
 |section_directions:D[next->E4|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
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
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
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


$result_nodes_list{'pagetype'} = '1|Top
 associated_section: section top
 associated_title_command: section top
2|chapter
 associated_section: 1 Chapter
 associated_title_command: 1 Chapter
';

$result_sections_list{'pagetype'} = '1|section top
 associated_anchor_command: Top
 associated_node: Top
2|Chapter
 associated_anchor_command: chapter
 associated_node: chapter
3|afourpaper reset
';

$result_headings_list{'pagetype'} = '';


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
