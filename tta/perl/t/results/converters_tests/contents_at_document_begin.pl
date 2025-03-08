use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'contents_at_document_begin'} = '*document_root C6
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@contents C1 contents_at_document_begin.texi:l3
   |EXTRA
   |global_command_number:{1}
    {rawline_arg:\\n}
   {empty_line:\\n}
 *0 @node C1 contents_at_document_begin.texi:l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C6 contents_at_document_begin.texi:l6 {Contents at beginning}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4]
 |section_level:{0}
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
    {Contents at beginning}
  {empty_line:\\n}
  *paragraph C1
   {Content at the beginning.\\n}
  {empty_line:\\n}
  *2 @menu C3 contents_at_document_begin.texi:l10
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{ \\n}
   *menu_entry C4 contents_at_document_begin.texi:l11
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
   *@end C1 contents_at_document_begin.texi:l12
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
 *3 @node C1 contents_at_document_begin.texi:l14 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *4 @chapter C4 contents_at_document_begin.texi:l15 {Chapter 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter 1}
  {empty_line:\\n}
  *paragraph C1
   {The chapter\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'contents_at_document_begin'} = '\\input texinfo @c -*-texinfo-*-

@contents

@node Top
@top Contents at beginning

Content at the beginning.

@menu 
* chapter::
@end menu

@node chapter
@chapter Chapter 1

The chapter

@bye
';


$result_texts{'contents_at_document_begin'} = '
Contents at beginning
*********************

Content at the beginning.

* chapter::

1 Chapter 1
***********

The chapter

';

$result_errors{'contents_at_document_begin'} = [];



$result_converted{'plaintext'}->{'contents_at_document_begin'} = 'Contents at beginning
1 Chapter 1

Contents at beginning
*********************

Content at the beginning.

1 Chapter 1
***********

The chapter

';


$result_converted{'html'}->{'contents_at_document_begin'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Contents at beginning</title>

<meta name="description" content="Contents at beginning">
<meta name="keywords" content="Contents at beginning">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
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

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">Chapter 1</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="top" id="Contents-at-beginning"><span>Contents at beginning<a class="copiable-link" href="#Contents-at-beginning"> &para;</a></span></h1>

<p>Content at the beginning.
</p>

<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-Chapter-1" href="#chapter">1 Chapter 1</a></li>
</ul>
</div>
</div>
<hr style="height: 6px;">
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Contents at beginning</a>, Up: <a href="#Top" accesskey="u" rel="up">Contents at beginning</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="chapter" id="Chapter-1"><span>1 Chapter 1<a class="copiable-link" href="#Chapter-1"> &para;</a></span></h2>

<p>The chapter
</p>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'contents_at_document_begin'} = '<preamblebeforebeginning>\\input texinfo @c -*-texinfo-*-

</preamblebeforebeginning><contents></contents>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>Contents at beginning</sectiontitle>

<para>Content at the beginning.
</para>
<menu endspaces=" "> 
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="chapter" spaces=" "><nodename>chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter 1</sectiontitle>

<para>The chapter
</para>
</chapter>
<bye></bye>
';


$result_converted{'docbook'}->{'contents_at_document_begin'} = '<chapter label="1" id="chapter">
<title>Chapter 1</title>

<para>The chapter
</para>
</chapter>
';


$result_converted{'latex_text'}->{'contents_at_document_begin'} = '
\\begin{document}
\\tableofcontents\\newpage
\\label{anchor:Top}%
\\chapter{{Chapter 1}}
\\label{anchor:chapter}%

The chapter

';


$result_converted{'info'}->{'contents_at_document_begin'} = 'This is , produced from contents_at_document_begin.texi.


File: ,  Node: Top,  Next: chapter,  Up: (dir)

Contents at beginning
*********************

Content at the beginning.

* Menu:

* chapter::


File: ,  Node: chapter,  Prev: Top,  Up: Top

1 Chapter 1
***********

The chapter


Tag Table:
Node: Top58
Node: chapter202

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
