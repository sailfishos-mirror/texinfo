use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'external_node_in_menu'} = '*document_root C7
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
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E6]
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
    {top}
  {empty_line:\\n}
  *2 @menu C5 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{nchapter1}
    |normalized:{nchapter1}
     {nchapter1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C4
    |EXTRA
    |manual_content:{aaa}
    |node_content:{other}
    |normalized:{other}
     {(}
     {aaa}
     {)}
     {other}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{nchapter2}
    |normalized:{nchapter2}
     {nchapter2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l8
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
 *3 @node C1 l10 {nchapter1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->MISSING: (menu_entry_node)[C4]|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{nchapter1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {nchapter1}
 *4 @chapter C2 l11 {chap1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[next->E6|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap1}
  {empty_line:\\n}
 *5 @node C1 l13 {nchapter2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
 |is_target:{1}
 |menu_directions:D[prev->MISSING: (menu_entry_node)[C4]|up->E0]
 |node_directions:D[prev->E3|up->E0]
 |normalized:{nchapter2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {nchapter2}
 *6 @chapter C1 l14 {chap2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |associated_node:[E5]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap2}
';


$result_texis{'external_node_in_menu'} = '@node Top
@top top

@menu
* nchapter1::
* (aaa)other::
* nchapter2::
@end menu

@node nchapter1
@chapter chap1

@node nchapter2
@chapter chap2
';


$result_texts{'external_node_in_menu'} = 'top
***

* nchapter1::
* (aaa)other::
* nchapter2::

1 chap1
*******

2 chap2
*******
';

$result_errors{'external_node_in_menu'} = [];



$result_converted{'info'}->{'external_node_in_menu'} = 'This is , produced from .


File: ,  Node: Top,  Next: nchapter1,  Up: (dir)

top
***

* Menu:

* nchapter1::
* (aaa)other::
* nchapter2::


File: ,  Node: nchapter1,  Next: nchapter2,  Prev: Top,  Up: Top

1 chap1
*******


File: ,  Node: nchapter2,  Prev: nchapter1,  Up: Top

2 chap2
*******


Tag Table:
Node: Top27
Node: nchapter1141
Node: nchapter2226

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'external_node_in_menu'} = '<!DOCTYPE html>
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
Next: <a href="#nchapter1" accesskey="n" rel="next">chap1</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<ul class="mini-toc">
<li><a href="#nchapter1" accesskey="1">chap1</a></li>
<li><a href="#nchapter2" accesskey="2">chap2</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="nchapter1">
<div class="nav-panel">
<p>
Next: <a href="#nchapter2" accesskey="n" rel="next">chap2</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chap1"><span>1 chap1<a class="copiable-link" href="#chap1"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="nchapter2">
<div class="nav-panel">
<p>
Previous: <a href="#nchapter1" accesskey="p" rel="prev">chap1</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chap2"><span>2 chap2<a class="copiable-link" href="#chap2"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';

1;
