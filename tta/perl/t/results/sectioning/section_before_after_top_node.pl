use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_before_after_top_node'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @unnumbered C2 l1 {before}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E2]
 |section_level:{1}
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
 |associated_section:[E2]
 |is_target:{1}
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
 |associated_node:[E1]
 |section_directions:D[next->E3|prev->E0]
 |section_level:{1}
 |toplevel_directions:D[next->E3|prev->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  {empty_line:\\n}
 *3 @chapter C3 l6 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E2]
 |section_level:{1}
 |section_number:{1}
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
';


$result_texis{'section_before_after_top_node'} = '@unnumbered before

@node Top
@top top section

@chapter Chapter

in chapter
';


$result_texts{'section_before_after_top_node'} = 'before
******

top section
***********

1 Chapter
*********

in chapter
';

$result_errors{'section_before_after_top_node'} = [
  {
    'error_line' => 'warning: lowering the section level of @top appearing after a lower element
',
    'line_nr' => 4,
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'section_before_after_top_node'} = 'This is , produced from section_before_after_top_node.texi.

before
******


File: ,  Node: Top,  Up: (dir)

top section
***********

1 Chapter
*********

in chapter


Tag Table:
Node: Top76

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'section_before_after_top_node'} = '<!DOCTYPE html>
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

<body lang="en">
<div class="unnumbered-level-extent" id="before">
<h2 class="unnumbered"><span>before<a class="copiable-link" href="#before"> &para;</a></span></h2>

</div>
<div class="unnumbered-level-extent" id="Top">
<h2 class="unnumbered top-level-set-unnumbered" id="top-section"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h2>

</div>
<div class="chapter-level-extent" id="Chapter">
<h2 class="chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>in chapter
</p></div>



</body>
</html>
';


$result_converted{'docbook'}->{'section_before_after_top_node'} = '<chapter label="">
<title>before</title>

</chapter>
';


$result_converted{'latex_text'}->{'section_before_after_top_node'} = '\\begin{document}
\\chapter*{{before}}

\\label{anchor:Top}%
';

1;
