use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_part_chapter_after_chapter'} = 'U0 unit[E1]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
Next: [U2]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
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
 *1 @top C4 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4]
 |section_directions:D[next->E6]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E6]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *2 @menu C4 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter node}
    |normalized:{chapter-node}
     {chapter node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{part chapter node}
    |normalized:{part-chapter-node}
     {part chapter node}
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
U1 unit[E4]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
FastForward: [U2]
FastBack: [U0]
Up: [U0]
NodeNext: [U2]
NodePrev: [U0]
NodeUp: [U0]
NodeForward: [U2]
NodeBack: [U0]
 *3 @node C2 l9 {chapter node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{chapter-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter node}
  {empty_line:\\n}
 *4 @chapter C2 l11 {chapter node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E7|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter node}
  {empty_line:\\n}
U2 unit[E7]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
FastBack: [U1]
NodePrev: [U1]
NodeUp: [U0]
NodeBack: [U1]
 *5 @node C1 l13 {part chapter node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E0]
 |node_directions:D[prev->E3|up->E0]
 |normalized:{part-chapter-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part chapter node}
 *6 @part C2 l14 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E7]
 |section_childs:EC[E7]
 |section_directions:D[prev->E1]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *7 @chapter C3 l16 {chapter with part node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |associated_part:[E6]
 |section_directions:D[up->E6]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter with part node}
  {empty_line:\\n}
  *@contents C1 l18
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'node_part_chapter_after_chapter'} = '@node Top
@top top

@menu
* chapter node::
* part chapter node::
@end menu

@node chapter node

@chapter chapter node

@node part chapter node
@part part

@chapter chapter with part node

@contents
';


$result_texts{'node_part_chapter_after_chapter'} = 'top
***

* chapter node::
* part chapter node::


1 chapter node
**************

part
****

2 chapter with part node
************************

';

$result_errors{'node_part_chapter_after_chapter'} = [
  {
    'error_line' => 'warning: @node precedes @part, but parts may not be associated with nodes
',
    'line_nr' => 14,
    'text' => '@node precedes @part, but parts may not be associated with nodes',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'node_part_chapter_after_chapter'} = 'top
***

1 chapter node
**************

2 chapter with part node
************************

top
1 chapter node
part
2 chapter with part node
';


$result_converted{'info'}->{'node_part_chapter_after_chapter'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter node,  Up: (dir)

top
***

* Menu:

* chapter node::
* part chapter node::


File: ,  Node: chapter node,  Next: part chapter node,  Prev: Top,  Up: Top

1 chapter node
**************


File: ,  Node: part chapter node,  Prev: chapter node,  Up: Top

2 chapter with part node
************************


Tag Table:
Node: Top27
Node: chapter node140
Node: part chapter node250

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'node_part_chapter_after_chapter'} = '<!DOCTYPE html>
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
Next: <a href="#chapter-node" accesskey="n" rel="next">chapter node</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">
<ul class="toc-numbered-mark">
<li>
<ul class="toc-numbered-mark">
  <li><a id="toc-chapter-node" href="#chapter-node">1 chapter node</a></li>
</ul></li>
<li><a id="toc-part" href="#part">part</a>
<ul class="toc-numbered-mark">
  <li><a id="toc-chapter-with-part-node" href="#part-chapter-node">2 chapter with part node</a></li>
</ul></li>

</ul>
</div>
</div>
<hr>
<div class="chapter-level-extent" id="chapter-node">
<div class="nav-panel">
<p>
Next: <a href="#part-chapter-node" accesskey="n" rel="next">chapter with part node</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>

<h2 class="chapter" id="chapter-node-1"><span>1 chapter node<a class="copiable-link" href="#chapter-node-1"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="part-chapter-node">
<div class="nav-panel">
<p>
Previous: <a href="#chapter-node" accesskey="p" rel="prev">chapter node</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
</div>
</div>
<div class="part-level-extent" id="part">
<h1 class="part"><span>part<a class="copiable-link" href="#part"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#part-chapter-node" accesskey="1">chapter with part node</a></li>
</ul>
<h2 class="chapter" id="chapter-with-part-node"><span>2 chapter with part node<a class="copiable-link" href="#chapter-with-part-node"> &para;</a></span></h2>

</div>



</body>
</html>
';


$result_converted{'xml'}->{'node_part_chapter_after_chapter'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter node</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>part chapter node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="chapter-node" spaces=" "><nodename>chapter node</nodename><nodenext automatic="on">part chapter node</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>

<chapter spaces=" "><sectiontitle>chapter node</sectiontitle>

</chapter>
<node identifier="part-chapter-node" spaces=" "><nodename>part chapter node</nodename><nodeprev automatic="on">chapter node</nodeprev><nodeup automatic="on">Top</nodeup></node>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter with part node</sectiontitle>

<contents></contents>
</chapter>
</part>
';


$result_converted{'docbook'}->{'node_part_chapter_after_chapter'} = '<chapter label="1" id="chapter-node">
<title>chapter node</title>


</chapter>
<part label="">
<title>part</title>
<chapter label="2" id="part-chapter-node">
<title>chapter with part node</title>


</chapter>
</part>
';

1;
