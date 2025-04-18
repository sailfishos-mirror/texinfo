use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'reference_for_formatting_customizations'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 formatting_customizations_input.texi:l1 {Top}
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
 *1 @top C2 formatting_customizations_input.texi:l2 {top}
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
  {empty_line:\\n}
 *2 @node C1 formatting_customizations_input.texi:l4 {chapt}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapt}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapt}
 *3 @chapter C4 formatting_customizations_input.texi:l5 {Chap}
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
  *paragraph C8
   *@AA C1 formatting_customizations_input.texi:l7
    *brace_container
   { }
   *@equiv C1 formatting_customizations_input.texi:l7
    *brace_container
   { }
   *@@
   { }
   *@copyright C1 formatting_customizations_input.texi:l7
    *brace_container
   {\\n}
  {empty_line:\\n}
';


$result_texis{'reference_for_formatting_customizations'} = '@node Top
@top top

@node chapt
@chapter Chap

@AA{} @equiv{} @@ @copyright{}

';


$result_texts{'reference_for_formatting_customizations'} = 'top
***

1 Chap
******

AA == @ (C)

';

$result_errors{'reference_for_formatting_customizations'} = [];



$result_converted{'plaintext'}->{'reference_for_formatting_customizations'} = 'top
***

1 Chap
******

Å ≡ @ ©

';


$result_converted{'html_text'}->{'reference_for_formatting_customizations'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chapt" accesskey="1">Chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapt">
<h2 class="chapter" id="Chap"><span>1 Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h2>

<p>&Aring; &equiv; @ &copy;
</p>
</div>
</div>
';


$result_converted{'xml'}->{'reference_for_formatting_customizations'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapt</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chapt" spaces=" "><nodename>chapt</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chap</sectiontitle>

<para>&Aring; &equiv; &arobase; &copyright;
</para>
</chapter>
';


$result_converted{'docbook'}->{'reference_for_formatting_customizations'} = '<chapter label="1" id="chapt">
<title>Chap</title>

<para>&#197; &#8801; @ &#169;
</para>
</chapter>
';


$result_converted{'latex_text'}->{'reference_for_formatting_customizations'} = '\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:chapt}%

\\AA{} $\\equiv{}$ @ \\copyright{}

';

1;
