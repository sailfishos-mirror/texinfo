use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'detailmenu_on_subnodes'} = '*document_root C13
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
 |node_directions:D[next->E3]
 |node_number:{1}
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
 |section_childs:EC[E4|E9]
 |section_level:{0}
 |section_number:{1}
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
    {top}
  {empty_line:\\n}
  *2 @menu C8 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter}
    |normalized:{chapter}
     {chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter 2}
    |normalized:{chapter-2}
     {chapter 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
   *@detailmenu C3 l8
   |EXTRA
   |global_command_number:{1}
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_entry C4 l9
     {menu_entry_leading_text:* }
     *menu_entry_node C1
     |EXTRA
     |node_content:{section}
     |normalized:{section}
      {section}
     {menu_entry_separator:::}
     *menu_entry_description C1
      *preformatted C1
       {\\n}
    *@end C1 l10
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{detailmenu}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {detailmenu}
   *menu_comment C1
    *preformatted C1
     {empty_line:\\n}
   *@detailmenu C5 l12
   |EXTRA
   |global_command_number:{2}
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_comment C1
     *preformatted C2
      {Chap 2\\n}
      {empty_line:\\n}
    *menu_entry C4 l15
     {menu_entry_leading_text:* }
     *menu_entry_node C1
     |EXTRA
     |node_content:{section chap 2}
     |normalized:{section-chap-2}
      {section chap 2}
     {menu_entry_separator:::}
     *menu_entry_description C1
      *preformatted C1
       {\\n}
    *menu_entry C4 l16
     {menu_entry_leading_text:* }
     *menu_entry_node C1
     |EXTRA
     |node_content:{unnumberedsec}
     |normalized:{unnumberedsec}
      {unnumberedsec}
     {menu_entry_separator:::}
     *menu_entry_description C1
      *preformatted C1
       {\\n}
    *@end C1 l17
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{detailmenu}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {detailmenu}
   *@end C1 l18
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
 *3 @node C1 l20 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E8|up->E0]
 |menus:EC[E5]
 |node_directions:D[next->E8|prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *4 @chapter C4 l21 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_childs:EC[E7]
 |section_directions:D[next->E9|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E9|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  *5 @menu C3 l23
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l24
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section}
    |normalized:{section}
     {section}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l25
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
 *6 @node C1 l27 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |menu_directions:D[up->E3]
 |node_directions:D[up->E3]
 |node_number:{3}
 |normalized:{section}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
 *7 @section C2 l28 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_directions:D[up->E4]
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
 *8 @node C1 l30 {chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |associated_title_command:[E9]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E0]
 |menus:EC[E10]
 |node_directions:D[prev->E3|up->E0]
 |node_number:{4}
 |normalized:{chapter-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2}
 *9 @chapter C4 l31 {chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E8]
 |associated_node:[E8]
 |section_childs:EC[E12|E14]
 |section_directions:D[prev->E4|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2}
  {empty_line:\\n}
  *10 @menu C4 l33
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l34
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section chap 2}
    |normalized:{section-chap-2}
     {section chap 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l35
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumberedsec}
    |normalized:{unnumberedsec}
     {unnumberedsec}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l36
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
 *11 @node C1 l38 {section chap 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |associated_title_command:[E12]
 |is_target:{1}
 |menu_directions:D[next->E13|up->E8]
 |node_directions:D[next->E13|up->E8]
 |node_number:{5}
 |normalized:{section-chap-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section chap 2}
 *12 @section C2 l39 {section chap 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E11]
 |associated_node:[E11]
 |section_directions:D[next->E14|up->E9]
 |section_heading_number:{2.1}
 |section_level:{2}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section chap 2}
  {empty_line:\\n}
 *13 @node C1 l41 {unnumberedsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |associated_title_command:[E14]
 |is_target:{1}
 |menu_directions:D[prev->E11|up->E8]
 |node_directions:D[prev->E11|up->E8]
 |node_number:{6}
 |normalized:{unnumberedsec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec}
 *14 @unnumberedsec C1 l42 {unnumberedsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E13]
 |associated_node:[E13]
 |section_directions:D[prev->E12|up->E9]
 |section_level:{2}
 |section_number:{6}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec}
';


$result_texis{'detailmenu_on_subnodes'} = '@node Top
@top top

@menu
* chapter::
* chapter 2::

@detailmenu
* section::
@end detailmenu

@detailmenu
Chap 2

* section chap 2::
* unnumberedsec::
@end detailmenu
@end menu

@node chapter
@chapter chapter

@menu
* section::
@end menu

@node section
@section section

@node chapter 2
@chapter chapter 2

@menu
* section chap 2::
* unnumberedsec::
@end menu

@node section chap 2
@section section chap 2

@node unnumberedsec
@unnumberedsec unnumberedsec
';


$result_texts{'detailmenu_on_subnodes'} = 'top
***

* chapter::
* chapter 2::

* section::

Chap 2

* section chap 2::
* unnumberedsec::

1 chapter
*********

* section::

1.1 section
===========

2 chapter 2
***********

* section chap 2::
* unnumberedsec::

2.1 section chap 2
==================

unnumberedsec
=============
';

$result_errors{'detailmenu_on_subnodes'} = [];



$result_converted{'plaintext'}->{'detailmenu_on_subnodes'} = 'top
***

* Menu:

* chapter::
* chapter 2::

* section::

Chap 2

* section chap 2::
* unnumberedsec::

1 chapter
*********

* Menu:

* section::

1.1 section
===========

2 chapter 2
***********

* Menu:

* section chap 2::
* unnumberedsec::

2.1 section chap 2
==================

unnumberedsec
=============

';


$result_converted{'html'}->{'detailmenu_on_subnodes'} = '<!DOCTYPE html>
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
pre.menu-comment-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#chapter" accesskey="1">chapter</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chapter-2" accesskey="2">chapter 2</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#section" accesskey="3">section</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">Chap 2

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#section-chap-2" accesskey="4">section chap 2</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#unnumberedsec" accesskey="5">unnumberedsec</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Next: <a href="#chapter-2" accesskey="n" rel="next">chapter 2</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-1"><span>1 chapter<a class="copiable-link" href="#chapter-1"> &para;</a></span></h2>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#section" accesskey="1">section</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<hr>
<div class="section-level-extent" id="section">
<div class="nav-panel">
<p>
Up: <a href="#chapter" accesskey="u" rel="up">chapter</a> &nbsp; </p>
</div>
<h3 class="section" id="section-1"><span>1.1 section<a class="copiable-link" href="#section-1"> &para;</a></span></h3>

<hr>
</div>
</div>
<div class="chapter-level-extent" id="chapter-2">
<div class="nav-panel">
<p>
Previous: <a href="#chapter" accesskey="p" rel="prev">chapter</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-2-1"><span>2 chapter 2<a class="copiable-link" href="#chapter-2-1"> &para;</a></span></h2>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#section-chap-2" accesskey="1">section chap 2</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#unnumberedsec" accesskey="2">unnumberedsec</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<hr>
<div class="section-level-extent" id="section-chap-2">
<div class="nav-panel">
<p>
Next: <a href="#unnumberedsec" accesskey="n" rel="next">unnumberedsec</a>, Up: <a href="#chapter-2" accesskey="u" rel="up">chapter 2</a> &nbsp; </p>
</div>
<h3 class="section" id="section-chap-2-1"><span>2.1 section chap 2<a class="copiable-link" href="#section-chap-2-1"> &para;</a></span></h3>

<hr>
</div>
<div class="unnumberedsec-level-extent" id="unnumberedsec">
<div class="nav-panel">
<p>
Previous: <a href="#section-chap-2" accesskey="p" rel="prev">section chap 2</a>, Up: <a href="#chapter-2" accesskey="u" rel="up">chapter 2</a> &nbsp; </p>
</div>
<h3 class="unnumberedsec" id="unnumberedsec-1"><span>unnumberedsec<a class="copiable-link" href="#unnumberedsec-1"> &para;</a></span></h3>
</div>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'detailmenu_on_subnodes'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter 2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menucomment><pre xml:space="preserve">
</pre></menucomment><detailmenu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>section</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></detailmenu>
<menucomment><pre xml:space="preserve">
</pre></menucomment><detailmenu endspaces=" ">
<menucomment><pre xml:space="preserve">Chap 2

</pre></menucomment><menuentry><menuleadingtext>* </menuleadingtext><menunode>section chap 2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>unnumberedsec</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></detailmenu>
</menu>

</top>
<node identifier="chapter" spaces=" "><nodename>chapter</nodename><nodenext automatic="on">chapter 2</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>section</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="section" spaces=" "><nodename>section</nodename><nodeup automatic="on">chapter</nodeup></node>
<section spaces=" "><sectiontitle>section</sectiontitle>

</section>
</chapter>
<node identifier="chapter-2" spaces=" "><nodename>chapter 2</nodename><nodeprev automatic="on">chapter</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter 2</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>section chap 2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>unnumberedsec</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="section-chap-2" spaces=" "><nodename>section chap 2</nodename><nodenext automatic="on">unnumberedsec</nodenext><nodeup automatic="on">chapter 2</nodeup></node>
<section spaces=" "><sectiontitle>section chap 2</sectiontitle>

</section>
<node identifier="unnumberedsec" spaces=" "><nodename>unnumberedsec</nodename><nodeprev automatic="on">section chap 2</nodeprev><nodeup automatic="on">chapter 2</nodeup></node>
<unnumberedsec spaces=" "><sectiontitle>unnumberedsec</sectiontitle>
</unnumberedsec>
</chapter>
';

1;
