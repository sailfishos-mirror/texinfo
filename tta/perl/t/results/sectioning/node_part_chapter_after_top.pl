use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_part_chapter_after_top'} = 'U0 unit{S:top}{n:Top}
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
Next: [U1]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section
 *@node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Top}
 *@top C4 l2 {top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {top}
  {empty_line:\\n}
  *@menu C3 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
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
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {menu}
  {empty_line:\\n}
U1 unit{S:1 chapter}{n:chapter node}
unit_directions:D[prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Back: [U0]
FastBack: [U0]
NodePrev: [U0]
NodeUp: [U0]
NodeBack: [U0]
 *@node C1 l8 {chapter node}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{chapter-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chapter node}
 *@part C2 l9 {part}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |global_command_number:{1}
 |section_level:{0}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {part}
  {empty_line:\\n}
 *@chapter C1 l11 {chapter}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument: \\n}
    {chapter}
';


$result_texis{'node_part_chapter_after_top'} = '@node Top
@top top

@menu
* chapter node::
@end menu

@node chapter node
@part part

@chapter chapter 
';


$result_texts{'node_part_chapter_after_top'} = 'top
***

* chapter node::

part
****

1 chapter
*********
';

$result_errors{'node_part_chapter_after_top'} = [
  {
    'error_line' => 'warning: @node precedes @part, but parts may not be associated with nodes
',
    'line_nr' => 9,
    'text' => '@node precedes @part, but parts may not be associated with nodes',
    'type' => 'warning'
  }
];


$result_nodes_list{'node_part_chapter_after_top'} = '1|Top
 associated_section: top
 associated_title_command: top
 menus:
  chapter node
 node_directions:
  next->chapter node
2|chapter node
 associated_section: 1 chapter
 associated_title_command: 1 chapter
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'node_part_chapter_after_top'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
 section_directions:
  next->part
 toplevel_directions:
  next->chapter
2|part
 part_associated_section: 1 chapter
 section_directions:
  prev->top
 section_children:
  1|chapter
3|chapter
 associated_anchor_command: chapter node
 associated_node: chapter node
 associated_part: part
 section_directions:
  up->part
 toplevel_directions:
  prev->top
  up->top
';

$result_sectioning_root{'node_part_chapter_after_top'} = 'level: -1
list:
 1|top
 2|part
';

$result_headings_list{'node_part_chapter_after_top'} = '';


$result_converted{'info'}->{'node_part_chapter_after_top'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter node,  Up: (dir)

top
***

* Menu:

* chapter node::


File: ,  Node: chapter node,  Prev: Top,  Up: Top

1 chapter
*********


Tag Table:
Node: Top27
Node: chapter node118

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'node_part_chapter_after_top'} = '<!DOCTYPE html>
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
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
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
<div class="chapter-level-extent" id="chapter-node">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
</div>
</div>
<div class="part-level-extent" id="part">
<h1 class="part"><span>part<a class="copiable-link" href="#part"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#chapter-node" accesskey="1">chapter</a></li>
</ul>
<h2 class="chapter" id="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'node_part_chapter_after_top'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter node</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="chapter-node" spaces=" "><nodename>chapter node</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter </sectiontitle>
</chapter>
</part>
';

1;
