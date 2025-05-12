use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'ref_in_sectioning'} = '*document_root C20
 *before_node_section C2
  *@contents C1 l1
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
 *1 @top C4 l4 {for example @ref{node} (@pxref{node}) (@pxref{Top,,, file, Manual})}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |section_childs:EC[E4|E6]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C7
   |INFO
   |spaces_after_argument:
    |{\\n}
    {for example }
    *@ref C1 l4
     *brace_arg C1
     |EXTRA
     |node_content:{node}
     |normalized:{node}
      {node}
    { (}
    *@pxref C1 l4
     *brace_arg C1
     |EXTRA
     |node_content:{node}
     |normalized:{node}
      {node}
    {) (}
    *@pxref C5 l4
     *brace_arg C1
     |EXTRA
     |node_content:{Top}
      {Top}
     *brace_arg
     *brace_arg
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {file}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {Manual}
    {)}
  {empty_line:\\n}
  *2 @menu C4 l6
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node}
    |normalized:{node}
     {node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap}
    |normalized:{chap}
     {chap}
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
  {empty_line:\\n}
 *3 @node C1 l11 {node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |node_number:{2}
 |normalized:{node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node}
 *4 @chapter C2 l12 {@xref{node,,title, file name, Manual}.}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |section_directions:D[next->E6|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@xref C5 l12
     *brace_arg C1
     |EXTRA
     |node_content:{node}
      {node}
     *brace_arg
     *brace_arg C1
      {title}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {file name}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {Manual}
    {.}
  {empty_line:\\n}
 *5 @node C1 l14 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E6]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E0]
 |node_directions:D[prev->E3|up->E0]
 |node_number:{3}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *6 @chapter C2 l15 {@ref{node} just node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |section_childs:EC[E7|E8|E9|E10|E11|E12|E13|E14|E15|E16|E17|E18|E19]
 |section_directions:D[prev->E4|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C1 l15
     *brace_arg C1
     |EXTRA
     |node_content:{node}
     |normalized:{node}
      {node}
    { just node}
  {empty_line:\\n}
 *7 @section C2 l17 {for example @ref{node} (@pxref{node}) (@pxref{Top,,, file, Manual})}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E8|up->E6]
 |section_heading_number:{2.1}
 |section_level:{2}
 |section_number:{4}
  *arguments_line C1
   *line_arg C7
   |INFO
   |spaces_after_argument:
    |{\\n}
    {for example }
    *@ref C1 l17
     *brace_arg C1
     |EXTRA
     |node_content:{node}
     |normalized:{node}
      {node}
    { (}
    *@pxref C1 l17
     *brace_arg C1
     |EXTRA
     |node_content:{node}
     |normalized:{node}
      {node}
    {) (}
    *@pxref C5 l17
     *brace_arg C1
     |EXTRA
     |node_content:{Top}
      {Top}
     *brace_arg
     *brace_arg
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {file}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {Manual}
    {)}
  {empty_line:\\n}
 *8 @section C2 l19 {@ref{node, cross ref name}  node, crossref arg2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E9|prev->E7|up->E6]
 |section_heading_number:{2.2}
 |section_level:{2}
 |section_number:{5}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C2 l19
     *brace_arg C1
     |EXTRA
     |node_content:{node}
     |normalized:{node}
      {node}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {cross ref name}
    {  node, crossref arg2}
  {empty_line:\\n}
 *9 @section C2 l21 {@ref{@code{node},, @samp{title}}  code node, samptitle arg3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E10|prev->E8|up->E6]
 |section_heading_number:{2.3}
 |section_level:{2}
 |section_number:{6}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C3 l21
     *brace_arg C1
     |EXTRA
     |node_content:{@code{node}}
     |normalized:{node}
      *@code C1 l21
       *brace_container C1
        {node}
     *brace_arg
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      *@samp C1 l21
       *brace_container C1
        {title}
    {  code node, samptitle arg3}
  {empty_line:\\n}
 *10 @section C2 l23 {@ref{@code{node},,, file name} code node, file name}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E11|prev->E9|up->E6]
 |section_heading_number:{2.4}
 |section_level:{2}
 |section_number:{7}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C4 l23
     *brace_arg C1
     |EXTRA
     |node_content:{@code{node}}
      *@code C1 l23
       *brace_container C1
        {node}
     *brace_arg
     *brace_arg
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {file name}
    { code node, file name}
  {empty_line:\\n}
 *11 @section C2 l25 {@ref{node,,,, Manual } node and manual}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E12|prev->E10|up->E6]
 |section_heading_number:{2.5}
 |section_level:{2}
 |section_number:{8}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C5 l25
     *brace_arg C1
     |EXTRA
     |node_content:{node}
      {node}
     *brace_arg
     *brace_arg
     *brace_arg
     *brace_arg C1
     |INFO
     |spaces_after_argument:
      |{ }
     |spaces_before_argument:
      |{ }
      {Manual}
    { node and manual}
  {empty_line:\\n}
 *12 @section C2 l27 {@ref{Top,,,, Manual } Top and manual}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E13|prev->E11|up->E6]
 |section_heading_number:{2.6}
 |section_level:{2}
 |section_number:{9}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C5 l27
     *brace_arg C1
     |EXTRA
     |node_content:{Top}
      {Top}
     *brace_arg
     *brace_arg
     *brace_arg
     *brace_arg C1
     |INFO
     |spaces_after_argument:
      |{ }
     |spaces_before_argument:
      |{ }
      {Manual}
    { Top and manual}
  {empty_line:\\n}
 *13 @section C2 l29 {@ref{,,,, Manual } no node just manual}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E14|prev->E12|up->E6]
 |section_heading_number:{2.7}
 |section_level:{2}
 |section_number:{10}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C5 l29
     *brace_arg
     *brace_arg
     *brace_arg
     *brace_arg
     *brace_arg C1
     |INFO
     |spaces_after_argument:
      |{ }
     |spaces_before_argument:
      |{ }
      {Manual}
    { no node just manual}
  {empty_line:\\n}
 *14 @section C2 l31 {@ref{,,, file name} no node just file name}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E15|prev->E13|up->E6]
 |section_heading_number:{2.8}
 |section_level:{2}
 |section_number:{11}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C4 l31
     *brace_arg
     *brace_arg
     *brace_arg
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {file name}
    { no node just file name}
  {empty_line:\\n}
 *15 @section C2 l33 {@inforef{a, b, c} inforef a b c}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E16|prev->E14|up->E6]
 |section_heading_number:{2.9}
 |section_level:{2}
 |section_number:{12}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{ \\n}
    *@inforef C3 l33
     *brace_arg C1
     |EXTRA
     |node_content:{a}
      {a}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {b}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {c}
    { inforef a b c}
  {empty_line:\\n}
 *16 @section C2 l35 {(@pxref{ Top ,,, file name }) pxref Top file name, spaces}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E17|prev->E15|up->E6]
 |section_heading_number:{2.10}
 |section_level:{2}
 |section_number:{13}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {(}
    *@pxref C4 l35
     *brace_arg C1
     |INFO
     |spaces_after_argument:
      |{ }
     |spaces_before_argument:
      |{ }
     |EXTRA
     |node_content:{Top}
      {Top}
     *brace_arg
     *brace_arg
     *brace_arg C1
     |INFO
     |spaces_after_argument:
      |{ }
     |spaces_before_argument:
      |{ }
      {file name}
    {) pxref Top file name, spaces}
  {empty_line:\\n}
 *17 @section C2 l37 {(@pxref{,,, file name }) pxref file name only, spaces}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E18|prev->E16|up->E6]
 |section_heading_number:{2.11}
 |section_level:{2}
 |section_number:{14}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {(}
    *@pxref C4 l37
     *brace_arg
     *brace_arg
     *brace_arg
     *brace_arg C1
     |INFO
     |spaces_after_argument:
      |{ }
     |spaces_before_argument:
      |{ }
      {file name}
    {) pxref file name only, spaces}
  {empty_line:\\n}
 *18 @section C2 l39 {@xref{Top,,,filename}, xref Top filename only, no spaces}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E19|prev->E17|up->E6]
 |section_heading_number:{2.12}
 |section_level:{2}
 |section_number:{15}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@xref C4 l39
     *brace_arg C1
     |EXTRA
     |node_content:{Top}
      {Top}
     *brace_arg
     *brace_arg
     *brace_arg C1
      {filename}
    {, xref Top filename only, no spaces}
  {empty_line:\\n}
 *19 @section C2 l41 {@xref{,,,filename}. xref filename only, no spaces}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E18|up->E6]
 |section_heading_number:{2.13}
 |section_level:{2}
 |section_number:{16}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@xref C4 l41
     *brace_arg
     *brace_arg
     *brace_arg
     *brace_arg C1
      {filename}
    {. xref filename only, no spaces}
  {empty_line:\\n}
';


$result_texis{'ref_in_sectioning'} = '@contents

@node Top
@top for example @ref{node} (@pxref{node}) (@pxref{Top,,, file, Manual})

@menu
* node::
* chap::
@end menu

@node node
@chapter @xref{node,,title, file name, Manual}.

@node chap
@chapter @ref{node} just node

@section for example @ref{node} (@pxref{node}) (@pxref{Top,,, file, Manual})

@section @ref{node, cross ref name}  node, crossref arg2

@section @ref{@code{node},, @samp{title}}  code node, samptitle arg3

@section @ref{@code{node},,, file name} code node, file name

@section @ref{node,,,, Manual } node and manual

@section @ref{Top,,,, Manual } Top and manual

@section @ref{,,,, Manual } no node just manual

@section @ref{,,, file name} no node just file name

@section @inforef{a, b, c} inforef a b c 

@section (@pxref{ Top ,,, file name }) pxref Top file name, spaces

@section (@pxref{,,, file name }) pxref file name only, spaces

@section @xref{Top,,,filename}, xref Top filename only, no spaces

@section @xref{,,,filename}. xref filename only, no spaces

';


$result_texts{'ref_in_sectioning'} = '
for example node (node) (Top)
*****************************

* node::
* chap::

1 node.
*******

2 node just node
****************

2.1 for example node (node) (Top)
=================================

2.2 node  node, crossref arg2
=============================

2.3 node  code node, samptitle arg3
===================================

2.4 node code node, file name
=============================

2.5 node node and manual
========================

2.6 Top Top and manual
======================

2.7  no node just manual
========================

2.8  no node just file name
===========================

2.9 a inforef a b c
===================

2.10 (Top) pxref Top file name, spaces
======================================

2.11 () pxref file name only, spaces
====================================

2.12 Top, xref Top filename only, no spaces
===========================================

2.13 . xref filename only, no spaces
====================================

';

$result_errors{'ref_in_sectioning'} = [
  {
    'error_line' => 'warning: @inforef is obsolete
',
    'line_nr' => 33,
    'text' => '@inforef is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref to `@code{node}\', different from node name `node\'
',
    'line_nr' => 21,
    'text' => '@ref to `@code{node}\', different from node name `node\'',
    'type' => 'warning'
  }
];


$result_nodes_list{'ref_in_sectioning'} = '1|Top
 associated_section: for example @ref{node} (@pxref{node}) (@pxref{Top,,, file, Manual})
2|node
 associated_section: 1 @xref{node,,title, file name, Manual}.
3|chap
 associated_section: 2 @ref{node} just node
';

$result_sections_list{'ref_in_sectioning'} = '1|for example @ref{node} (@pxref{node}) (@pxref{Top,,, file, Manual})
 associated_node: Top
2|@xref{node,,title, file name, Manual}.
 associated_node: node
3|@ref{node} just node
 associated_node: chap
4|for example @ref{node} (@pxref{node}) (@pxref{Top,,, file, Manual})
5|@ref{node, cross ref name}  node, crossref arg2
6|@ref{@code{node},, @samp{title}}  code node, samptitle arg3
7|@ref{@code{node},,, file name} code node, file name
8|@ref{node,,,, Manual } node and manual
9|@ref{Top,,,, Manual } Top and manual
10|@ref{,,,, Manual } no node just manual
11|@ref{,,, file name} no node just file name
12|@inforef{a, b, c} inforef a b c
13|(@pxref{ Top ,,, file name }) pxref Top file name, spaces
14|(@pxref{,,, file name }) pxref file name only, spaces
15|@xref{Top,,,filename}, xref Top filename only, no spaces
16|@xref{,,,filename}. xref filename only, no spaces
';


$result_converted{'plaintext'}->{'ref_in_sectioning'} = 'for example node (see node) (see (file)Top)
1 See title: (file name)node.
2 node just node
  2.1 for example node (see node) (see (file)Top)
  2.2 cross ref name: node node, crossref arg2
  2.3 ‘title’: node code node, samptitle arg3
  2.4 (file name)node code node, file name
  2.5 node in ‘Manual’ node and manual
  2.6 Top in ‘Manual’ Top and manual
  2.7 ‘Manual’ no node just manual
  2.8 (file name) no node just file name
  2.9 See b: (c)a inforef a b c
  2.10 (see (file name)Top) pxref Top file name, spaces
  2.11 (see (file name)) pxref file name only, spaces
  2.12 See (filename)Top, xref Top filename only, no spaces
  2.13 See (filename). xref filename only, no spaces

for example node (see node) (see (file)Top)
*******************************************

1 See title: (file name)node.
*****************************

2 node just node
****************

2.1 for example node (see node) (see (file)Top)
===============================================

2.2 cross ref name: node node, crossref arg2
============================================

2.3 ‘title’: node code node, samptitle arg3
===========================================

2.4 (file name)node code node, file name
========================================

2.5 node in ‘Manual’ node and manual
====================================

2.6 Top in ‘Manual’ Top and manual
==================================

2.7 ‘Manual’ no node just manual
================================

2.8 (file name) no node just file name
======================================

2.9 See b: (c)a inforef a b c
=============================

2.10 (see (file name)Top) pxref Top file name, spaces
=====================================================

2.11 (see (file name)) pxref file name only, spaces
===================================================

2.12 See (filename)Top, xref Top filename only, no spaces
=========================================================

2.13 See (filename). xref filename only, no spaces
==================================================

';


$result_converted{'html_text'}->{'ref_in_sectioning'} = '
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="top" id="for-example-node-_0028node_0029-_0028Top_0029"><span>for example <a class="ref" href="#node">See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a> (see <a class="pxref" href="#node">See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a>) (see <cite class="cite"><a data-manual="file" href="file.html#Top">Manual</a></cite>)<a class="copiable-link" href="#for-example-node-_0028node_0029-_0028Top_0029"> &para;</a></span></h1>


<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-node_002e" href="#node">1 See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a></li>
  <li><a id="toc-node-just-node" href="#chap">2 <a class="ref" href="#node">See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a> just node</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-for-example-node-_0028node_0029-_0028Top_0029-1" href="#for-example-node-_0028node_0029-_0028Top_0029-1">2.1 for example <a class="ref" href="#node">See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a> (see <a class="pxref" href="#node">See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a>) (see <cite class="cite"><a data-manual="file" href="file.html#Top">Manual</a></cite>)</a></li>
    <li><a id="toc-node-node_002c-crossref-arg2" href="#node-node_002c-crossref-arg2">2.2 <a class="ref" href="#node">cross ref name</a>  node, crossref arg2</a></li>
    <li><a id="toc-node-code-node_002c-samptitle-arg3" href="#node-code-node_002c-samptitle-arg3">2.3 <a class="ref" href="#node">&lsquo;<samp class="samp">title</samp>&rsquo;</a>  code node, samptitle arg3</a></li>
    <li><a id="toc-node-code-node_002c-file-name" href="#node-code-node_002c-file-name">2.4 <a data-manual="file name" href="file%20name.html#node">(file name)<code class="code">node</code></a> code node, file name</a></li>
    <li><a id="toc-node-node-and-manual" href="#node-node-and-manual">2.5 &lsquo;node&rsquo; in <cite class="cite">Manual</cite> node and manual</a></li>
    <li><a id="toc-Top-Top-and-manual" href="#Top-Top-and-manual">2.6 <cite class="cite">Manual</cite> Top and manual</a></li>
    <li><a id="toc-Manual-no-node-just-manual" href="#Manual-no-node-just-manual">2.7 <cite class="cite">Manual</cite> no node just manual</a></li>
    <li><a id="toc-file-name-no-node-just-file-name" href="#file-name-no-node-just-file-name">2.8 <a data-manual="file name" href="file%20name.html#Top">(file name)</a> no node just file name</a></li>
    <li><a id="toc-a-inforef-a-b-c" href="#a-inforef-a-b-c">2.9 See <a data-manual="c" href="c.html#a">b</a> inforef a b c</a></li>
    <li><a id="toc-_0028Top_0029-pxref-Top-file-name_002c-spaces" href="#g_t_0028Top_0029-pxref-Top-file-name_002c-spaces">2.10 (see <a data-manual="file name" href="file%20name.html#Top">(file name)Top</a>) pxref Top file name, spaces</a></li>
    <li><a id="toc-_0028file-name_0029-pxref-file-name-only_002c-spaces" href="#g_t_0028file-name_0029-pxref-file-name-only_002c-spaces">2.11 (see <a data-manual="file name" href="file%20name.html#Top">(file name)</a>) pxref file name only, spaces</a></li>
    <li><a id="toc-Top_002c-xref-Top-filename-only_002c-no-spaces" href="#Top_002c-xref-Top-filename-only_002c-no-spaces">2.12 See <a data-manual="filename" href="filename.html#Top">(filename)Top</a>, xref Top filename only, no spaces</a></li>
    <li><a id="toc-filename_002e-xref-filename-only_002c-no-spaces" href="#filename_002e-xref-filename-only_002c-no-spaces">2.13 See <a data-manual="filename" href="filename.html#Top">(filename)</a>. xref filename only, no spaces</a></li>
  </ul></li>
</ul>
</div>
</div>
<hr>
<div class="chapter-level-extent" id="node">
<div class="nav-panel">
<p>
[<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="chapter" id="node_002e"><span>1 See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.<a class="copiable-link" href="#node_002e"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
[<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="chapter" id="node-just-node"><span>2 <a class="ref" href="#node">See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a> just node<a class="copiable-link" href="#node-just-node"> &para;</a></span></h2>

<ul class="mini-toc">
<li><a href="#for-example-node-_0028node_0029-_0028Top_0029-1" accesskey="1">for example <a class="ref" href="#node">See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a> (see <a class="pxref" href="#node">See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a>) (see <cite class="cite"><a data-manual="file" href="file.html#Top">Manual</a></cite>)</a></li>
<li><a href="#node-node_002c-crossref-arg2" accesskey="2"><a class="ref" href="#node">cross ref name</a>  node, crossref arg2</a></li>
<li><a href="#node-code-node_002c-samptitle-arg3" accesskey="3"><a class="ref" href="#node">&lsquo;<samp class="samp">title</samp>&rsquo;</a>  code node, samptitle arg3</a></li>
<li><a href="#node-code-node_002c-file-name" accesskey="4"><a data-manual="file name" href="file%20name.html#node">(file name)<code class="code">node</code></a> code node, file name</a></li>
<li><a href="#node-node-and-manual" accesskey="5">&lsquo;node&rsquo; in <cite class="cite">Manual</cite> node and manual</a></li>
<li><a href="#Top-Top-and-manual" accesskey="6"><cite class="cite">Manual</cite> Top and manual</a></li>
<li><a href="#Manual-no-node-just-manual" accesskey="7"><cite class="cite">Manual</cite> no node just manual</a></li>
<li><a href="#file-name-no-node-just-file-name" accesskey="8"><a data-manual="file name" href="file%20name.html#Top">(file name)</a> no node just file name</a></li>
<li><a href="#a-inforef-a-b-c" accesskey="9">See <a data-manual="c" href="c.html#a">b</a> inforef a b c</a></li>
<li><a href="#g_t_0028Top_0029-pxref-Top-file-name_002c-spaces">(see <a data-manual="file name" href="file%20name.html#Top">(file name)Top</a>) pxref Top file name, spaces</a></li>
<li><a href="#g_t_0028file-name_0029-pxref-file-name-only_002c-spaces">(see <a data-manual="file name" href="file%20name.html#Top">(file name)</a>) pxref file name only, spaces</a></li>
<li><a href="#Top_002c-xref-Top-filename-only_002c-no-spaces">See <a data-manual="filename" href="filename.html#Top">(filename)Top</a>, xref Top filename only, no spaces</a></li>
<li><a href="#filename_002e-xref-filename-only_002c-no-spaces">See <a data-manual="filename" href="filename.html#Top">(filename)</a>. xref filename only, no spaces</a></li>
</ul>
<div class="section-level-extent" id="for-example-node-_0028node_0029-_0028Top_0029-1">
<h3 class="section"><span>2.1 for example <a class="ref" href="#node">See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a> (see <a class="pxref" href="#node">See <a data-manual="file name" href="file%20name.html#node">title</a> in <cite class="cite">Manual</cite>.</a>) (see <cite class="cite"><a data-manual="file" href="file.html#Top">Manual</a></cite>)<a class="copiable-link" href="#for-example-node-_0028node_0029-_0028Top_0029-1"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="node-node_002c-crossref-arg2">
<h3 class="section"><span>2.2 <a class="ref" href="#node">cross ref name</a>  node, crossref arg2<a class="copiable-link" href="#node-node_002c-crossref-arg2"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="node-code-node_002c-samptitle-arg3">
<h3 class="section"><span>2.3 <a class="ref" href="#node">&lsquo;<samp class="samp">title</samp>&rsquo;</a>  code node, samptitle arg3<a class="copiable-link" href="#node-code-node_002c-samptitle-arg3"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="node-code-node_002c-file-name">
<h3 class="section"><span>2.4 <a data-manual="file name" href="file%20name.html#node">(file name)<code class="code">node</code></a> code node, file name<a class="copiable-link" href="#node-code-node_002c-file-name"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="node-node-and-manual">
<h3 class="section"><span>2.5 &lsquo;node&rsquo; in <cite class="cite">Manual</cite> node and manual<a class="copiable-link" href="#node-node-and-manual"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="Top-Top-and-manual">
<h3 class="section"><span>2.6 <cite class="cite">Manual</cite> Top and manual<a class="copiable-link" href="#Top-Top-and-manual"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="Manual-no-node-just-manual">
<h3 class="section"><span>2.7 <cite class="cite">Manual</cite> no node just manual<a class="copiable-link" href="#Manual-no-node-just-manual"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="file-name-no-node-just-file-name">
<h3 class="section"><span>2.8 <a data-manual="file name" href="file%20name.html#Top">(file name)</a> no node just file name<a class="copiable-link" href="#file-name-no-node-just-file-name"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="a-inforef-a-b-c">
<h3 class="section"><span>2.9 See <a data-manual="c" href="c.html#a">b</a> inforef a b c<a class="copiable-link" href="#a-inforef-a-b-c"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="g_t_0028Top_0029-pxref-Top-file-name_002c-spaces">
<h3 class="section"><span>2.10 (see <a data-manual="file name" href="file%20name.html#Top">(file name)Top</a>) pxref Top file name, spaces<a class="copiable-link" href="#g_t_0028Top_0029-pxref-Top-file-name_002c-spaces"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="g_t_0028file-name_0029-pxref-file-name-only_002c-spaces">
<h3 class="section"><span>2.11 (see <a data-manual="file name" href="file%20name.html#Top">(file name)</a>) pxref file name only, spaces<a class="copiable-link" href="#g_t_0028file-name_0029-pxref-file-name-only_002c-spaces"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="Top_002c-xref-Top-filename-only_002c-no-spaces">
<h3 class="section"><span>2.12 See <a data-manual="filename" href="filename.html#Top">(filename)Top</a>, xref Top filename only, no spaces<a class="copiable-link" href="#Top_002c-xref-Top-filename-only_002c-no-spaces"> &para;</a></span></h3>

</div>
<div class="section-level-extent" id="filename_002e-xref-filename-only_002c-no-spaces">
<h3 class="section"><span>2.13 See <a data-manual="filename" href="filename.html#Top">(filename)</a>. xref filename only, no spaces<a class="copiable-link" href="#filename_002e-xref-filename-only_002c-no-spaces"> &para;</a></span></h3>

</div>
</div>
</div>
';


$result_converted{'xml'}->{'ref_in_sectioning'} = '<contents></contents>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">node</nodenext></node>
<top spaces=" "><sectiontitle>for example <ref label="node"><xrefnodename>node</xrefnodename></ref> (<pxref label="node"><xrefnodename>node</xrefnodename></pxref>) (<pxref label="Top" manual="file"><xrefnodename>Top</xrefnodename><xrefinfofile spaces=" ">file</xrefinfofile><xrefprintedname spaces=" ">Manual</xrefprintedname></pxref>)</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="node" spaces=" "><nodename>node</nodename><nodenext automatic="on">chap</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle><xref label="node" manual="file name"><xrefnodename>node</xrefnodename><xrefprinteddesc>title</xrefprinteddesc><xrefinfofile spaces=" ">file name</xrefinfofile><xrefprintedname spaces=" ">Manual</xrefprintedname></xref>.</sectiontitle>

</chapter>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">node</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle><ref label="node"><xrefnodename>node</xrefnodename></ref> just node</sectiontitle>

<section spaces=" "><sectiontitle>for example <ref label="node"><xrefnodename>node</xrefnodename></ref> (<pxref label="node"><xrefnodename>node</xrefnodename></pxref>) (<pxref label="Top" manual="file"><xrefnodename>Top</xrefnodename><xrefinfofile spaces=" ">file</xrefinfofile><xrefprintedname spaces=" ">Manual</xrefprintedname></pxref>)</sectiontitle>

</section>
<section spaces=" "><sectiontitle><ref label="node"><xrefnodename>node</xrefnodename><xrefinfoname spaces=" ">cross ref name</xrefinfoname></ref>  node, crossref arg2</sectiontitle>

</section>
<section spaces=" "><sectiontitle><ref label="node"><xrefnodename><code>node</code></xrefnodename><xrefprinteddesc spaces=" "><samp>title</samp></xrefprinteddesc></ref>  code node, samptitle arg3</sectiontitle>

</section>
<section spaces=" "><sectiontitle><ref label="node" manual="file name"><xrefnodename><code>node</code></xrefnodename><xrefinfofile spaces=" ">file name</xrefinfofile></ref> code node, file name</sectiontitle>

</section>
<section spaces=" "><sectiontitle><ref label="node"><xrefnodename>node</xrefnodename><xrefprintedname spaces=" ">Manual </xrefprintedname></ref> node and manual</sectiontitle>

</section>
<section spaces=" "><sectiontitle><ref label="Top"><xrefnodename>Top</xrefnodename><xrefprintedname spaces=" ">Manual </xrefprintedname></ref> Top and manual</sectiontitle>

</section>
<section spaces=" "><sectiontitle><ref><xrefprintedname spaces=" ">Manual </xrefprintedname></ref> no node just manual</sectiontitle>

</section>
<section spaces=" "><sectiontitle><ref manual="file name"><xrefinfofile spaces=" ">file name</xrefinfofile></ref> no node just file name</sectiontitle>

</section>
<section spaces=" "><sectiontitle><inforef label="a" manual="c"><inforefnodename>a</inforefnodename><inforefrefname spaces=" ">b</inforefrefname><inforefinfoname spaces=" ">c</inforefinfoname></inforef> inforef a b c </sectiontitle>

</section>
<section spaces=" "><sectiontitle>(<pxref label="Top" manual="file name"><xrefnodename spaces=" ">Top </xrefnodename><xrefinfofile spaces=" ">file name </xrefinfofile></pxref>) pxref Top file name, spaces</sectiontitle>

</section>
<section spaces=" "><sectiontitle>(<pxref manual="file name"><xrefinfofile spaces=" ">file name </xrefinfofile></pxref>) pxref file name only, spaces</sectiontitle>

</section>
<section spaces=" "><sectiontitle><xref label="Top" manual="filename"><xrefnodename>Top</xrefnodename><xrefinfofile>filename</xrefinfofile></xref>, xref Top filename only, no spaces</sectiontitle>

</section>
<section spaces=" "><sectiontitle><xref manual="filename"><xrefinfofile>filename</xrefinfofile></xref>. xref filename only, no spaces</sectiontitle>

</section>
</chapter>
';


$result_converted{'docbook'}->{'ref_in_sectioning'} = '<chapter label="1" id="node">
<title>See section &#8220;title&#8221; in <citetitle>Manual</citetitle>.</title>

</chapter>
<chapter label="2" id="chap">
<title><link linkend="node">node</link> just node</title>

<sect1 label="2.1">
<title>for example <link linkend="node">node</link> (see <link linkend="node">node</link>) (see <citetitle>Manual</citetitle>)</title>

</sect1>
<sect1 label="2.2">
<title><link linkend="node">cross ref name</link>  node, crossref arg2</title>

</sect1>
<sect1 label="2.3">
<title><link linkend="node">&#8216;<literal>title</literal>&#8217;</link>  code node, samptitle arg3</title>

</sect1>
<sect1 label="2.4">
<title>&#8220;<literal>node</literal>&#8221; in <filename>file name</filename> code node, file name</title>

</sect1>
<sect1 label="2.5">
<title>&#8220;node&#8221; in <citetitle>Manual</citetitle> node and manual</title>

</sect1>
<sect1 label="2.6">
<title><citetitle>Manual</citetitle> Top and manual</title>

</sect1>
<sect1 label="2.7">
<title><citetitle>Manual</citetitle> no node just manual</title>

</sect1>
<sect1 label="2.8">
<title><filename>file name</filename> no node just file name</title>

</sect1>
<sect1 label="2.9">
<title>See section &#8220;b&#8221; in <filename>c</filename> inforef a b c</title>

</sect1>
<sect1 label="2.10">
<title>(see <filename>file name</filename>) pxref Top file name, spaces</title>

</sect1>
<sect1 label="2.11">
<title>(see <filename>file name</filename>) pxref file name only, spaces</title>

</sect1>
<sect1 label="2.12">
<title>See <filename>filename</filename>, xref Top filename only, no spaces</title>

</sect1>
<sect1 label="2.13">
<title>See <filename>filename</filename>. xref filename only, no spaces</title>

</sect1>
</chapter>
';


$result_converted{'latex_text'}->{'ref_in_sectioning'} = '
\\label{anchor:Top}%
\\chapter{{See Section ``title\'\' in \\textsl{Manual}.}}
\\label{anchor:node}%

\\chapter{{\\texorpdfstring{\\hyperref[anchor:node]{\\chaptername~\\ref*{anchor:node} [node], page~\\pageref*{anchor:node}}}{node} just node}}
\\label{anchor:chap}%

\\section{{for example \\texorpdfstring{\\hyperref[anchor:node]{\\chaptername~\\ref*{anchor:node} [node], page~\\pageref*{anchor:node}}}{node} (\\texorpdfstring{see \\hyperref[anchor:node]{\\chaptername~\\ref*{anchor:node} [node], page~\\pageref*{anchor:node}}}{see node}) (see Section ``Top\'\' in \\textsl{Manual})}}

\\section{{\\texorpdfstring{\\hyperref[anchor:node]{\\chaptername~\\ref*{anchor:node} [node], page~\\pageref*{anchor:node}}}{node}  node, crossref arg2}}

\\section{{\\texorpdfstring{\\hyperref[anchor:node]{\\chaptername~\\ref*{anchor:node} [`\\texttt{title}\'], page~\\pageref*{anchor:node}}}{`\\texttt{title}\'}  code node, samptitle arg3}}

\\section{{Section ``\\texttt{node}\'\' in \\texttt{file name} code node, file name}}

\\section{{Section ``node\'\' in \\textsl{Manual} node and manual}}

\\section{{Section ``Top\'\' in \\textsl{Manual} Top and manual}}

\\section{{\\textsl{Manual} no node just manual}}

\\section{{\\texttt{file name} no node just file name}}

\\section{{Section ``a\'\' in \\texttt{c} inforef a b c}}

\\section{{(see Section ``Top\'\' in \\texttt{file name}) pxref Top file name, spaces}}

\\section{{(see \\texttt{file name}) pxref file name only, spaces}}

\\section{{See Section ``Top\'\' in \\texttt{filename}, xref Top filename only, no spaces}}

\\section{{See \\texttt{filename}. xref filename only, no spaces}}

';


$result_converted{'info'}->{'ref_in_sectioning'} = 'This is , produced from .


File: ,  Node: Top,  Next: node,  Up: (dir)

for example *note node:: (*note node::) (*note (file)Top::)
***********************************************************

* Menu:

* node::
* chap::


File: ,  Node: node,  Next: chap,  Prev: Top,  Up: Top

1 *Note title: (file name)node.
*******************************


File: ,  Node: chap,  Prev: node,  Up: Top

2 *note node:: just node
************************

2.1 for example *note node:: (*note node::) (*note (file)Top::)
===============================================================

2.2 *note cross ref name: node. node, crossref arg2
===================================================

2.3 *note ‘title’: node. code node, samptitle arg3
==================================================

2.4 *note (file name)node:: code node, file name
================================================

2.5 *note ()node:: node and manual
==================================

2.6 *note ()Top:: Top and manual
================================

2.7 *note ()Top:: no node just manual
=====================================

2.8 *note (file name)Top:: no node just file name
=================================================

2.9 *note b: (c)a. inforef a b c
================================

2.10 (*note (file name)Top::) pxref Top file name, spaces
=========================================================

2.11 (*note (file name)Top::) pxref file name only, spaces
==========================================================

2.12 *Note (filename)Top::, xref Top filename only, no spaces
=============================================================

2.13 *Note (filename)Top::. xref filename only, no spaces
=========================================================


Tag Table:
Node: Top27
Node: node223
Node: chap346

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
