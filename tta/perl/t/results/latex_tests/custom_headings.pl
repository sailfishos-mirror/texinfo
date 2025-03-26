use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'custom_headings'} = '*document_root C8
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content C3
   *@evenheading C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C15
    |INFO
    |spaces_after_argument:
     |{\\n}
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
   *@evenfooting C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C11
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@thischapter
     { }
     *@thistitle
     { }
     *@|
     { }
     *@thisfile
     { }
     *@|
     { }
     *@code C1 l3
      *brace_container C1
       *@thischaptername
   {empty_line:\\n}
 *0 @node C1 l5 {Top}
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
 *1 @top C2 l6 {top sectionning}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E5|E6]
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
 *2 @node C1 l8 {chapter}
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
 *3 @chapter C10 l9 {ch--ap}
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
 *4 @section C2 l19 {sec1}
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
 *5 @chapter C12 l21 {chap 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E6|prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap 2}
  {empty_line:\\n}
  *@everyheading C1 l23
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {toto }
    *@|
    { titi}
  {empty_line:\\n}
  *@page C1
   {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C1
   {after everyheading before chap 3 first page\\n}
  {empty_line:\\n}
  *@page C1
   {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C1
   {after everyheading before chap 3 second page\\n}
  {empty_line:\\n}
 *6 @chapter C6 l33 {chap 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E5|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E5|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap 3}
  {empty_line:\\n}
  *@page C1
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@everyfooting C1 l37
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C7
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aa }
    *@|
    { bb }
    *@|
    { cc }
    *@|
    { dd}
  {empty_line:\\n}
';


$result_texis{'custom_headings'} = '
@evenheading @thispage @thissectionname @| @thissectionnum @thissection @| @thischaptername @thischapternum
@evenfooting @thischapter @thistitle @| @thisfile @| @code{@thischaptername}

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

@everyheading toto @| titi

@page

after everyheading before chap 3 first page

@page

after everyheading before chap 3 second page

@chapter chap 3

@page

@everyfooting aa @| bb @| cc @| dd

';


$result_texts{'custom_headings'} = '
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




after everyheading before chap 3 first page



after everyheading before chap 3 second page

3 chap 3
********




';

$result_errors{'custom_headings'} = [];



$result_converted{'latex_text'}->{'custom_headings'} = '\\newpagestyle{custom}{%
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

\\renewpagestyle{custom}{%
\\sethead[toto][titi][]%
{toto}{titi}{}%
\\setfoot[\\chaptername{} \\thechapter{} \\chaptertitle{} \\Texinfosettitle{}][\\Texinfotheinclude{}][\\texttt{\\chaptertitle{}}]%
{}{}{}%
}%
\\pagestyle{custom}%

\\newpage{}%
\\phantom{blabla}%

after everyheading before chap 3 first page

\\newpage{}%
\\phantom{blabla}%

after everyheading before chap 3 second page

\\chapter{{chap 3}}

\\newpage{}%
\\phantom{blabla}%

\\renewpagestyle{custom}{%
\\sethead[toto][titi][]%
{toto}{titi}{}%
\\setfoot[aa][bb][cc  dd]%
{aa}{bb}{cc  dd}%
}%
\\pagestyle{custom}%

';

1;
