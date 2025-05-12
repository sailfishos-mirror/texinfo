use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_node_no_menu_direction'} = '*document_root C3
 *before_node_section
 *0 @node C4 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E2|up->E0]
 |menus:EC[E1]
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
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
    |node_content:{chap node}
    |normalized:{chap-node}
     {chap node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{TOP}
    |normalized:{Top}
     {TOP}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {myself\\n}
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
 *2 @node C1 l8 {chap node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E0|up->E0]
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chap-node}
  *arguments_line C4
   *line_arg C1
    {chap node}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{top}
   |normalized:{Top}
    {top}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{TOP}
   |normalized:{Top}
    {TOP}
';


$result_texis{'top_node_no_menu_direction'} = '@node Top

@menu
* chap node::
* TOP:: myself
@end menu

@node chap node,,top,TOP
';


$result_texts{'top_node_no_menu_direction'} = '
* chap node::
* TOP:: myself

';

$result_errors{'top_node_no_menu_direction'} = [
  {
    'error_line' => 'warning: Prev pointer `top\' (for node `chap node\') different from node name `Top\'
',
    'line_nr' => 8,
    'text' => 'Prev pointer `top\' (for node `chap node\') different from node name `Top\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: Up pointer `TOP\' (for node `chap node\') different from node name `Top\'
',
    'line_nr' => 8,
    'text' => 'Up pointer `TOP\' (for node `chap node\') different from node name `Top\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `TOP\' different from node name `Top\'
',
    'line_nr' => 5,
    'text' => '@menu entry node name `TOP\' different from node name `Top\'',
    'type' => 'warning'
  }
];


$result_nodes_list{'top_node_no_menu_direction'} = '1|Top
2|chap node
';

$result_sections_list{'top_node_no_menu_direction'} = '';


$result_converted{'info'}->{'top_node_no_menu_direction'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap node,  Up: (dir)

* Menu:

* chap node::
* TOP:: myself


File: ,  Node: chap node,  Prev: Top,  Up: Top


Tag Table:
Node: Top27
Node: chap node118

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'top_node_no_menu_direction'} = '<!DOCTYPE html>
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

<body lang="">
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap-node" accesskey="n" rel="next">chap node</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>


<hr>
<a class="node-id" id="chap-node"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Top</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap node<a class="copiable-link" href="#chap-node"> &para;</a></span></h4>



</body>
</html>
';

$result_converted_errors{'html'}->{'top_node_no_menu_direction'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
