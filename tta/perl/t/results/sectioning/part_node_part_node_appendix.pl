use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'part_node_part_node_appendix'} = 'U0 unit[E1]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
Next: [U1]
NodeNext: [U1]
NodeForward: [U1]
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
 |section_directions:D[next->E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3|E6]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
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
    |node_content:{appendix node}
    |normalized:{appendix-node}
     {appendix node}
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
U1 unit[E5]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
FastForward: [U2]
FastBack: [U0]
NodeNext: [U2]
NodePrev: [U0]
NodeUp: [U0]
NodeForward: [U2]
NodeBack: [U0]
 *3 @part C2 l9 {Part 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E5]
 |part_following_node:[E4]
 |section_childs:EC[E5]
 |section_directions:D[next->E6|prev->E1]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part 1}
  {empty_line:\\n}
 *4 @node C1 l11 {chapter node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |menu_directions:D[next->E7|up->E0]
 |node_directions:D[next->E7|prev->E0|up->E0]
 |node_preceding_part:[E3]
 |normalized:{chapter-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter node}
 *5 @chapter C2 l12 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |associated_part:[E3]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E8|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
U2 unit[E8]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
FastBack: [U1]
NodePrev: [U1]
NodeUp: [U0]
NodeBack: [U1]
 *6 @part C2 l14 {Part Appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{2}
 |part_associated_section:[E8]
 |part_following_node:[E7]
 |section_childs:EC[E8]
 |section_directions:D[prev->E3]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part Appendix}
  {empty_line:\\n}
 *7 @node C1 l16 {appendix node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |associated_title_command:[E8]
 |is_target:{1}
 |menu_directions:D[prev->E4|up->E0]
 |node_directions:D[prev->E4|up->E0]
 |node_preceding_part:[E6]
 |normalized:{appendix-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendix node}
 *8 @appendix C1 l17 {Appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E7]
 |associated_node:[E7]
 |associated_part:[E6]
 |section_directions:D[up->E6]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E5|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Appendix}
';


$result_texis{'part_node_part_node_appendix'} = '@node Top
@top top

@menu
* chapter node::
* appendix node::
@end menu

@part Part 1

@node chapter node
@chapter chapter

@part Part Appendix

@node appendix node
@appendix Appendix
';


$result_texts{'part_node_part_node_appendix'} = 'top
***

* chapter node::
* appendix node::

Part 1
******

1 chapter
*********

Part Appendix
*************

Appendix A Appendix
*******************
';

$result_errors{'part_node_part_node_appendix'} = [];



$result_converted{'info'}->{'part_node_part_node_appendix'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter node,  Up: (dir)

top
***

* Menu:

* chapter node::
* appendix node::


File: ,  Node: chapter node,  Next: appendix node,  Prev: Top,  Up: Top

1 chapter
*********


File: ,  Node: appendix node,  Prev: chapter node,  Up: Top

Appendix A Appendix
*******************


Tag Table:
Node: Top27
Node: chapter node136
Node: appendix node232

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'part_node_part_node_appendix'} = '<!DOCTYPE html>
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
Next: <a href="#chapter-node" accesskey="n" rel="next">chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<hr>
</div>
<div class="part-level-extent" id="Part-1">
<div class="nav-panel">
<p>
Next: <a href="#appendix-node" accesskey="n" rel="next">Appendix</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h1 class="part"><span>Part 1<a class="copiable-link" href="#Part-1"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#chapter-node" accesskey="1">chapter</a></li>
</ul>
<div class="chapter-level-extent" id="chapter-node">
<h2 class="chapter" id="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>

<hr>
</div>
</div>
<div class="part-level-extent" id="Part-Appendix">
<div class="nav-panel">
<p>
Previous: <a href="#chapter-node" accesskey="p" rel="prev">chapter</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h1 class="part"><span>Part Appendix<a class="copiable-link" href="#Part-Appendix"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#appendix-node" accesskey="1">Appendix</a></li>
</ul>
<div class="appendix-level-extent" id="appendix-node">
<h2 class="appendix" id="Appendix"><span>Appendix A Appendix<a class="copiable-link" href="#Appendix"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'part_node_part_node_appendix'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter node</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>appendix node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<part spaces=" "><sectiontitle>Part 1</sectiontitle>

<node identifier="chapter-node" spaces=" "><nodename>chapter node</nodename><nodenext automatic="on">appendix node</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

</chapter>
</part>
<part spaces=" "><sectiontitle>Part Appendix</sectiontitle>

<node identifier="appendix-node" spaces=" "><nodename>appendix node</nodename><nodeprev automatic="on">chapter node</nodeprev><nodeup automatic="on">Top</nodeup></node>
<appendix spaces=" "><sectiontitle>Appendix</sectiontitle>
</appendix>
</part>
';

1;
