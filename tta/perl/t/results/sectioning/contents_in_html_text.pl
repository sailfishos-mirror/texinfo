use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'contents_in_html_text'} = '*document_root C5
 *before_node_section
 *0 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1|E3]
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
  {empty_line:\\n}
 *1 @chapter C2 l3 {Chap1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_directions:D[next->E3|up->E0]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E3|prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap1}
  {empty_line:\\n}
 *2 @section C2 l5 {Sec 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E1]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec 1}
  {empty_line:\\n}
 *3 @chapter C4 l7 {Chap2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E1|up->E0]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap2}
  {empty_line:\\n}
  *@shortcontents C1 l9
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  *@contents C1 l10
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'contents_in_html_text'} = '@top top

@chapter Chap1

@section Sec 1

@chapter Chap2

@shortcontents
@contents
';


$result_texts{'contents_in_html_text'} = 'top
***

1 Chap1
*******

1.1 Sec 1
=========

2 Chap2
*******

';

$result_errors{'contents_in_html_text'} = [];


$result_floats{'contents_in_html_text'} = {};



$result_converted{'html_text'}->{'contents_in_html_text'} = '<div class="top-level-extent" id="top">
<h1 class="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#Chap1" accesskey="1">Chap1</a></li>
<li><a href="#Chap2" accesskey="2">Chap2</a></li>
</ul>
<div class="chapter-level-extent" id="Chap1">
<h2 class="chapter"><span>1 Chap1<a class="copiable-link" href="#Chap1"> &para;</a></span></h2>

<ul class="mini-toc">
<li><a href="#Sec-1" accesskey="1">Sec 1</a></li>
</ul>
<div class="section-level-extent" id="Sec-1">
<h3 class="section"><span>1.1 Sec 1<a class="copiable-link" href="#Sec-1"> &para;</a></span></h3>

</div>
</div>
<div class="chapter-level-extent" id="Chap2">
<h2 class="chapter"><span>2 Chap2<a class="copiable-link" href="#Chap2"> &para;</a></span></h2>

<div class="region-shortcontents" id="SEC_Shortcontents">
<h2 class="shortcontents-heading">Short Table of Contents</h2>

<div class="shortcontents">
<ul class="toc-numbered-mark">
<li><a id="stoc-Chap1" href="#toc-Chap1">1 Chap1</a></li>
<li><a id="stoc-Chap2" href="#toc-Chap2">2 Chap2</a></li>
</ul>
</div>
</div>
<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-Chap1" href="#Chap1">1 Chap1</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-Sec-1" href="#Sec-1">1.1 Sec 1</a></li>
  </ul></li>
  <li><a id="toc-Chap2" href="#Chap2">2 Chap2</a></li>
</ul>
</div>
</div>
</div>
</div>
';

1;
