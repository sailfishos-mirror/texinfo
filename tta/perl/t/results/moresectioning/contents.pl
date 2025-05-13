use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'contents'} = '*document_root C12
 *before_node_section C1
  *preamble_before_content
 *0 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1]
 |section_directions:D[next->E5]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E5|E9]
  ||section_level:{-1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *1 @chapter C2 l3 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_directions:D[up->E0]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
 *2 @section C2 l5 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_directions:D[up->E1]
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *3 @subsection C2 l7 {subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
 |section_directions:D[up->E2]
 |section_heading_number:{1.1.1}
 |section_level:{3}
 |section_number:{4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection}
  {empty_line:\\n}
 *4 @subsubsection C2 l9 {subsubsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E3]
 |section_heading_number:{1.1.1.1}
 |section_level:{4}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsubsection}
  {empty_line:\\n}
 *5 @part C2 l11 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E6]
 |section_childs:EC[E6|E7|E8]
 |section_directions:D[next->E9|prev->E0]
 |section_level:{0}
 |section_number:{6}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *6 @chapter C2 l13 {chapter in part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E5]
 |section_directions:D[next->E7|up->E5]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{7}
 |toplevel_directions:D[next->E7|prev->E1|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter in part}
  {empty_line:\\n}
 *7 @chapter C2 l15 {second chapter in part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E8|prev->E6|up->E5]
 |section_heading_number:{3}
 |section_level:{1}
 |section_number:{8}
 |toplevel_directions:D[next->E8|prev->E6|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second chapter in part}
  {empty_line:\\n}
 *8 @unnumbered C2 l17 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E7|up->E5]
 |section_level:{1}
 |section_number:{9}
 |toplevel_directions:D[next->E9|prev->E7|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  {empty_line:\\n}
 *9 @appendix C2 l19 {appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E10]
 |section_directions:D[prev->E5]
 |section_heading_number:{A}
 |section_level:{1}
 |section_number:{10}
 |toplevel_directions:D[prev->E8|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendix}
  {empty_line:\\n}
 *10 @appendixsec C3 l21 {appendixsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E9]
 |section_heading_number:{A.1}
 |section_level:{2}
 |section_number:{11}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendixsec}
  {empty_line:\\n}
  *@contents C1 l23
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'contents'} = '@top top

@chapter chapter

@section section

@subsection subsection

@subsubsection subsubsection

@part part

@chapter chapter in part

@chapter second chapter in part

@unnumbered unnumbered

@appendix appendix

@appendixsec appendixsec

@contents
';


$result_texts{'contents'} = 'top
***

1 chapter
*********

1.1 section
===========

1.1.1 subsection
----------------

1.1.1.1 subsubsection
.....................

part
****

2 chapter in part
*****************

3 second chapter in part
************************

unnumbered
**********

Appendix A appendix
*******************

A.1 appendixsec
===============

';

$result_errors{'contents'} = [];


$result_nodes_list{'contents'} = '';

$result_sections_list{'contents'} = '1|top
2|chapter
3|section
4|subsection
5|subsubsection
6|part
7|chapter in part
8|second chapter in part
9|unnumbered
10|appendix
11|appendixsec
';

$result_headings_list{'contents'} = '';


$result_converted{'plaintext'}->{'contents'} = 'top
***

1 chapter
*********

1.1 section
===========

1.1.1 subsection
----------------

1.1.1.1 subsubsection
.....................

2 chapter in part
*****************

3 second chapter in part
************************

unnumbered
**********

Appendix A appendix
*******************

A.1 appendixsec
===============

top
1 chapter
  1.1 section
    1.1.1 subsection
      1.1.1.1 subsubsection
part
2 chapter in part
3 second chapter in part
unnumbered
Appendix A appendix
  A.1 appendixsec
';


$result_converted{'html'}->{'contents'} = '<!DOCTYPE html>
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

<body lang="">
<div class="top-level-extent" id="top">
<h1 class="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">
<ul class="toc-numbered-mark">
<li>
<ul class="toc-numbered-mark">
  <li><a id="toc-chapter" href="#chapter">1 chapter</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-section" href="#section">1.1 section</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-subsection" href="#subsection">1.1.1 subsection</a>
      <ul class="toc-numbered-mark">
        <li><a id="toc-subsubsection" href="#subsubsection">1.1.1.1 subsubsection</a></li>
      </ul></li>
    </ul></li>
  </ul></li>
</ul></li>
<li><a id="toc-part" href="#part">part</a>
<ul class="toc-numbered-mark">
  <li><a id="toc-chapter-in-part" href="#chapter-in-part">2 chapter in part</a></li>
  <li><a id="toc-second-chapter-in-part" href="#second-chapter-in-part">3 second chapter in part</a></li>
  <li><a id="toc-unnumbered" href="#unnumbered">unnumbered</a></li>
</ul></li>
  <li><a id="toc-appendix" href="#appendix">Appendix A appendix</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-appendixsec" href="#appendixsec">A.1 appendixsec</a></li>
  </ul></li>

</ul>
</div>
</div>
<div class="chapter-level-extent" id="chapter">
<h2 class="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>

<ul class="mini-toc">
<li><a href="#section" accesskey="1">section</a></li>
</ul>
<div class="section-level-extent" id="section">
<h3 class="section"><span>1.1 section<a class="copiable-link" href="#section"> &para;</a></span></h3>

<ul class="mini-toc">
<li><a href="#subsection" accesskey="1">subsection</a></li>
</ul>
<div class="subsection-level-extent" id="subsection">
<h4 class="subsection"><span>1.1.1 subsection<a class="copiable-link" href="#subsection"> &para;</a></span></h4>

<ul class="mini-toc">
<li><a href="#subsubsection" accesskey="1">subsubsection</a></li>
</ul>
<div class="subsubsection-level-extent" id="subsubsection">
<h4 class="subsubsection"><span>1.1.1.1 subsubsection<a class="copiable-link" href="#subsubsection"> &para;</a></span></h4>

</div>
</div>
</div>
</div>
</div>
<div class="part-level-extent" id="part">
<h1 class="part"><span>part<a class="copiable-link" href="#part"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#chapter-in-part" accesskey="1">chapter in part</a></li>
<li><a href="#second-chapter-in-part" accesskey="2">second chapter in part</a></li>
<li><a href="#unnumbered" accesskey="3">unnumbered</a></li>
</ul>
<div class="chapter-level-extent" id="chapter-in-part">
<h2 class="chapter"><span>2 chapter in part<a class="copiable-link" href="#chapter-in-part"> &para;</a></span></h2>

</div>
<div class="chapter-level-extent" id="second-chapter-in-part">
<h2 class="chapter"><span>3 second chapter in part<a class="copiable-link" href="#second-chapter-in-part"> &para;</a></span></h2>

</div>
<div class="unnumbered-level-extent" id="unnumbered">
<h2 class="unnumbered"><span>unnumbered<a class="copiable-link" href="#unnumbered"> &para;</a></span></h2>

</div>
<div class="appendix-level-extent" id="appendix">
<h2 class="appendix"><span>Appendix A appendix<a class="copiable-link" href="#appendix"> &para;</a></span></h2>

<ul class="mini-toc">
<li><a href="#appendixsec" accesskey="1">appendixsec</a></li>
</ul>
<div class="appendixsec-level-extent" id="appendixsec">
<h3 class="appendixsec"><span>A.1 appendixsec<a class="copiable-link" href="#appendixsec"> &para;</a></span></h3>

</div>
</div>
</div>



</body>
</html>
';

1;
