use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'commands_in_settitle_with_title'} = '*document_root C5
 *before_node_section C2
  *@settitle C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C13
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@sc C1 l1
     *brace_container C6
      {sc }
      *@~ C1 l1
       *following_arg C1
        {n}
      { }
      *@aa C1 l1
       *brace_container
      { }
      *@TeX C1 l1
       *brace_container
    { node }
    *@" C1 l1
     *following_arg C1
      {i}
    { }
    *@" C1 l1
     *brace_container C1
      *@dotless C1 l1
       *brace_container C1
        {i}
    { }
    *@` C1 l1
     *brace_container C1
      *@= C1 l1
       *following_arg C1
        {E}
    { }
    *@l C1 l1
     *brace_container
    { }
    *@, C1 l1
     *brace_container C1
      *@\' C1 l1
       *following_arg C1
        {C}
    { }
    *@exclamdown C1 l1
     *brace_container
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
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l4 {top}
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
 *2 @node C1 l6 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C4 l7 {Chap}
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
    {Chap}
  {empty_line:\\n}
  *paragraph C1
   {Document.\\n}
  {empty_line:\\n}
';


$result_texis{'commands_in_settitle_with_title'} = '@settitle @sc{sc @~n @aa{} @TeX{}} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}

@node Top
@top top

@node chapter
@chapter Chap

Document.

';


$result_texts{'commands_in_settitle_with_title'} = '
top
***

1 Chap
******

Document.

';

$result_errors{'commands_in_settitle_with_title'} = [];



$result_converted{'plaintext'}->{'commands_in_settitle_with_title'} = 'top
***

1 Chap
******

Document.

';


$result_converted{'html_text'}->{'commands_in_settitle_with_title'} = '<h1 class="settitle"><small class="sc">SC &Ntilde; &Aring; TeX</small> node &iuml; &iuml; &#274;&#768; &#322; &#262;&#807; &iexcl;</h1>
<hr>

<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">Chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<h2 class="chapter" id="Chap"><span>1 Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h2>

<p>Document.
</p>
</div>
</div>
';


$result_converted{'xml'}->{'commands_in_settitle_with_title'} = '<settitle spaces=" "><sc>sc <accent type="tilde" bracketed="off">n</accent> &aring; &tex;</sc> node <accent type="uml" bracketed="off">i</accent> <accent type="uml"><dotless>i</dotless></accent> <accent type="grave"><accent type="macr" bracketed="off">E</accent></accent> &lslash; <accent type="cedil"><accent type="acute" bracketed="off">C</accent></accent> &iexcl;</settitle>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chapter" spaces=" "><nodename>chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chap</sectiontitle>

<para>Document.
</para>
</chapter>
';


$result_converted{'docbook'}->{'commands_in_settitle_with_title'} = '<chapter label="1" id="chapter">
<title>Chap</title>

<para>Document.
</para>
</chapter>
';


$result_converted{'latex_text'}->{'commands_in_settitle_with_title'} = '
\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:chapter}%

Document.

';

1;
