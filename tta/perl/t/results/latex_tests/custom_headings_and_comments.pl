use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'custom_headings_and_comments'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content C3
   *@evenheading C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C15
    |INFO
    |spaces_after_argument:
     |{  \\n}
     *@thispage
     { }
     *@thissectionname
     { }
     *@|
     { }
     *@thissectionnum
     { }
     *@thissection
     { }
     *@|
     { }
     *@thischaptername
     { }
     *@thischapternum
   *@evenfooting C1 l2
   |INFO
   |spaces_before_argument:
    |{   }
    *line_arg C11
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: comment\\n}
    |spaces_after_argument:
     |{  }
     *@thischapter
     { }
     *@thistitle
     { }
     *@|
     { }
     *@thisfile
     { }
     *@|
     {   }
     *@code C1 l2
      *brace_container C1
       *@thischaptername
   {empty_line:\\n}
 *0 @node C1 l4 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l5 {top sectionning}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E5]
 |section_level:{0}
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
    {top sectionning}
  {empty_line:\\n}
 *2 @node C1 l7 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C10 l8 {ch--ap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_childs:EC[E4]
 |section_directions:D[next->E5|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ch--ap}
  {empty_line:\\n}
  *@page C1
   {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C1
   {after ch--ap first page\\n}
  {empty_line:\\n}
  *@page C1
   {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C1
   {after ch--ap second page\\n}
  {empty_line:\\n}
 *4 @section C2 l18 {sec1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E3]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec1}
  {empty_line:\\n}
 *5 @chapter C2 l20 {chap 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap 2}
  {empty_line:\\n}
';


$result_texis{'custom_headings_and_comments'} = '@evenheading @thispage @thissectionname @| @thissectionnum @thissection @| @thischaptername @thischapternum  
@evenfooting   @thischapter @thistitle @| @thisfile @|   @code{@thischaptername}  @c comment

@node Top
@top top sectionning

@node chapter
@chapter ch--ap

@page

after ch--ap first page

@page

after ch--ap second page

@section sec1

@chapter chap 2

';


$result_texts{'custom_headings_and_comments'} = '
top sectionning
***************

1 ch-ap
*******



after ch-ap first page



after ch-ap second page

1.1 sec1
========

2 chap 2
********

';

$result_errors{'custom_headings_and_comments'} = [];



$result_converted{'latex_text'}->{'custom_headings_and_comments'} = '\\newpagestyle{custom}{%
\\sethead[\\thepage{} \\sectiontitle{}][\\thesection{} Section \\thesection{} \\sectiontitle{}][\\chaptertitle{} \\thechapter{}]%
{}{}{}%
}%
\\pagestyle{custom}%
\\renewpagestyle{custom}{%
\\sethead[\\thepage{} \\sectiontitle{}][\\thesection{} Section \\thesection{} \\sectiontitle{}][\\chaptertitle{} \\thechapter{}]%
{}{}{}%
\\setfoot[\\chaptername{} \\thechapter{} \\chaptertitle{} \\Texinfosettitle{}][\\Texinfotheinclude{}][\\texttt{\\chaptertitle{}}]%
{}{}{}%
}%
\\pagestyle{custom}%

\\begin{document}
\\label{anchor:Top}%
\\chapter{{ch--ap}}
\\label{anchor:chapter}%

\\newpage{}%
\\phantom{blabla}%

after ch--ap first page

\\newpage{}%
\\phantom{blabla}%

after ch--ap second page

\\section{{sec1}}

\\chapter{{chap 2}}

';

1;
