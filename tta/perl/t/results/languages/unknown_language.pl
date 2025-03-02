use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_language'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@documentlanguage C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |text_arg:{unknown}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {unknown}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l4 {unknkown language}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
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
    {unknkown language}
  {empty_line:\\n}
 *2 @node C1 l6 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C7 l7 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C3
   {Unknown language. }
   *4 @xref C1 l9
    *brace_arg C1
    |EXTRA
    |node_content:{Top}
    |normalized:{Top}
     {Top}
   {.\\n}
  {empty_line:\\n}
  *@documentlanguage C1 l11
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |text_arg:{another_UNKNOWN}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {another_UNKNOWN}
  {empty_line:\\n}
  *paragraph C3
   {Another unknown language. }
   *5 @xref C1 l13
    *brace_arg C1
    |EXTRA
    |node_content:{Top}
    |normalized:{Top}
     {Top}
   {.\\n}
';


$result_texis{'unknown_language'} = '@documentlanguage unknown

@node Top
@top unknkown language

@node chapter
@chapter Chapter

Unknown language. @xref{Top}.

@documentlanguage another_UNKNOWN

Another unknown language. @xref{Top}.
';


$result_texts{'unknown_language'} = '
unknkown language
*****************

1 Chapter
*********

Unknown language. Top.


Another unknown language. Top.
';

$result_errors{'unknown_language'} = [
  {
    'error_line' => 'warning: unknown is not a valid language code
',
    'line_nr' => 1,
    'text' => 'unknown is not a valid language code',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: another is not a valid language code
',
    'line_nr' => 11,
    'text' => 'another is not a valid language code',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: UNKNOWN is not a valid region code
',
    'line_nr' => 11,
    'text' => 'UNKNOWN is not a valid region code',
    'type' => 'warning'
  }
];


$result_floats{'unknown_language'} = {};



$result_converted{'plaintext'}->{'unknown_language'} = 'unknkown language
*****************

1 Chapter
*********

Unknown language.  See Top.

   Another unknown language.  See Top.
';


$result_converted{'info'}->{'unknown_language'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter,  Up: (dir)

unknkown language
*****************

* Menu:

* chapter::


File: ,  Node: chapter,  Prev: Top,  Up: Top

1 Chapter
*********

Unknown language.  *Note Top::.

   Another unknown language.  *Note Top::.


Tag Table:
Node: Top27
Node: chapter136

End Tag Table


Local Variables:
coding: utf-8
Info-documentlanguage: another_UNKNOWN
End:
';


$result_converted{'html'}->{'unknown_language'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>unknkown language</title>

<meta name="description" content="unknkown language">
<meta name="keywords" content="unknkown language">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="unknown">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">Chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="unknkown-language"><span>unknkown language<a class="copiable-link" href="#unknkown-language"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">unknkown language</a>, Up: <a href="#Top" accesskey="u" rel="up">unknkown language</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>Unknown language. See <a class="xref" href="#Top">unknkown language</a>.
</p>

<p>Another unknown language. See <a class="xref" href="#Top">unknkown language</a>.
</p></div>
</div>



</body>
</html>
';

1;
