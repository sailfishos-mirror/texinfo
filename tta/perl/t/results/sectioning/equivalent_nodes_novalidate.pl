use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'equivalent_nodes_novalidate'} = '*document_root C3
 *before_node_section C2
  *@novalidate C1 l1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
  {empty_line:\\n}
 *@node C4 l3 {first}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{first}
  *arguments_line C2
   *line_arg C1
    {first}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |node_content:{@emph{node}}
   |normalized:{node}
    *@emph C1 l3
     *brace_container C1
      {node}
  {empty_line:\\n}
  *@menu C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@strong{node}}
    |normalized:{node}
     *@strong C1 l6
      *brace_container C1
       {node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {menu}
  {empty_line:\\n}
 *@node C3 l9 {@samp{node}}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    *@samp C1 l9
     *brace_container C1
      {node}
  {empty_line:\\n}
  *paragraph C2
   *@xref C1 l11
    *brace_arg C1
    |EXTRA
    |node_content:{node}
    |normalized:{node}
     {node}
   {.\\n}
';


$result_texis{'equivalent_nodes_novalidate'} = '@novalidate

@node first, @emph{node}

@menu
* @strong{node}::
@end menu

@node @samp{node}

@xref{node}.
';


$result_texts{'equivalent_nodes_novalidate'} = '

* node::


node.
';

$result_errors{'equivalent_nodes_novalidate'} = [
  {
    'error_line' => 'warning: node `first\' not in menu
',
    'line_nr' => 3,
    'text' => 'node `first\' not in menu',
    'type' => 'warning'
  }
];


$result_nodes_list{'equivalent_nodes_novalidate'} = '1|first
 menus:
  @strong{node}
 node_directions:
  next->@samp{node}
2|@samp{node}
 node_directions:
  up->first
';

$result_sections_list{'equivalent_nodes_novalidate'} = '';

$result_sectioning_root{'equivalent_nodes_novalidate'} = '';

$result_headings_list{'equivalent_nodes_novalidate'} = '';


$result_converted{'info'}->{'equivalent_nodes_novalidate'} = 'This is , produced from .


File: ,  Node: first,  Next: node

* Menu:

* *node*::


File: ,  Node: node,  Up: first

*Note node::.


Tag Table:
Node: first27
Node: node85

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'equivalent_nodes_novalidate'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'equivalent_nodes_novalidate'} = '<!DOCTYPE html>
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
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
</style>


</head>

<body lang="">

<a class="node-id" id="first"></a><div class="nav-panel">
<p>
Next: <a href="#node" accesskey="n" rel="next">&lsquo;<samp class="samp">node</samp>&rsquo;</a> &nbsp; </p>
</div>
<h4 class="node"><span>first<a class="copiable-link" href="#first"> &para;</a></span></h4>


<hr>
<a class="node-id" id="node"></a><div class="nav-panel">
<p>
Up: <a href="#first" accesskey="u" rel="up">first</a> &nbsp; </p>
</div>
<h4 class="node"><span>&lsquo;<samp class="samp">node</samp>&rsquo;<a class="copiable-link" href="#node"> &para;</a></span></h4>

<p>See <a class="xref" href="#node">&lsquo;<samp class="samp">node</samp>&rsquo;</a>.
</p>


</body>
</html>
';

$result_converted_errors{'html'}->{'equivalent_nodes_novalidate'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
