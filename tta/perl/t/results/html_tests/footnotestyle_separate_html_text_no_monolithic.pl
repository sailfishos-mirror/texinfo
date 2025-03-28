use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'footnotestyle_separate_html_text_no_monolithic'} = '*document_root C5
 *before_node_section C2
  *@footnotestyle C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{separate}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {separate}
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
 *1 @top C3 l4 {top}
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
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  *paragraph C3
   {In top}
   *@footnote C1 l5
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {Additional text}
   {.\\n}
  {empty_line:\\n}
 *2 @node C1 l7 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C2 l8 {Chap}
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
    {Chap}
  {empty_line:\\n}
';


$result_texis{'footnotestyle_separate_html_text_no_monolithic'} = '@footnotestyle separate

@node Top
@top top
In top@footnote{Additional text}.

@node chap
@chapter Chap

';


$result_texts{'footnotestyle_separate_html_text_no_monolithic'} = '
top
***
In top.

1 Chap
******

';

$result_errors{'footnotestyle_separate_html_text_no_monolithic'} = [];



$result_converted{'html_text'}->{'footnotestyle_separate_html_text_no_monolithic'} = '
<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>
<p>In top<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>.
</p>
<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="Chap"><span>1 Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h2>

<hr>
</div>
</div>
<div class="element-footnotes" id="SEC_Footnotes">
<div class="nav-panel">
<p>
[<a href="#Top" title="Cover (top) of document" rel="start">Top</a>]</p>
</div>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>Additional text</p>
</div><hr>
<div class="nav-panel">
<p>
[<a href="#Top" title="Cover (top) of document" rel="start">Top</a>]</p>
</div>
';

1;
