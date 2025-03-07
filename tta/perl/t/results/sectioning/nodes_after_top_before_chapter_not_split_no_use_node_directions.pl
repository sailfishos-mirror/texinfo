use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C4 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  *paragraph C1
   {Top node\\n}
  *1 @menu C4 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{second node}
    |normalized:{second-node}
     {second node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{third node}
    |normalized:{third-node}
     {third node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l6
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
 *2 @node C4 l8 {second node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E3|up->E0]
 |node_directions:D[next->E3|prev->E0|up->E0]
 |normalized:{second-node}
  *arguments_line C4
   *line_arg C1
    {second node}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{third node}
   |normalized:{third-node}
    {third node}
   *line_arg C1
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *paragraph C1
   {second node\\n}
  {empty_line:\\n}
 *3 @node C1 l12 {third node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[prev->E2|up->E0]
 |node_directions:D[prev->E2|up->E0]
 |normalized:{third-node}
  *arguments_line C4
   *line_arg C1
    {third node}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{second node}
   |normalized:{second-node}
    {second node}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *4 @chapter C1 l13 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E4]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
';


$result_texis{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = '@node Top
Top node
@menu
* second node::
* third node::
@end menu

@node second node, third node,Top,Top

second node

@node third node,,second node,Top
@chapter chapter
';


$result_texts{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = 'Top node
* second node::
* third node::


second node

1 chapter
*********
';

$result_errors{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = [];



$result_converted{'plaintext'}->{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = 'Top node

second node

1 chapter
*********

';


$result_converted{'html'}->{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
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
<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<p>Top node
</p>
<hr>
<h4 class="node" id="second-node"><span>second node<a class="copiable-link" href="#second-node"> &para;</a></span></h4>

<p>second node
</p>
<hr>
<div class="chapter-level-extent" id="third-node">
<h2 class="chapter" id="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'nodes_after_top_before_chapter_not_split_no_use_node_directions'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
