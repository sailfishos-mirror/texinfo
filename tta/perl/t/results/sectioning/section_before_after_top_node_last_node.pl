use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_before_after_top_node_last_node'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content
 *0 @unnumbered C2 l1 {before}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E2]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E2|E3]
  ||section_level:{0}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {before}
  {empty_line:\\n}
 *1 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E2]
 |is_target:{1}
 |node_directions:D[next->E4]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C2 l4 {top section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E1]
 |section_directions:D[next->E3|prev->E0]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E3|prev->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  {empty_line:\\n}
 *3 @chapter C4 l6 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E2]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E2|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C1
   {in chapter\\n}
  {empty_line:\\n}
 *4 @node C1 l10 {node after}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E1]
 |node_number:{2}
 |normalized:{node-after}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node after}
';


$result_texis{'section_before_after_top_node_last_node'} = '@unnumbered before

@node Top
@top top section

@chapter Chapter

in chapter

@node node after
';


$result_texts{'section_before_after_top_node_last_node'} = 'before
******

top section
***********

1 Chapter
*********

in chapter

';

$result_errors{'section_before_after_top_node_last_node'} = [
  {
    'error_line' => 'warning: lowering the section level of @top appearing after a lower element
',
    'line_nr' => 4,
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `node after\' not in menu
',
    'line_nr' => 10,
    'text' => 'node `node after\' not in menu',
    'type' => 'warning'
  }
];


$result_nodes_list{'section_before_after_top_node_last_node'} = '1|Top
 associated_section: top section
2|node after
';

$result_sections_list{'section_before_after_top_node_last_node'} = '1|before
2|top section
 associated_node: Top
3|Chapter
';


$result_converted{'info'}->{'section_before_after_top_node_last_node'} = 'This is , produced from section_before_after_top_node_last_node.texi.

before
******


File: ,  Node: Top,  Next: node after,  Up: (dir)

top section
***********

1 Chapter
*********

in chapter


File: ,  Node: node after,  Prev: Top


Tag Table:
Node: Top86
Node: node after197

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'section_before_after_top_node_last_node'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top section</title>

<meta name="description" content="top section">
<meta name="keywords" content="top section">
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
<div class="unnumbered-level-extent" id="before">
<div class="nav-panel">
<p>
Next: <a href="#node-after" accesskey="n" rel="next">node after</a> &nbsp; </p>
</div>
<h2 class="unnumbered"><span>before<a class="copiable-link" href="#before"> &para;</a></span></h2>

</div>
<div class="unnumbered-level-extent" id="Top">
<h2 class="unnumbered top-level-set-unnumbered" id="top-section"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h2>

</div>
<div class="chapter-level-extent" id="Chapter">
<h2 class="chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>in chapter
</p>
<hr>
<a class="node-id" id="node-after"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top section</a> &nbsp; </p>
</div>
<h4 class="node"><span>node after<a class="copiable-link" href="#node-after"> &para;</a></span></h4>
</div>



</body>
</html>
';


$result_converted{'docbook'}->{'section_before_after_top_node_last_node'} = '<chapter label="">
<title>before</title>

</chapter>
<anchor id="node-after"/>
';


$result_converted{'latex_text'}->{'section_before_after_top_node_last_node'} = '\\begin{document}
\\chapter*{{before}}

\\label{anchor:Top}%
\\label{anchor:node-after}%
';

1;
