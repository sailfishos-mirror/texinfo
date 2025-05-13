use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'pagesizes'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content C2
   *@pagesizes C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {200mm,150mm}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
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
 *1 @top C2 l4 {section top}
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
 *2 @node C1 l6 {chapter}
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
 *3 @chapter C4 l7 {Chapter}
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
  *@pagesizes C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {11.5in}
  {empty_line:\\n}
 *4 @chapter C5 l11 {other pagesizes}
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
    {other pagesizes}
  {empty_line:\\n}
  *@pagesizes C1 l13
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {, 130mm}
  {empty_line:\\n}
  *@pagesizes C1 l15
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    {,}
';


$result_texis{'pagesizes'} = '@pagesizes 200mm,150mm

@node Top
@top section top

@node chapter
@chapter Chapter

@pagesizes 11.5in

@chapter other pagesizes

@pagesizes , 130mm

@pagesizes , 
';


$result_texts{'pagesizes'} = '
section top
***********

1 Chapter
*********


2 other pagesizes
*****************


';

$result_errors{'pagesizes'} = [
  {
    'error_line' => 'warning: multiple @pagesizes
',
    'line_nr' => 9,
    'text' => 'multiple @pagesizes',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @pagesizes
',
    'line_nr' => 13,
    'text' => 'multiple @pagesizes',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @pagesizes
',
    'line_nr' => 15,
    'text' => 'multiple @pagesizes',
    'type' => 'warning'
  }
];


$result_nodes_list{'pagesizes'} = '1|Top
 associated_section: section top
 associated_title_command: section top
2|chapter
 associated_section: 1 Chapter
 associated_title_command: 1 Chapter
';

$result_sections_list{'pagesizes'} = '1|section top
 associated_anchor_command: Top
 associated_node: Top
2|Chapter
 associated_anchor_command: chapter
 associated_node: chapter
3|other pagesizes
';

$result_headings_list{'pagesizes'} = '';


$result_converted{'latex_text'}->{'pagesizes'} = '\\newgeometry{textheight=200mm,textwidth=150mm}

\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chapter}%

\\newgeometry{textheight=11.5in}

\\chapter{{other pagesizes}}

\\newgeometry{textwidth=130mm}

';

1;
