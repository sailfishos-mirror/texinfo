use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'footnote_no_number'} = '*document_root C5
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |section_number:{1}
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
  {empty_line:\\n}
 *2 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C5 l5 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C3
   {Para}
   *@footnote C1 l7
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {Footnote 1.}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {Para2}
   *@footnote C1 l9
   |EXTRA
   |global_command_number:{2}
    *brace_command_context C1
     *paragraph C1
      {Footnote 2.}
   {.\\n}
';


$result_texis{'footnote_no_number'} = '@node Top
@top top

@node chap
@chapter Chapter

Para@footnote{Footnote 1.}.

Para2@footnote{Footnote 2.}.
';


$result_texts{'footnote_no_number'} = 'top
***

1 Chapter
*********

Para.

Para2.
';

$result_errors{'footnote_no_number'} = [];



$result_converted{'plaintext'}->{'footnote_no_number'} = 'top
***

1 Chapter
*********

Para(*).

   Para2(*).

   ---------- Footnotes ----------

   (*) Footnote 1.

   (*) Footnote 2.

';


$result_converted{'html_text'}->{'footnote_no_number'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>Para<a class="footnote" id="DOCF1" href="#FOOT1"><sup>*</sup></a>.
</p>
<p>Para2<a class="footnote" id="DOCF2" href="#FOOT2"><sup>*</sup></a>.
</p></div>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(*)</a></h5>
<p>Footnote 1.</p>
<h5 class="footnote-body-heading"><a id="FOOT2" href="#DOCF2">(*)</a></h5>
<p>Footnote 2.</p>
</div>
';


$result_converted{'xml'}->{'footnote_no_number'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para>Para<footnote><para>Footnote 1.</para></footnote>.
</para>
<para>Para2<footnote><para>Footnote 2.</para></footnote>.
</para></chapter>
';


$result_converted{'docbook'}->{'footnote_no_number'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<para>Para<footnote><para>Footnote 1.</para></footnote>.
</para>
<para>Para2<footnote><para>Footnote 2.</para></footnote>.
</para></chapter>
';


$result_converted{'latex_text'}->{'footnote_no_number'} = '\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%

Para\\footnote{Footnote 1.}.

Para2\\footnote{Footnote 2.}.
';


$result_converted{'info'}->{'footnote_no_number'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)

top
***

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 Chapter
*********

Para(*).

   Para2(*).

   ---------- Footnotes ----------

   (*) Footnote 1.

   (*) Footnote 2.


Tag Table:
Node: Top27
Node: chap102
Ref: chap-Footnote-1228
Ref: chap-Footnote-2248

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
