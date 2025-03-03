use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'titlepage_with_commands_classical'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C4
   *0 @copying C3 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C1
     {in Copying\\n}
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
   *1 @titlepage C12 l5
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *@title C1 l6
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{\\n}
      {Some manual }
      *@*
      { tested}
    *@subtitle C1 l7
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{1}
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{\\n}
      {Subtitle manual }
      *@*
      { tested}
    *@subtitle C1 l8
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{2}
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{\\n}
      {Subtitle 2 manual }
      *@*
      { tested}
    *2 @author C1 l9
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{1}
    |titlepage:[E1]
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{\\n}
      {First }
      *@*
      { author}
    *3 @author C1 l10
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{2}
    |titlepage:[E1]
     *line_arg C4
     |INFO
     |spaces_after_argument:
      |{\\n}
      {Second }
      *@*
      { author}
      *4 @footnote C1 l10
      |EXTRA
      |global_command_number:{1}
       *brace_command_context C4
        *paragraph C2
         {Something\\n}
         {about the address of author.\\n}
        {empty_line:\\n}
        *paragraph C1
         {Something about the life. \\n}
        *5 @displaymath C6 l14
         *arguments_line C1
          *block_line_arg
          |INFO
          |spaces_after_argument:
           |{\\n}
         {\\frac}
         *balanced_braces C1 l15
          {{a}}
         *balanced_braces C1 l15
          {{b}}
         {\\n}
         *@end C1 l16
         |INFO
         |spaces_before_argument:
          |{ }
         |EXTRA
         |text_arg:{displaymath}
          *line_arg C1
          |INFO
          |spaces_after_argument:
           |{\\n}
           {displaymath}
    *@page C1
     {rawline_arg:\\n}
    *@c C1
     {rawline_arg: The following two commands start the copyright page.\\n}
    *@page C1
     {rawline_arg:\\n}
    *@vskip C1
     {rawline_arg: 0pt plus 1filll\\n}
    *@insertcopying C1 l22
    |EXTRA
    |global_command_number:{1}
     {rawline_arg:\\n}
    *@end C1 l23
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
 *6 @node C1 l25 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |node_directions:D[next->E8]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *7 @top C2 l26 {section top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E6]
 |section_childs:EC[E9]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E7]
  ||section_level:{-1}
 |toplevel_directions:D[next->E9]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section top}
  {empty_line:\\n}
 *8 @node C1 l28 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |is_target:{1}
 |node_directions:D[prev->E6|up->E6]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *9 @chapter C4 l29 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E8]
 |section_directions:D[up->E7]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E7|up->E7]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C1
   {In chapter\\n}
  {empty_line:\\n}
';


$result_texis{'titlepage_with_commands_classical'} = '@copying
in Copying
@end copying

@titlepage
@title Some manual @* tested
@subtitle Subtitle manual @* tested
@subtitle Subtitle 2 manual @* tested
@author First @* author
@author Second @* author@footnote{Something
about the address of author.

Something about the life. 
@displaymath
\\frac{a}{b}
@end displaymath
}
@page
@c The following two commands start the copyright page.
@page
@vskip 0pt plus 1filll
@insertcopying
@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter

';


$result_texts{'titlepage_with_commands_classical'} = '

section top
***********

1 Chapter
*********

In chapter

';

$result_errors{'titlepage_with_commands_classical'} = [
  {
    'error_line' => 'warning: @footnote should not appear on @author line
',
    'line_nr' => 10,
    'text' => '@footnote should not appear on @author line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @displaymath should not appear on @author line
',
    'line_nr' => 14,
    'text' => '@displaymath should not appear on @author line',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'titlepage_with_commands_classical'} = '

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
{\\raggedright {\\huge \\bfseries Some manual \\leavevmode{}\\\\ tested}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt
\\rightline{Subtitle manual \\leavevmode{}\\\\ tested}
\\rightline{Subtitle 2 manual \\leavevmode{}\\\\ tested}
\\vskip 0pt plus 1filll
\\leftline{\\Large \\bfseries First \\leavevmode{}\\\\ author}%
\\leftline{\\Large \\bfseries Second \\leavevmode{}\\\\ author\\footnote{Something
about the address of author.

Something about the life. 
\\[
\\frac{a}{b}
\\]
}}%
\\vskip4pt \\hrule height 2pt width \\hsize
  \\vskip\\titlepagebottomglue
\\endgroup
\\newpage{}%
\\phantom{blabla}%
\\newpage{}%
\\phantom{blabla}%
\\vskip 0pt plus 1filll
in Copying
\\end{titlepage}
\\mainmatter
\\pagestyle{single}%
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chapter}%

In chapter

';

1;
