use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'deftypefnnewline_for_copying_after'} = '*document_root C5
 *before_node_section C8
  *0 @copying C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *1 @deftypefun C3 l2
   |INFO
   |spaces_before_argument:
    |{ }
    *def_line C1 l2
    |EXTRA
    |def_command:{deftypefun}
    |def_index_element:
     |*def_name C1
      |*def_line_arg C1
       |{NAME}
    |element_region:{copying}
    |index_entry:I{fn,1}
    |original_def_cmdname:{deftypefun}
     *block_line_arg C7
     |INFO
     |spaces_after_argument:
      |{\\n}
      *def_category C1
      |INFO
      |inserted:{1}
       *def_line_arg C1
        {Function}
      (i){spaces: }
      *def_type C1
       *def_line_arg C1
        {TYPE}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        {NAME}
      {spaces: }
      *def_typearg C1
       *def_line_arg C1
        {ARGUMENTS...}
    *def_item C1
     *paragraph C1
      {BODY-OF-DESCRIPTION\\n}
    *@end C1 l4
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{deftypefun}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {deftypefun}
   *@end C1 l5
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
  *@insertcopying C1 l7
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@deftypefnnewline C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{on}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on}
  {empty_line:\\n}
  *@insertcopying C1 l11
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:\\n}
  {empty_line:\\n}
 *2 @node C1 l13 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E4]
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
 |associated_node:[E2]
 |section_childs:EC[E5]
 |section_level:{0}
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
 *4 @node C1 l16 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E2]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *5 @chapter C4 l17 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E3|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *6 @deftypefun C3 l19
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l19
   |EXTRA
   |def_command:{deftypefun}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{something}
   |element_node:[E4]
   |index_entry:I{fn,2}
   |original_def_cmdname:{deftypefun}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
     |INFO
     |inserted:{1}
      *def_line_arg C1
       {Function}
     (i){spaces: }
     *def_type C1
      *def_line_arg C1
       {void}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {something}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {input}
   *def_item C1
    *paragraph C1
     {do something with input\\n}
   *@end C1 l21
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefun}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefun}
  {empty_line:\\n}
';


$result_texis{'deftypefnnewline_for_copying_after'} = '@copying
@deftypefun TYPE NAME ARGUMENTS...
BODY-OF-DESCRIPTION
@end deftypefun
@end copying

@insertcopying

@deftypefnnewline on

@insertcopying

@node Top
@top top

@node chap
@chapter Chapter

@deftypefun void something input
do something with input
@end deftypefun

';


$result_texts{'deftypefnnewline_for_copying_after'} = '



top
***

1 Chapter
*********

Function: void something input
do something with input

';

$result_errors{'deftypefnnewline_for_copying_after'} = [];


$result_indices_sort_strings{'deftypefnnewline_for_copying_after'} = 'fn:
 NAME
 something
';


$result_converted{'html'}->{'deftypefnnewline_for_copying_after'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Function: TYPE NAME ARGUMENTS...
BODY-OF-DESCRIPTION -->
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
strong.def-name {font-family: monospace; font-weight: bold; font-size: larger}
-->
</style>


</head>

<body lang="en">

<dl class="first-deftypefn first-deftypefun-alias-first-deftypefn def-block">
<dt class="deftypefn deftypefun-alias-deftypefn def-line" id="index-copying-NAME"><span class="category-def">Function: </span><span><code class="def-type">TYPE</code> <strong class="def-name">NAME</strong> <code class="def-code-arguments">ARGUMENTS...</code><a class="copiable-link" href="#index-copying-NAME"> &para;</a></span></dt>
<dd><p>BODY-OF-DESCRIPTION
</p></dd></dl>


<dl class="first-deftypefn first-deftypefun-alias-first-deftypefn def-block">
<dt class="deftypefn deftypefun-alias-deftypefn def-line" id="index-copying-NAME"><span class="category-def">Function:<br> </span><span><code class="def-type">TYPE</code><br> <strong class="def-name">NAME</strong> <code class="def-code-arguments">ARGUMENTS...</code><a class="copiable-link" href="#index-copying-NAME"> &para;</a></span></dt>
<dd><p>BODY-OF-DESCRIPTION
</p></dd></dl>

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chap" accesskey="n" rel="next">Chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<dl class="first-deftypefn first-deftypefun-alias-first-deftypefn def-block">
<dt class="deftypefn deftypefun-alias-deftypefn def-line" id="index-something"><span class="category-def">Function:<br> </span><span><code class="def-type">void</code><br> <strong class="def-name">something</strong> <code class="def-code-arguments">input</code><a class="copiable-link" href="#index-something"> &para;</a></span></dt>
<dd><p>do something with input
</p></dd></dl>

</div>
</div>



</body>
</html>
';

1;
