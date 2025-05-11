use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'documentlanguage_generated_master_menu'} = '*document_root C11
 *before_node_section C1
  *preamble_before_content C4
   *@documentlanguage C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |text_arg:{pt}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {pt}
   {empty_line:\\n}
   *@documentlanguage C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{2}
   |text_arg:{de}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {de}
   {empty_line:\\n}
 *0 @node C1 l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
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
 *1 @top C2 l6 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_directions:D[next->E2]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E2|E5|E9]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @part C2 l8 {Part I}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E4]
 |part_following_node:[E3]
 |section_childs:EC[E4]
 |section_directions:D[next->E5|prev->E1]
 |section_level:{0}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part I}
  {empty_line:\\n}
 *3 @node C1 l10 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |node_directions:D[next->E6|prev->E0|up->E0]
 |node_number:{2}
 |node_preceding_part:[E2]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *4 @chapter C4 l11 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |associated_part:[E2]
 |section_directions:D[up->E2]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E7|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
  *@documentlanguage C1 l13
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |text_arg:{fr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fr}
  {empty_line:\\n}
 *5 @part C2 l15 {Part II}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{2}
 |part_associated_section:[E7]
 |part_following_node:[E6]
 |section_childs:EC[E7]
 |section_directions:D[next->E9|prev->E2]
 |section_level:{0}
 |section_number:{4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part II}
  {empty_line:\\n}
 *6 @node C1 l17 {other chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |node_directions:D[next->E8|prev->E3|up->E0]
 |node_number:{3}
 |node_preceding_part:[E5]
 |normalized:{other-chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {other chap}
 *7 @chapter C4 l18 {Other chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |associated_part:[E5]
 |section_directions:D[up->E5]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[next->E9|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Other chap}
  {empty_line:\\n}
  *@documentlanguage C1 l20
  |INFO
  |spaces_before_argument:
   |{  }
  |EXTRA
  |global_command_number:{4}
  |text_arg:{hr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {hr}
  {empty_line:\\n}
 *8 @node C1 l22 {appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |associated_title_command:[E9]
 |is_target:{1}
 |node_directions:D[prev->E6|up->E0]
 |node_number:{4}
 |normalized:{appendix}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendix}
 *9 @appendix C1 l23 {App}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E8]
 |associated_node:[E8]
 |section_directions:D[prev->E5]
 |section_heading_number:{A}
 |section_level:{1}
 |section_number:{6}
 |toplevel_directions:D[prev->E7|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {App}
';


$result_texis{'documentlanguage_generated_master_menu'} = '@documentlanguage pt

@documentlanguage de

@node Top
@top top

@part Part I

@node chapter
@chapter Chap

@documentlanguage fr

@part Part II

@node other chap
@chapter Other chap

@documentlanguage  hr

@node appendix
@appendix App
';


$result_texts{'documentlanguage_generated_master_menu'} = '

top
***

Part I
******

1 Chap
******


Part II
*******

2 Other chap
************


Appendix A App
**************
';

$result_errors{'documentlanguage_generated_master_menu'} = [];



$result_converted{'plaintext'}->{'documentlanguage_generated_master_menu'} = 'top
***

1 Chap
******

2 Other chap
************

Privitak A App
**************

';


$result_converted{'info'}->{'documentlanguage_generated_master_menu'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter,  Up: (dir)

top
***

* Menu:

Part: Part I

* chapter::

Part: Part II

* other chap::

Appendices

* appendix::


File: ,  Node: chapter,  Next: other chap,  Prev: Top,  Up: Top

1 Chap
******


File: ,  Node: other chap,  Next: appendix,  Prev: chapter,  Up: Top

2 Other chap
************


File: ,  Node: appendix,  Prev: other chap,  Up: Top

Privitak A App
**************


Tag Table:
Node: Top27
Node: chapter179
Node: other chap261
Node: appendix360

End Tag Table


Local Variables:
coding: utf-8
Info-documentlanguage: hr
End:
';


$result_converted{'html'}->{'documentlanguage_generated_master_menu'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
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

<body lang="de">


<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Nächste: <a href="#chapter" accesskey="n" rel="next">Chap</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<hr>
</div>
<div class="part-level-extent" id="Part-I">
<div class="nav-panel">
<p>
Nächste: <a href="#other-chap" accesskey="n" rel="next">Other chap</a>, Vorige: <a href="#Top" accesskey="p" rel="prev">top</a>, Nach oben: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h1 class="part"><span>Part I<a class="copiable-link" href="#Part-I"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">Chap</a></li>
</ul>
<div class="chapter-level-extent" id="chapter">
<h2 class="chapter" id="Chap"><span>1 Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h2>


<hr>
</div>
</div>
<div class="part-level-extent" id="Part-II">
<div class="nav-panel">
<p>
Suivant: <a href="#appendix" accesskey="n" rel="next">App</a>, Pr&eacute;c&eacute;dent: <a href="#chapter" accesskey="p" rel="prev">Chap</a>, Monter: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h1 class="part"><span>Part II<a class="copiable-link" href="#Part-II"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#other-chap" accesskey="1">Other chap</a></li>
</ul>
<div class="chapter-level-extent" id="other-chap">
<h2 class="chapter" id="Other-chap"><span>2 Other chap<a class="copiable-link" href="#Other-chap"> &para;</a></span></h2>


<hr>
</div>
<div class="appendix-level-extent" id="appendix">
<div class="nav-panel">
<p>
Prethodno: <a href="#other-chap" accesskey="p" rel="prev">Other chap</a>, Gore: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="appendix" id="App"><span>Annexe A App<a class="copiable-link" href="#App"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';

1;
