use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'more_sections_than_nodes'} = '*document_root C19
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E5|E8|E14|E19]
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
  *2 @menu C5 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{n c2}
    |normalized:{n-c2}
     {n c2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{n c3}
    |normalized:{n-c3}
     {n c3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{n c3 s1 s2}
    |normalized:{n-c3-s1-s2}
     {n c3 s1 s2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *3 @chapter C2 l10 {c1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E5|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c1}
  {empty_line:\\n}
 *4 @node C1 l12 {n c2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |menu_directions:D[next->E7|up->E0]
 |node_directions:D[next->E7|prev->E0|up->E0]
 |normalized:{n-c2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {n c2}
 *5 @chapter C2 l13 {c2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_childs:EC[E6]
 |section_directions:D[next->E8|prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E8|prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c2}
  {empty_line:\\n}
 *6 @section C2 l15 {s1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E5]
 |section_level:{2}
 |section_number:{2.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {s1}
  {empty_line:\\n}
 *7 @node C1 l17 {n c3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |associated_title_command:[E8]
 |is_target:{1}
 |menu_directions:D[next->E17|prev->E4|up->E0]
 |menus:EC[E9]
 |node_directions:D[next->E17|prev->E4|up->E0]
 |normalized:{n-c3}
  *arguments_line C4
   *line_arg C1
    {n c3}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{n c3 s1 s2}
   |normalized:{n-c3-s1-s2}
    {n c3 s1 s2}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{n c2}
   |normalized:{n-c2}
    {n c2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *8 @chapter C4 l18 {c3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E7]
 |associated_node:[E7]
 |section_childs:EC[E10|E12|E13]
 |section_directions:D[next->E14|prev->E5|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E14|prev->E5|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3}
  {empty_line:\\n}
  *9 @menu C3 l20
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{ \\n}
   *menu_entry C4 l21
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{n c3 s 2}
    |normalized:{n-c3-s-2}
     {n c3 s 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l22
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *10 @section C2 l24 {C3 s1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E12|up->E8]
 |section_level:{2}
 |section_number:{3.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {C3 s1}
  {empty_line:\\n}
 *11 @node C1 l26 {n c3 s 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |associated_title_command:[E12]
 |is_target:{1}
 |menu_directions:D[up->E7]
 |node_directions:D[up->E7]
 |normalized:{n-c3-s-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {n c3 s 2}
 *12 @section C2 l27 {c3 s2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E11]
 |associated_node:[E11]
 |section_directions:D[next->E13|prev->E10|up->E8]
 |section_level:{2}
 |section_number:{3.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3 s2}
  {empty_line:\\n}
 *13 @section C2 l29 {c3 s3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E12|up->E8]
 |section_level:{2}
 |section_number:{3.3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3 s3}
  {empty_line:\\n}
 *14 @chapter C2 l31 {c4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E15]
 |section_directions:D[next->E19|prev->E8|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E19|prev->E8|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c4}
  {empty_line:\\n}
 *15 @section C2 l33 {c3 s1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E16|E18]
 |section_directions:D[up->E14]
 |section_level:{2}
 |section_number:{4.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3 s1}
  {empty_line:\\n}
 *16 @subsection C2 l35 {c3 s1 s1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E18|up->E15]
 |section_level:{3}
 |section_number:{4.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3 s1 s1}
  {empty_line:\\n}
 *17 @node C1 l37 {n c3 s1 s2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E18]
 |associated_title_command:[E18]
 |is_target:{1}
 |menu_directions:D[prev->E7|up->E0]
 |node_directions:D[prev->E7|up->E0]
 |normalized:{n-c3-s1-s2}
  *arguments_line C4
   *line_arg C1
    {n c3 s1 s2}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{n c3}
   |normalized:{n-c3}
    {n c3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *18 @subsection C2 l38 {c3 s1 s2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E17]
 |associated_node:[E17]
 |section_directions:D[prev->E16|up->E15]
 |section_level:{3}
 |section_number:{4.1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c3 s1 s2}
  {empty_line:\\n}
 *19 @appendix C1 l40 {appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E14|up->E1]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E14|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendix}
';


$result_texis{'more_sections_than_nodes'} = '@node Top
@top top

@menu
* n c2::
* n c3::
* n c3 s1 s2::
@end menu

@chapter c1

@node n c2
@chapter c2

@section s1

@node n c3, n c3 s1 s2, n c2, Top
@chapter c3

@menu 
* n c3 s 2::
@end menu

@section C3 s1

@node n c3 s 2
@section c3 s2

@section c3 s3

@chapter c4

@section c3 s1

@subsection c3 s1 s1

@node n c3 s1 s2,,n c3,Top
@subsection c3 s1 s2

@appendix appendix
';


$result_texts{'more_sections_than_nodes'} = 'top
***

* n c2::
* n c3::
* n c3 s1 s2::

1 c1
****

2 c2
****

2.1 s1
======

3 c3
****

* n c3 s 2::

3.1 C3 s1
=========

3.2 c3 s2
=========

3.3 c3 s3
=========

4 c4
****

4.1 c3 s1
=========

4.1.1 c3 s1 s1
--------------

4.1.2 c3 s1 s2
--------------

Appendix A appendix
*******************
';

$result_errors{'more_sections_than_nodes'} = [];



$result_converted{'info'}->{'more_sections_than_nodes'} = 'This is , produced from .


File: ,  Node: Top,  Next: n c2,  Up: (dir)

top
***

* Menu:

* n c2::
* n c3::
* n c3 s1 s2::

1 c1
****


File: ,  Node: n c2,  Next: n c3,  Prev: Top,  Up: Top

2 c2
****

2.1 s1
======


File: ,  Node: n c3,  Next: n c3 s1 s2,  Prev: n c2,  Up: Top

3 c3
****

* Menu:

* n c3 s 2::

3.1 C3 s1
=========


File: ,  Node: n c3 s 2,  Up: n c3

3.2 c3 s2
=========

3.3 c3 s3
=========

4 c4
****

4.1 c3 s1
=========

4.1.1 c3 s1 s1
--------------


File: ,  Node: n c3 s1 s2,  Prev: n c3,  Up: Top

4.1.2 c3 s1 s2
--------------

Appendix A appendix
*******************


Tag Table:
Node: Top27
Node: n c2137
Node: n c3221
Node: n c3 s 2341
Node: n c3 s1 s2484

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'more_sections_than_nodes'} = '<!DOCTYPE html>
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

<body lang="">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#n-c2" accesskey="n" rel="next">c2</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<ul class="mini-toc">
<li><a href="#c1" accesskey="1">c1</a></li>
<li><a href="#n-c2" accesskey="2">c2</a></li>
<li><a href="#n-c3" accesskey="3">c3</a></li>
<li><a href="#c4" accesskey="4">c4</a></li>
<li><a href="#appendix" accesskey="5">appendix</a></li>
</ul>
<div class="chapter-level-extent" id="c1">
<h2 class="chapter"><span>1 c1<a class="copiable-link" href="#c1"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="n-c2">
<div class="nav-panel">
<p>
Next: <a href="#n-c3" accesskey="n" rel="next">c3</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="c2"><span>2 c2<a class="copiable-link" href="#c2"> &para;</a></span></h2>

<ul class="mini-toc">
<li><a href="#s1" accesskey="1">s1</a></li>
</ul>
<div class="section-level-extent" id="s1">
<h3 class="section"><span>2.1 s1<a class="copiable-link" href="#s1"> &para;</a></span></h3>

<hr>
</div>
</div>
<div class="chapter-level-extent" id="n-c3">
<div class="nav-panel">
<p>
Next: <a href="#n-c3-s1-s2" accesskey="n" rel="next">c3 s1 s2</a>, Previous: <a href="#n-c2" accesskey="p" rel="prev">c2</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="c3"><span>3 c3<a class="copiable-link" href="#c3"> &para;</a></span></h2>


<ul class="mini-toc">
<li><a href="#C3-s1" accesskey="1">C3 s1</a></li>
<li><a href="#n-c3-s-2" accesskey="2">c3 s2</a></li>
<li><a href="#c3-s3" accesskey="3">c3 s3</a></li>
</ul>
<div class="section-level-extent" id="C3-s1">
<h3 class="section"><span>3.1 C3 s1<a class="copiable-link" href="#C3-s1"> &para;</a></span></h3>

<hr>
</div>
<div class="section-level-extent" id="n-c3-s-2">
<div class="nav-panel">
<p>
Up: <a href="#n-c3" accesskey="u" rel="up">c3</a> &nbsp; </p>
</div>
<h3 class="section" id="c3-s2"><span>3.2 c3 s2<a class="copiable-link" href="#c3-s2"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="c3-s3">
<h3 class="section"><span>3.3 c3 s3<a class="copiable-link" href="#c3-s3"> &para;</a></span></h3>

</div>
</div>
<div class="chapter-level-extent" id="c4">
<h2 class="chapter"><span>4 c4<a class="copiable-link" href="#c4"> &para;</a></span></h2>

<ul class="mini-toc">
<li><a href="#c3-s1" accesskey="1">c3 s1</a></li>
</ul>
<div class="section-level-extent" id="c3-s1">
<h3 class="section"><span>4.1 c3 s1<a class="copiable-link" href="#c3-s1"> &para;</a></span></h3>

<ul class="mini-toc">
<li><a href="#c3-s1-s1" accesskey="1">c3 s1 s1</a></li>
<li><a href="#n-c3-s1-s2" accesskey="2">c3 s1 s2</a></li>
</ul>
<div class="subsection-level-extent" id="c3-s1-s1">
<h4 class="subsection"><span>4.1.1 c3 s1 s1<a class="copiable-link" href="#c3-s1-s1"> &para;</a></span></h4>

<hr>
</div>
<div class="subsection-level-extent" id="n-c3-s1-s2">
<div class="nav-panel">
<p>
Previous: <a href="#n-c3" accesskey="p" rel="prev">c3</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h4 class="subsection" id="c3-s1-s2"><span>4.1.2 c3 s1 s2<a class="copiable-link" href="#c3-s1-s2"> &para;</a></span></h4>

</div>
</div>
</div>
<div class="appendix-level-extent" id="appendix">
<h2 class="appendix"><span>Appendix A appendix<a class="copiable-link" href="#appendix"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'more_sections_than_nodes'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">n c2</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>n c2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>n c3</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>n c3 s1 s2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<chapter spaces=" "><sectiontitle>c1</sectiontitle>

</chapter>
<node identifier="n-c2" spaces=" "><nodename>n c2</nodename><nodenext automatic="on">n c3</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>c2</sectiontitle>

<section spaces=" "><sectiontitle>s1</sectiontitle>

</section>
</chapter>
<node identifier="n-c3" spaces=" "><nodename>n c3</nodename><nodenext spaces=" ">n c3 s1 s2</nodenext><nodeprev spaces=" ">n c2</nodeprev><nodeup spaces=" ">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>c3</sectiontitle>

<menu endspaces=" "> 
<menuentry><menuleadingtext>* </menuleadingtext><menunode>n c3 s 2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<section spaces=" "><sectiontitle>C3 s1</sectiontitle>

</section>
<node identifier="n-c3-s-2" spaces=" "><nodename>n c3 s 2</nodename><nodeup automatic="on">n c3</nodeup></node>
<section spaces=" "><sectiontitle>c3 s2</sectiontitle>

</section>
<section spaces=" "><sectiontitle>c3 s3</sectiontitle>

</section>
</chapter>
<chapter spaces=" "><sectiontitle>c4</sectiontitle>

<section spaces=" "><sectiontitle>c3 s1</sectiontitle>

<subsection spaces=" "><sectiontitle>c3 s1 s1</sectiontitle>

</subsection>
<node identifier="n-c3-s1-s2" spaces=" "><nodename>n c3 s1 s2</nodename><nodenext></nodenext><nodeprev>n c3</nodeprev><nodeup>Top</nodeup></node>
<subsection spaces=" "><sectiontitle>c3 s1 s2</sectiontitle>

</subsection>
</section>
</chapter>
<appendix spaces=" "><sectiontitle>appendix</sectiontitle>
</appendix>
';

1;
