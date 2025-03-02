use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_before_top'} = '*document_root C5
 *before_node_section
 *0 @node C1 l1 {section node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menu_directions:D[up->E2]
 |node_directions:D[up->E2]
 |normalized:{section-node}
  *arguments_line C4
   *line_arg C1
    {section node}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *1 @section C2 l2 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_directions:D[next->E3]
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3]
  ||section_level:{1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    {section}
  {empty_line:\\n}
 *2 @node C1 l4 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |menus:EC[E4]
 |node_directions:D[next->E0]
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
 |associated_node:[E2]
 |section_directions:D[prev->E1]
 |section_level:{2}
 |toplevel_directions:D[prev->E1]
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
    |node_content:{section node}
    |normalized:{section-node}
     {section node}
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


$result_texis{'section_before_top'} = '@node section node,,,Top
@section section 

@node Top
@top top

@menu
* section node::
@end menu
';


$result_texts{'section_before_top'} = '1 section
=========

top
===

* section node::
';

$result_errors{'section_before_top'} = [
  {
    'error_line' => 'warning: lowering the section level of @top appearing after a lower element
',
    'line_nr' => 5,
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  }
];


$result_floats{'section_before_top'} = {};



$result_converted{'info'}->{'section_before_top'} = 'This is , produced from .


File: ,  Node: section node,  Up: Top

1 section
=========


File: ,  Node: Top,  Next: section node,  Up: (dir)

top
===

* Menu:

* section node::


Tag Table:
Node: section node27
Node: Top89

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'section_before_top'} = '<!DOCTYPE html>
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

<body lang="en">
<div class="section-level-extent" id="section-node">
<div class="nav-panel">
<p>
Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h3 class="section" id="section"><span>1 section<a class="copiable-link" href="#section"> &para;</a></span></h3>

<hr>
</div>
<div class="unnumberedsec-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#section-node" accesskey="n" rel="next">section</a> &nbsp; </p>
</div>
<h3 class="unnumberedsec top-level-set-unnumberedsec" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h3>

</div>



</body>
</html>
';


$result_converted{'xml'}->{'section_before_top'} = '<node identifier="section-node" spaces=" "><nodename>section node</nodename><nodenext></nodenext><nodeprev></nodeprev><nodeup>Top</nodeup></node>
<section spaces=" "><sectiontitle>section </sectiontitle>

</section>
<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">section node</nodenext></node>
<unnumberedsec originalcommand="top" spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>section node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>
</unnumberedsec>
';


$result_converted{'docbook'}->{'section_before_top'} = '<sect1 label="1" id="section-node">
<title>section</title>

</sect1>
';

1;
