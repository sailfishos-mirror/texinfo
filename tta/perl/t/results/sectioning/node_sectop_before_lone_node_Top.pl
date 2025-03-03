use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_sectop_before_lone_node_Top'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {node before}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E3]
 |normalized:{node-before}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node before}
 *1 @top C4 l2 {top sectionning}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top sectionning}
  {empty_line:\\n}
  *paragraph C1
   {in node before\\n}
  {empty_line:\\n}
 *2 @node C4 l6 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E0]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *paragraph C1
   {in node Top\\n}
  {empty_line:\\n}
 *3 @node C1 l10 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |node_directions:D[up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *4 @chapter C3 l11 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *paragraph C1
   {in chap\\n}
';


$result_texis{'node_sectop_before_lone_node_Top'} = '@node node before
@top top sectionning

in node before

@node Top

in node Top

@node chap
@chapter chap

in chap
';


$result_texts{'node_sectop_before_lone_node_Top'} = 'top sectionning
***************

in node before


in node Top

1 chap
******

in chap
';

$result_errors{'node_sectop_before_lone_node_Top'} = [];



$result_converted{'plaintext'}->{'node_sectop_before_lone_node_Top'} = 'top sectionning
***************

in node before

in node Top

1 chap
******

in chap
';


$result_converted{'html'}->{'node_sectop_before_lone_node_Top'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top sectionning</title>

<meta name="description" content="top sectionning">
<meta name="keywords" content="top sectionning">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#node-before" rel="start" title="node before">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="node-before">
<div class="nav-panel">
<p>
Next: <a href="#chap" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="top" id="top-sectionning"><span>top sectionning<a class="copiable-link" href="#top-sectionning"> &para;</a></span></h1>

<p>in node before
</p>
<ul class="mini-toc">
<li><a href="#chap" accesskey="1">chap</a></li>
</ul>
<hr>
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#node-before" accesskey="n" rel="next">top sectionning</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<p>in node Top
</p>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
Up: <a href="#node-before" accesskey="u" rel="up">top sectionning</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chap-1"><span>1 chap<a class="copiable-link" href="#chap-1"> &para;</a></span></h2>

<p>in chap
</p></div>
</div>



</body>
</html>
';


$result_converted{'docbook'}->{'node_sectop_before_lone_node_Top'} = '<chapter label="" id="node-before">
<title>top sectionning</title>

<para>in node before
</para>
</chapter>
<chapter label="1" id="chap">
<title>chap</title>

<para>in chap
</para></chapter>
';


$result_converted{'latex_text'}->{'node_sectop_before_lone_node_Top'} = '\\begin{document}
\\part*{{top sectionning}}
\\label{anchor:node-before}%

in node before

\\label{anchor:Top}%
\\chapter{{chap}}
\\label{anchor:chap}%

in chap
';

1;
