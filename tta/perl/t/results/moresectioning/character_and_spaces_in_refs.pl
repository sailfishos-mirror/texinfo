use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'character_and_spaces_in_refs'} = '*document_root C11
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 character_and_spaces_in_refs_text.texi:l1 {Top}
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
 *1 @top C4 character_and_spaces_in_refs_text.texi:l2 {Test refs}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E8]
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
    {Test refs}
  {empty_line:\\n}
  *2 @menu C4 character_and_spaces_in_refs_text.texi:l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 character_and_spaces_in_refs_text.texi:l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node to avoid DocBook or LaTeX ignored}
    |normalized:{node-to-avoid-DocBook-or-LaTeX-ignored}
     {node to avoid DocBook or LaTeX ignored}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 character_and_spaces_in_refs_text.texi:l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{other nodes}
    |normalized:{other-nodes}
     {other nodes}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 character_and_spaces_in_refs_text.texi:l7
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
 *3 @node C1 character_and_spaces_in_refs_text.texi:l9 {node to avoid DocBook or LaTeX ignored}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E7|up->E0]
 |node_directions:D[next->E7|prev->E0|up->E0]
 |normalized:{node-to-avoid-DocBook-or-LaTeX-ignored}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node to avoid DocBook or LaTeX ignored}
 *4 @chapter C10 character_and_spaces_in_refs_text.texi:l10 {first chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[next->E8|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E8|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first chapter}
  {empty_line:\\n}
  *5 @subheading C1 character_and_spaces_in_refs_text.texi:l12
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Testing distant nodes}
  {empty_line:\\n}
  *paragraph C10
   *@ref C4 character_and_spaces_in_refs_text.texi:l14
    *brace_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
    |spaces_before_argument:
     |{ }
    |EXTRA
    |node_content:{a  node}
     {a  node}
    *brace_arg
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {manual}
   {\\n}
   *@ref C4 character_and_spaces_in_refs_text.texi:l15
    *brace_arg C1
    |EXTRA
    |node_content:{:}
     {:}
    *brace_arg
    *brace_arg
    *brace_arg C1
     {manual}
   {\\n}
   *@ref C4 character_and_spaces_in_refs_text.texi:l16
    *brace_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
    |spaces_before_argument:
     |{ }
    |EXTRA
    |node_content:{top}
     {top}
    *brace_arg
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {manual}
   {\\n}
   *@ref C1 character_and_spaces_in_refs_text.texi:l17
    *brace_arg C4
    |EXTRA
    |manual_content:{texinfo}
    |node_content:{Cross References}
     {(}
     {texinfo}
     {)}
     {Cross References}
   {\\n}
   *@ref C4 character_and_spaces_in_refs_text.texi:l18
    *brace_arg C1
    |EXTRA
    |node_content:{node}
     {node}
    *brace_arg
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {../manual/doc}
   {\\n}
  {empty_line:\\n}
  *6 @subheading C1 character_and_spaces_in_refs_text.texi:l20
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Testing local nodes}
  {empty_line:\\n}
  *paragraph C8
   *@ref C1 character_and_spaces_in_refs_text.texi:l22
    *brace_arg C1
    |EXTRA
    |node_content:{!_"#$%&\'()*+-.}
    |normalized:{_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}
     {!_"#$%&\'()*+-.}
   {\\n}
   *@ref C1 character_and_spaces_in_refs_text.texi:l23
    *brace_arg C1
    |EXTRA
    |node_content:{/;<=>?[\\]^_`|~}
    |normalized:{_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}
     {/;<=>?[\\]^_`|~}
   {\\n}
   *@ref C1 character_and_spaces_in_refs_text.texi:l24
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |node_content:{Top}
    |normalized:{Top}
     {Top}
   {\\n}
   *@ref C1 character_and_spaces_in_refs_text.texi:l25
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{  }
    |EXTRA
    |node_content:{local   node}
    |normalized:{local-node}
     {local   node}
   {\\n}
  {empty_line:\\n}
 *7 @node C1 character_and_spaces_in_refs_text.texi:l27 {other nodes}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |associated_title_command:[E8]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E0]
 |menus:EC[E9]
 |node_directions:D[next->E10|prev->E3|up->E0]
 |normalized:{other-nodes}
  *arguments_line C4
   *line_arg C1
    {other nodes}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{!_"#$%&\'()*+-.}
   |normalized:{_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}
    {!_"#$%&\'()*+-.}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{node to avoid DocBook or LaTeX ignored}
   |normalized:{node-to-avoid-DocBook-or-LaTeX-ignored}
    {node to avoid DocBook or LaTeX ignored}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *8 @chapter C4 character_and_spaces_in_refs_text.texi:l28 {Chapter with nodes}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E7]
 |associated_node:[E7]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter with nodes}
  {empty_line:\\n}
  *9 @menu C5 character_and_spaces_in_refs_text.texi:l30
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 character_and_spaces_in_refs_text.texi:l31
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{!_"#$%&\'()*+-.}
    |normalized:{_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}
     {!_"#$%&\'()*+-.}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 character_and_spaces_in_refs_text.texi:l32
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{/;<=>?[\\]^_`|~}
    |normalized:{_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}
     {/;<=>?[\\]^_`|~}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 character_and_spaces_in_refs_text.texi:l33
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{local node}
    |normalized:{local-node}
     {local node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 character_and_spaces_in_refs_text.texi:l34
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
 *10 @node C2 character_and_spaces_in_refs_text.texi:l36 {!_"#$%&\'()*+-.}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E11|up->E7]
 |node_directions:D[next->E11|prev->E7|up->E7]
 |normalized:{_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}
  *arguments_line C4
   *line_arg C1
    {!_"#$%&\'()*+-.}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{/;<=>?[\\]^_`|~}
   |normalized:{_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}
    {/;<=>?[\\]^_`|~}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{other nodes}
   |normalized:{other-nodes}
    {other nodes}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{other nodes}
   |normalized:{other-nodes}
    {other nodes}
  {empty_line:\\n}
 *11 @node C2 character_and_spaces_in_refs_text.texi:l38 {/;<=>?[\\]^_`|~}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E12|prev->E10|up->E7]
 |node_directions:D[next->E12|prev->E10|up->E7]
 |normalized:{_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}
  *arguments_line C4
   *line_arg C1
    {/;<=>?[\\]^_`|~}
   *line_arg C1
   |EXTRA
   |node_content:{local   node}
   |normalized:{local-node}
    {local   node}
   *line_arg C1
   |EXTRA
   |node_content:{!_"#$%&\'()*+-.}
   |normalized:{_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}
    {!_"#$%&\'()*+-.}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{other nodes}
   |normalized:{other-nodes}
    {other nodes}
  {empty_line:\\n}
 *12 @node C2 character_and_spaces_in_refs_text.texi:l40 {local   node}
 |INFO
 |spaces_before_argument:
  |{  }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E11|up->E7]
 |node_directions:D[prev->E11|up->E7]
 |normalized:{local-node}
  *arguments_line C4
   *line_arg C1
    {local   node}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{/;<=>?[\\]^_`|~}
   |normalized:{_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}
    {/;<=>?[\\]^_`|~}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{other nodes}
   |normalized:{other-nodes}
    {other nodes}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'character_and_spaces_in_refs'} = '@node Top
@top Test refs

@menu
* node to avoid DocBook or LaTeX ignored::
* other nodes::
@end menu

@node node to avoid DocBook or LaTeX ignored
@chapter first chapter

@subheading Testing distant nodes

@ref{ a  node ,,, manual}
@ref{:,,,manual}
@ref{ top ,,, manual}
@ref{(texinfo)Cross References}
@ref{node,,, ../manual/doc}

@subheading Testing local nodes

@ref{!_"#$%&\'()*+-.}
@ref{/;<=>?[\\]^_`|~}
@ref{ Top}
@ref{  local   node}

@node other nodes, !_"#$%&\'()*+-., node to avoid DocBook or LaTeX ignored, Top
@chapter Chapter with nodes

@menu
* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::
@end menu

@node !_"#$%&\'()*+-., /;<=>?[\\]^_`|~, other nodes, other nodes

@node /;<=>?[\\]^_`|~,local   node,!_"#$%&\'()*+-., other nodes

@node  local   node,,/;<=>?[\\]^_`|~,other nodes

@bye
';


$result_texts{'character_and_spaces_in_refs'} = 'Test refs
*********

* node to avoid DocBook or LaTeX ignored::
* other nodes::

1 first chapter
***************

Testing distant nodes
---------------------

a  node
:
top
(texinfo)Cross References
node

Testing local nodes
-------------------

!_"#$%&\'()*+-.
/;<=>?[\\]^_`|~
Top
local   node

2 Chapter with nodes
********************

* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::




';

$result_errors{'character_and_spaces_in_refs'} = [];



$result_converted{'info'}->{'character_and_spaces_in_refs'} = 'This is , produced from character_and_spaces_in_refs_text.texi.


File: ,  Node: Top,  Next: node to avoid DocBook or LaTeX ignored,  Up: (dir)

Test refs
*********

* Menu:

* node to avoid DocBook or LaTeX ignored::
* other nodes::


File: ,  Node: node to avoid DocBook or LaTeX ignored,  Next: other nodes,  Prev: Top,  Up: Top

1 first chapter
***************

Testing distant nodes
---------------------

*note (manual)a node:: *note (manual)::: *note (manual)top:: *note
(texinfo)Cross References:: *note (../manual/doc)node::

Testing local nodes
-------------------

*note !_"#$%&\'()*+-.:: *note /;<=>?[\\]^_`|~:: *note Top:: *note local
node::


File: ,  Node: other nodes,  Next: !_"#$%&\'()*+-.,  Prev: node to avoid DocBook or LaTeX ignored,  Up: Top

2 Chapter with nodes
********************

* Menu:

* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::


File: ,  Node: !_"#$%&\'()*+-.,  Next: /;<=>?[\\]^_`|~,  Prev: other nodes,  Up: other nodes


File: ,  Node: /;<=>?[\\]^_`|~,  Next: local node,  Prev: !_"#$%&\'()*+-.,  Up: other nodes


File: ,  Node: local node,  Prev: /;<=>?[\\]^_`|~,  Up: other nodes


Tag Table:
Node: Top65
Node: node to avoid DocBook or LaTeX ignored236
Node: other nodes658
Node: !_"#$%&\'()*+-.874
Node: /;<=>?[\\]^_`|~968
Node: local node1061

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'character_and_spaces_in_refs'} = [
  {
    'error_line' => 'warning: @ref node name should not contain `:\'
',
    'file_name' => 'character_and_spaces_in_refs_text.texi',
    'line_nr' => 15,
    'text' => '@ref node name should not contain `:\'',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'character_and_spaces_in_refs'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Test refs</title>

<meta name="description" content="Test refs">
<meta name="keywords" content="Test refs">
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
Next: <a href="#node-to-avoid-DocBook-or-LaTeX-ignored" accesskey="n" rel="next">first chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="Test-refs"><span>Test refs<a class="copiable-link" href="#Test-refs"> &para;</a></span></h1>


<ul class="mini-toc">
<li><a href="#node-to-avoid-DocBook-or-LaTeX-ignored" accesskey="1">first chapter</a></li>
<li><a href="#other-nodes" accesskey="2">Chapter with nodes</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="node-to-avoid-DocBook-or-LaTeX-ignored">
<div class="nav-panel">
<p>
Next: <a href="#other-nodes" accesskey="n" rel="next">Chapter with nodes</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Test refs</a>, Up: <a href="#Top" accesskey="u" rel="up">Test refs</a> &nbsp; </p>
</div>
<h2 class="chapter" id="first-chapter"><span>1 first chapter<a class="copiable-link" href="#first-chapter"> &para;</a></span></h2>

<h4 class="subheading" id="Testing-distant-nodes"><span>Testing distant nodes<a class="copiable-link" href="#Testing-distant-nodes"> &para;</a></span></h4>

<p><a data-manual="manual" href="manual.html#a-node">(manual)a  node</a>
<a data-manual="manual" href="manual.html#g_t_003a">(manual):</a>
<a data-manual="manual" href="manual.html#Top">(manual)top</a>
<a data-manual="texinfo" href="texinfo.html#Cross-References">(texinfo)Cross References</a>
<a data-manual="../manual/doc" href="doc.html#node">(../manual/doc)node</a>
</p>
<h4 class="subheading" id="Testing-local-nodes"><span>Testing local nodes<a class="copiable-link" href="#Testing-local-nodes"> &para;</a></span></h4>

<p><a class="ref" href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e">!_&quot;#$%&amp;\'()*+-.</a>
<a class="ref" href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e">/;&lt;=&gt;?[\\]^_`|~</a>
<a class="ref" href="#Top">Test refs</a>
<a class="ref" href="#local-node">local   node</a>
</p>
<hr>
</div>
<div class="chapter-level-extent" id="other-nodes">
<div class="nav-panel">
<p>
Next: <a href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e" accesskey="n" rel="next">!_&quot;#$%&amp;\'()*+-.</a>, Previous: <a href="#node-to-avoid-DocBook-or-LaTeX-ignored" accesskey="p" rel="prev">first chapter</a>, Up: <a href="#Top" accesskey="u" rel="up">Test refs</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter-with-nodes"><span>2 Chapter with nodes<a class="copiable-link" href="#Chapter-with-nodes"> &para;</a></span></h2>


<hr>
<a class="node-id" id="g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e"></a><div class="nav-panel">
<p>
Next: <a href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e" accesskey="n" rel="next">/;&lt;=&gt;?[\\]^_`|~</a>, Previous: <a href="#other-nodes" accesskey="p" rel="prev">Chapter with nodes</a>, Up: <a href="#other-nodes" accesskey="u" rel="up">Chapter with nodes</a> &nbsp; </p>
</div>
<h4 class="node"><span>!_&quot;#$%&amp;\'()*+-.<a class="copiable-link" href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e"> &para;</a></span></h4>

<hr>
<a class="node-id" id="g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e"></a><div class="nav-panel">
<p>
Next: <a href="#local-node" accesskey="n" rel="next">local   node</a>, Previous: <a href="#g_t_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e" accesskey="p" rel="prev">!_&quot;#$%&amp;\'()*+-.</a>, Up: <a href="#other-nodes" accesskey="u" rel="up">Chapter with nodes</a> &nbsp; </p>
</div>
<h4 class="node"><span>/;&lt;=&gt;?[\\]^_`|~<a class="copiable-link" href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e"> &para;</a></span></h4>

<hr>
<a class="node-id" id="local-node"></a><div class="nav-panel">
<p>
Previous: <a href="#g_t_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e" accesskey="p" rel="prev">/;&lt;=&gt;?[\\]^_`|~</a>, Up: <a href="#other-nodes" accesskey="u" rel="up">Chapter with nodes</a> &nbsp; </p>
</div>
<h4 class="node"><span>local   node<a class="copiable-link" href="#local-node"> &para;</a></span></h4>

</div>
</div>



</body>
</html>
';


$result_converted{'docbook'}->{'character_and_spaces_in_refs'} = '<chapter label="1" id="node-to-avoid-DocBook-or-LaTeX-ignored">
<title>first chapter</title>

<bridgehead renderas="sect2">Testing distant nodes</bridgehead>

<para>&#8220;a  node&#8221; in <filename>manual</filename>
&#8220;:&#8221; in <filename>manual</filename>
&#8220;top&#8221; in <filename>manual</filename>
<link>(texinfo)Cross References</link>
&#8220;node&#8221; in <filename>../manual/doc</filename>
</para>
<bridgehead renderas="sect2">Testing local nodes</bridgehead>

<para><link linkend="_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e">!_&quot;#$%&amp;&#8217;()*+-.</link>
<link linkend="_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e">/;&lt;=&gt;?[\\]^_&#8216;|~</link>
<link linkend="Top">Top</link>
<link linkend="local-node">local   node</link>
</para>
</chapter>
<chapter label="2" id="other-nodes">
<title>Chapter with nodes</title>


</chapter>
<anchor id="_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e"/>

<anchor id="_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e"/>

<anchor id="local-node"/>

';


$result_converted{'latex_text'}->{'character_and_spaces_in_refs'} = '\\begin{document}
\\label{anchor:Top}%
\\chapter{{first chapter}}
\\label{anchor:node-to-avoid-DocBook-or-LaTeX-ignored}%

\\subsection*{{Testing distant nodes}}

Section ``a  node\'\' in \\texttt{manual}
Section ``:\'\' in \\texttt{manual}
Section ``top\'\' in \\texttt{manual}
(texinfo)Cross References
Section ``node\'\' in \\texttt{../manual/doc}

\\subsection*{{Testing local nodes}}

\\hyperref[anchor:_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e]{\\chaptername~\\ref*{anchor:_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e} [!\\_"\\#\\$\\%\\&\'()*+-.], page~\\pageref*{anchor:_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}}
\\hyperref[anchor:_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e]{\\chaptername~\\ref*{anchor:_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e} [/;<=>?[\\textbackslash{}]\\^{}\\_`|\\~{}], page~\\pageref*{anchor:_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}}
\\hyperref[anchor:Top]{\\chaptername~\\ref*{anchor:Top} [Top], page~\\pageref*{anchor:Top}}
\\hyperref[anchor:local-node]{\\chaptername~\\ref*{anchor:local-node} [local   node], page~\\pageref*{anchor:local-node}}

\\chapter{{Chapter with nodes}}
\\label{anchor:other-nodes}%


\\label{anchor:_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}%

\\label{anchor:_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}%

\\label{anchor:local-node}%

';

1;
