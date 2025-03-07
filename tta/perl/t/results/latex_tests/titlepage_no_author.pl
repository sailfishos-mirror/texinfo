use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'titlepage_no_author'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *0 @titlepage C3 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *@title C1 l2
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {Some manual tested}
    *@end C1 l3
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{titlepage}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {titlepage}
   {empty_line:\\n}
 *1 @node C1 l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |associated_title_command:[E2]
 |is_target:{1}
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C2 l6 {section top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E1]
 |associated_node:[E1]
 |section_childs:EC[E4]
 |section_level:{0}
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
    {section top}
  {empty_line:\\n}
 *3 @node C1 l8 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |node_directions:D[prev->E1|up->E1]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *4 @chapter C3 l9 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[up->E2]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E2|up->E2]
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


$result_texis{'titlepage_no_author'} = '@titlepage
@title Some manual tested
@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter
';


$result_texts{'titlepage_no_author'} = '
section top
***********

1 Chapter
*********

In chapter
';

$result_errors{'titlepage_no_author'} = [];



$result_converted{'latex_text'}->{'titlepage_no_author'} = '
\\begin{document}

\\frontmatter
\\pagestyle{empty}%
\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
{\\raggedright {\\huge \\bfseries Some manual tested}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt
\\vskip4pt \\hrule height 2pt width \\hsize
  \\vskip\\titlepagebottomglue
\\endgroup
\\end{titlepage}
\\mainmatter
\\pagestyle{single}%
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chapter}%

In chapter
';

1;
