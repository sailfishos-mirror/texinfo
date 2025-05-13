use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'part_node_before_top'} = 'U0 unit[E3]
UNIT_DIRECTIONS
This: [U0]
NodeNext: [U0]
NodeForward: [U0]
NodeBack: [U0]
 *before_node_section
 *0 @node C1 l1 {part node before top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E2]
 |node_directions:D[next->E2|up->E2]
 |node_number:{1}
 |normalized:{part-node-before-top}
  *arguments_line C4
   *line_arg C1
    {part node before top}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *1 @part C2 l2 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E3]
 |part_following_node:[E2]
 |section_directions:D[next->E3]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *2 @node C1 l4 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E4]
 |node_directions:D[next->E0]
 |node_number:{2}
 |node_preceding_part:[E1]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *3 @top C3 l5 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E1]
 |section_directions:D[prev->E1]
 |section_level:{0}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *4 @menu C3 l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{part node before top}
    |normalized:{part-node-before-top}
     {part node before top}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l9
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
';


$result_texis{'part_node_before_top'} = '@node part node before top, Top,,Top
@part part

@node Top
@top top

@menu
* part node before top::
@end menu
';


$result_texts{'part_node_before_top'} = 'part
****

top
***

* part node before top::
';

$result_errors{'part_node_before_top'} = [
  {
    'error_line' => 'warning: @node precedes @part, but parts may not be associated with nodes
',
    'line_nr' => 2,
    'text' => '@node precedes @part, but parts may not be associated with nodes',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @part should not be associated with @top
',
    'line_nr' => 2,
    'text' => '@part should not be associated with @top',
    'type' => 'warning'
  }
];


$result_nodes_list{'part_node_before_top'} = '1|part node before top
2|Top
 associated_section: top
 associated_title_command: top
';

$result_sections_list{'part_node_before_top'} = '1|part
2|top
 associated_anchor_command: Top
 associated_node: Top
';

$result_headings_list{'part_node_before_top'} = '';


$result_converted{'info'}->{'part_node_before_top'} = 'This is , produced from .


File: ,  Node: part node before top,  Next: Top,  Up: Top


File: ,  Node: Top,  Next: part node before top,  Up: (dir)

top
***

* Menu:

* part node before top::


Tag Table:
Node: part node before top27
Node: Top88

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'part_node_before_top'} = '<!DOCTYPE html>
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
<a class="node-id" id="part-node-before-top"></a><div class="nav-panel">
<p>
Next: <a href="#Top" accesskey="n" rel="next">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h4 class="node"><span>part node before top<a class="copiable-link" href="#part-node-before-top"> &para;</a></span></h4>
<hr>
<div class="part-level-extent" id="part">
<div class="nav-panel">
<p>
Next: <a href="#part-node-before-top" accesskey="n" rel="next">part node before top</a> &nbsp; </p>
</div>
<h1 class="part"><span>part<a class="copiable-link" href="#part"> &para;</a></span></h1>
<hr>

</div>
<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

</div>



</body>
</html>
';


$result_converted{'xml'}->{'part_node_before_top'} = '<node identifier="part-node-before-top" spaces=" "><nodename>part node before top</nodename><nodenext spaces=" ">Top</nodenext><nodeprev></nodeprev><nodeup>Top</nodeup></node>
<part spaces=" "><sectiontitle>part</sectiontitle>

</part>
<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">part node before top</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>part node before top</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>
</top>
';

1;
