use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'character_number_leading_toc_stoc'} = '*document_root C5
 *before_node_section
 *0 @top C1 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1|E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
 *1 @chapter C1 l2 {0}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E2|up->E0]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E2|prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {0}
 *2 @unnumbered C1 l3 {_}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_directions:D[prev->E1|up->E0]
 |section_level:{1}
 |toplevel_directions:D[prev->E1|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {_}
 *3 @section C6 l4 {?}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E2]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {?}
  {empty_line:\\n}
  *@contents C1 l6
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@shortcontents C1 l8
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
';


$result_texis{'character_number_leading_toc_stoc'} = '@top top
@chapter 0
@unnumbered _
@section ?

@contents

@shortcontents

';


$result_texts{'character_number_leading_toc_stoc'} = 'top
***
1 0
***
_
*
?
=



';

$result_errors{'character_number_leading_toc_stoc'} = [];



$result_converted{'html'}->{'character_number_leading_toc_stoc'} = '<!DOCTYPE html>
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

<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
ul.toc-numbered-mark {list-style: none}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="top">
<h1 class="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>
<div class="region-shortcontents" id="SEC_Shortcontents">
<h2 class="shortcontents-heading">Short Table of Contents</h2>

<div class="shortcontents">
<ul class="toc-numbered-mark">
<li><a id="stoc-0" href="#toc-0">1 0</a></li>
<li><a id="stoc-_005f" href="#toc-_005f">_</a></li>
</ul>
</div>
</div>
<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-0" href="#g_t0">1 0</a></li>
  <li><a id="toc-_005f" href="#g_t_005f">_</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-_003f" href="#g_t_003f">?</a></li>
  </ul></li>
</ul>
</div>
</div>
<div class="chapter-level-extent" id="g_t0">
<h2 class="chapter"><span>1 0<a class="copiable-link" href="#g_t0"> &para;</a></span></h2>
</div>
<div class="unnumbered-level-extent" id="g_t_005f">
<h2 class="unnumbered"><span>_<a class="copiable-link" href="#g_t_005f"> &para;</a></span></h2>
<ul class="mini-toc">
<li><a href="#g_t_003f" accesskey="1">?</a></li>
</ul>
<div class="section-level-extent" id="g_t_003f">
<h3 class="section"><span>?<a class="copiable-link" href="#g_t_003f"> &para;</a></span></h3>



</div>
</div>
</div>



</body>
</html>
';

1;
