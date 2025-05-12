use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'shorttitlepage'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@shorttitlepage C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     {the title with shorttitlepage }
     *@*
     { it can be long}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
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
 |associated_anchor_command:[E0]
 |section_childs:EC[E3]
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
 |associated_title_command:[E3]
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
 *3 @chapter C3 l7 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |section_directions:D[up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C1
   {In chapter\\n}
';


$result_texis{'shorttitlepage'} = '@shorttitlepage the title with shorttitlepage @* it can be long

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter
';


$result_texts{'shorttitlepage'} = '
section top
***********

1 Chapter
*********

In chapter
';

$result_errors{'shorttitlepage'} = [];


$result_nodes_list{'shorttitlepage'} = '1|Top
 associated_section: section top
2|chapter
 associated_section: 1 Chapter
';

$result_sections_list{'shorttitlepage'} = '1|section top
 associated_node: Top
2|Chapter
 associated_node: chapter
';


$result_converted{'latex_text'}->{'shorttitlepage'} = '
\\begin{document}

\\frontmatter
\\pagestyle{empty}%
\\begin{titlepage}
{\\raggedright {\\huge \\bfseries the title with shorttitlepage \\leavevmode{}\\\\ it can be long}}
\\newpage{}
\\phantom{blabla}\\newpage{}
\\end{titlepage}
\\mainmatter
\\pagestyle{single}%
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chapter}%

In chapter
';

1;
