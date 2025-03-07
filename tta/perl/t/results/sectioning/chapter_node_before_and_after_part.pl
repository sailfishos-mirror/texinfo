use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'chapter_node_before_and_after_part'} = '*document_root C6
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C1 l2 {Top}
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
 *1 @chapter C4 l3 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  *2 @menu C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{after}
    |normalized:{after}
     {after}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l7
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
 *3 @part C2 l9 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E5]
 |part_following_node:[E4]
 |section_childs:EC[E5]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *4 @node C1 l11 {after}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |node_preceding_part:[E3]
 |normalized:{after}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {after}
 *5 @chapter C3 l12 {chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |associated_part:[E3]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2}
  {empty_line:\\n}
  *@contents C1 l14
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'chapter_node_before_and_after_part'} = '
@node Top
@chapter chapter

@menu
* after::
@end menu

@part part

@node after
@chapter chapter 2

@contents
';


$result_texts{'chapter_node_before_and_after_part'} = '
1 chapter
*********

* after::

part
****

2 chapter 2
***********

';

$result_errors{'chapter_node_before_and_after_part'} = [
  {
    'error_line' => 'warning: node `Top\' is up for `after\' in menu but not in sectioning
',
    'line_nr' => 11,
    'text' => 'node `Top\' is up for `after\' in menu but not in sectioning',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'chapter_node_before_and_after_part'} = '1 chapter
*********

2 chapter 2
***********

1 chapter
part
2 chapter 2
';


$result_converted{'info'}->{'chapter_node_before_and_after_part'} = 'This is , produced from .


File: ,  Node: Top,  Next: after,  Up: (dir)

1 chapter
*********

* Menu:

* after::


File: ,  Node: after,  Prev: Top,  Up: Top

2 chapter 2
***********


Tag Table:
Node: Top27
Node: after116

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'chapter_node_before_and_after_part'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
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

<div class="chapter-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#after" accesskey="n" rel="next">chapter 2</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="chapter" id="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>


<hr>
</div>
<div class="part-level-extent" id="part">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">chapter</a>, Up: <a href="#Top" accesskey="u" rel="up">chapter</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="part"><span>part<a class="copiable-link" href="#part"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#after" accesskey="1">chapter 2</a></li>
</ul>
<div class="chapter-level-extent" id="after">
<h2 class="chapter" id="chapter-2"><span>2 chapter 2<a class="copiable-link" href="#chapter-2"> &para;</a></span></h2>

<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">
<ul class="toc-numbered-mark">
  <li><a id="toc-chapter" href="#Top">1 chapter</a></li>
<li><a id="toc-part" href="#part">part</a>
<ul class="toc-numbered-mark">
  <li><a id="toc-chapter-2" href="#after">2 chapter 2</a></li>
</ul></li>

</ul>
</div>
</div>
</div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'chapter_node_before_and_after_part'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'chapter_node_before_and_after_part'} = '
<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">after</nodenext></node>
<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>after</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</chapter>
<part spaces=" "><sectiontitle>part</sectiontitle>

<node identifier="after" spaces=" "><nodename>after</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter 2</sectiontitle>

<contents></contents>
</chapter>
</part>
';

1;
