use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodes_no_node_top_explicit_directions'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
NodeUp: (dir)
NodeForward: [U1]
 *before_node_section
 *0 @node C5 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[up->MISSING: (line_arg)[C3]]
 |node_number:{1}
 |normalized:{first}
  *arguments_line C4
   *line_arg C1
    {first}
   *line_arg
   *line_arg
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
  *paragraph C1
   {first node\\n}
  {empty_line:\\n}
  *1 @menu C3 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
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
U1 unit[E2]
unit_directions:D[prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Back: [U0]
NodePrev: [U0]
NodeUp: [U0]
NodeBack: [U0]
 *2 @node C2 l8 {second node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{second-node}
  *arguments_line C4
   *line_arg C1
    {second node}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{first}
   |normalized:{first}
    {first}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{first}
   |normalized:{first}
    {first}
  *paragraph C1
   {second node\\n}
';


$result_texis{'nodes_no_node_top_explicit_directions'} = '@node first,,,(dir)
first node

@menu
* second node::
@end menu

@node second node,,first,first
second node
';


$result_texts{'nodes_no_node_top_explicit_directions'} = 'first node

* second node::

second node
';

$result_errors{'nodes_no_node_top_explicit_directions'} = [
  {
    'error_line' => 'warning: node `first\' not in menu
',
    'line_nr' => 1,
    'text' => 'node `first\' not in menu',
    'type' => 'warning'
  }
];


$result_nodes_list{'nodes_no_node_top_explicit_directions'} = '1|first
2|second node
';

$result_sections_list{'nodes_no_node_top_explicit_directions'} = '';


$result_converted{'info'}->{'nodes_no_node_top_explicit_directions'} = 'This is , produced from .


File: ,  Node: first,  Up: (dir)

first node

* Menu:

* second node::


File: ,  Node: second node,  Prev: first,  Up: first

second node


Tag Table:
Node: first27
Node: second node101

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'nodes_no_node_top_explicit_directions'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'nodes_no_node_top_explicit_directions'} = '<!DOCTYPE html>
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

<link href="#first" rel="start" title="first">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="">
<a class="node-id" id="first"></a><div class="nav-panel">
<p>
Up: <a href="dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; </p>
</div>
<h4 class="node"><span>first<a class="copiable-link" href="#first"> &para;</a></span></h4>
<p>first node
</p>

<hr>
<a class="node-id" id="second-node"></a><div class="nav-panel">
<p>
Previous: <a href="#first" accesskey="p" rel="prev">first</a>, Up: <a href="#first" accesskey="u" rel="up">first</a> &nbsp; </p>
</div>
<h4 class="node"><span>second node<a class="copiable-link" href="#second-node"> &para;</a></span></h4>
<p>second node
</p>


</body>
</html>
';

$result_converted_errors{'html'}->{'nodes_no_node_top_explicit_directions'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'nodes_no_node_top_explicit_directions'} = '<node identifier="first" spaces=" "><nodename>first</nodename><nodenext></nodenext><nodeprev></nodeprev><nodeup>(dir)</nodeup></node>
<para>first node
</para>
<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>second node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="second-node" spaces=" "><nodename>second node</nodename><nodenext></nodenext><nodeprev>first</nodeprev><nodeup>first</nodeup></node>
<para>second node
</para>';

1;
