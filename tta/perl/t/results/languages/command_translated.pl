use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_translated'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@documentlanguage C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |text_arg:{fr}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {fr}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
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
 *1 @top C4 l4 {top @error{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
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
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top }
    *@error C1 l4
     *brace_container
  {empty_line:\\n}
  *paragraph C2
   *@error C1 l6
    *brace_container
   {\\n}
  {empty_line:\\n}
 *2 @node C1 l8 {chapter @error{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter-error_002d_002d_003e}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter }
    *@error C1 l8
     *brace_container
 *3 @chapter C1 l9 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
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
';


$result_texis{'command_translated'} = '@documentlanguage fr

@node Top
@top top @error{}

@error{}

@node chapter @error{}
@chapter Chapter
';


$result_texts{'command_translated'} = '
top error->
***********

error->

1 Chapter
*********
';

$result_errors{'command_translated'} = [];



$result_converted{'plaintext'}->{'command_translated'} = 'top erreur→
***********

erreur→

1 Chapter
*********

';


$result_converted{'info'}->{'command_translated'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter error→,  Up: (dir)

top erreur→
***********

erreur→

* Menu:

* chapter erreur→::


File: ,  Node: chapter error→,  Prev: Top,  Up: Top

1 Chapter
*********


Tag Table:
Node: Top27
Node: chapter error→148

End Tag Table


Local Variables:
coding: utf-8
Info-documentlanguage: fr
End:
';


$result_converted{'html'}->{'command_translated'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top erreur&rarr;</title>

<meta name="description" content="top erreur&rarr;">
<meta name="keywords" content="top erreur&rarr;">
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

<body lang="fr">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Suivant: <a href="#chapter-error_002d_002d_003e" accesskey="n" rel="next">Chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="top-error_002d_002d_003e"><span>top erreur&rarr;<a class="copiable-link" href="#top-error_002d_002d_003e"> &para;</a></span></h1>

<p>erreur&rarr;
</p>
<ul class="mini-toc">
<li><a href="#chapter-error_002d_002d_003e" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-error_002d_002d_003e">
<div class="nav-panel">
<p>
Pr&eacute;c&eacute;dent: <a href="#Top" accesskey="p" rel="prev">top erreur&rarr;</a>, Monter: <a href="#Top" accesskey="u" rel="up">top erreur&rarr;</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';

1;
