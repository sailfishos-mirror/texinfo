use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_in_copying_insertcopying_titlepage'} = '*document_root C5
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
   *@titlepage C8 l5
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
    *1 @anchor C1 l9
    |EXTRA
    |is_target:{1}
    |normalized:{a-in-titlepage}
     *brace_arg C1
     |EXTRA
     |element_region:{titlepage}
      {a in titlepage}
    {spaces_after_close_brace:\\n}
    *@insertcopying C1 l10
    |EXTRA
    |global_command_number:{1}
     {rawline_arg:\\n}
    *@end C1 l11
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
 *2 @node C1 l13 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E4]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *3 @top C2 l14 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |section_childs:EC[E5]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *4 @node C1 l16 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E2]
 |node_number:{2}
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *5 @chapter C3 l17 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |section_directions:D[up->E3]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
  *paragraph C4
   *@pxref C1 l19
    *brace_arg C1
    |EXTRA
    |node_content:{a in copying}
    |normalized:{a-in-copying}
     {a in copying}
   {.\\n}
   *@pxref C1 l20
    *brace_arg C1
    |EXTRA
    |node_content:{a in titlepage}
    |normalized:{a-in-titlepage}
     {a in titlepage}
   {.\\n}
';


$result_texis{'anchor_in_copying_insertcopying_titlepage'} = '@copying
Cop. @anchor{a in copying}. Ying.
@end copying

@titlepage
@title Manual

@page
@anchor{a in titlepage}
@insertcopying
@end titlepage

@node Top
@top top

@node Chapter
@chapter Chap

@pxref{a in copying}.
@pxref{a in titlepage}.
';


$result_texts{'anchor_in_copying_insertcopying_titlepage'} = '

top
***

1 Chap
******

a in copying.
a in titlepage.
';

$result_errors{'anchor_in_copying_insertcopying_titlepage'} = [];


$result_nodes_list{'anchor_in_copying_insertcopying_titlepage'} = '1|Top
 associated_section: top
2|Chapter
 associated_section: 1 Chap
';

$result_sections_list{'anchor_in_copying_insertcopying_titlepage'} = '1|top
 associated_node: Top
2|Chap
 associated_node: Chapter
';


$result_converted{'latex_text'}->{'anchor_in_copying_insertcopying_titlepage'} = '

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
\\label{anchor:a-in-titlepage}%
Cop. \\label{anchor:a-in-copying}%
. Ying.
\\end{titlepage}
\\mainmatter
\\pagestyle{single}%
\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:Chapter}%

see \\hyperref[anchor:a-in-copying]{[a in copying], page~\\pageref*{anchor:a-in-copying}}.
see \\hyperref[anchor:a-in-titlepage]{[a in titlepage], page~\\pageref*{anchor:a-in-titlepage}}.
';

1;
