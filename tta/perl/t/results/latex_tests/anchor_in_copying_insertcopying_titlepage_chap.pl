use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_in_copying_insertcopying_titlepage_chap'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C4
   *@copying C3 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C3
     {Cop. }
     *0 @anchor C1 l2
     |EXTRA
     |is_target:{1}
     |normalized:{a-in-copying}
      *brace_arg C1
      |EXTRA
      |element_region:{copying}
       {a in copying}
     {. Ying.\\n}
    *@end C1 l3
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   {empty_line:\\n}
   *@titlepage C6 l5
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *@title C1 l6
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {Manual}
    {empty_line:\\n}
    *@page C1
     {rawline_arg:\\n}
    *@insertcopying C1 l9
    |EXTRA
    |global_command_number:{1}
     {rawline_arg:\\n}
    *@end C1 l10
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
 *1 @node C1 l12 {Top}
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
 *2 @top C2 l13 {top}
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
 *3 @node C1 l15 {Chapter}
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
 *4 @chapter C7 l16 {Chap}
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
   *@pxref C1 l18
    *brace_arg C1
    |EXTRA
    |node_content:{a in copying}
    |normalized:{a-in-copying}
     {a in copying}
   {\\n}
  {empty_line:\\n}
  *@insertcopying C1 l20
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C2
   *@pxref C1 l22
    *brace_arg C1
    |EXTRA
    |node_content:{a in copying}
    |normalized:{a-in-copying}
     {a in copying}
   {\\n}
';


$result_texis{'anchor_in_copying_insertcopying_titlepage_chap'} = '@copying
Cop. @anchor{a in copying}. Ying.
@end copying

@titlepage
@title Manual

@page
@insertcopying
@end titlepage

@node Top
@top top

@node Chapter
@chapter Chap

@pxref{a in copying}

@insertcopying

@pxref{a in copying}
';


$result_texts{'anchor_in_copying_insertcopying_titlepage_chap'} = '

top
***

1 Chap
******

a in copying


a in copying
';

$result_errors{'anchor_in_copying_insertcopying_titlepage_chap'} = [];


$result_nodes_list{'anchor_in_copying_insertcopying_titlepage_chap'} = '1|Top
 associated_section: top
2|Chapter
 associated_section: 1 Chap
';

$result_sections_list{'anchor_in_copying_insertcopying_titlepage_chap'} = '1|top
 associated_node: Top
2|Chap
 associated_node: Chapter
';


$result_converted{'latex_text'}->{'anchor_in_copying_insertcopying_titlepage_chap'} = '

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
{\\raggedright {\\huge \\bfseries Manual}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt

\\vskip4pt \\hrule height 2pt width \\hsize
  \\vskip\\titlepagebottomglue
\\endgroup
\\newpage{}%
\\phantom{blabla}%
Cop. \\label{anchor:a-in-copying}%
. Ying.
\\end{titlepage}
\\mainmatter
\\pagestyle{single}%
\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:Chapter}%

see \\hyperref[anchor:a-in-copying]{[a in copying], page~\\pageref*{anchor:a-in-copying}}

Cop. \\label{anchor:a-in-copying}%
. Ying.

see \\hyperref[anchor:a-in-copying]{[a in copying], page~\\pageref*{anchor:a-in-copying}}
';

1;
