use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_top'} = '*document_root C3
 *before_node_section
 *0 @node C2 l1 {ToP}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E0]
 |normalized:{Top}
  *arguments_line C2
   *line_arg C1
    {ToP}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{top}
   |normalized:{Top}
    {top}
  {empty_line:\\n}
 *1 @node C4 l3 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |node_directions:D[prev->E0|up->E0]
 |normalized:{Top}
  *arguments_line C4
   *line_arg C1
    {top}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{ToP}
   |normalized:{Top}
    {ToP}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *2 @anchor C1 l5
  |EXTRA
  |normalized:{Top}
   *brace_arg C1
    {TOP}
  *paragraph C1
   {.\\n}
';


$result_texis{'double_top'} = '@node ToP, top

@node top,,ToP,Top

@anchor{TOP}.
';


$result_texts{'double_top'} = '

.
';

$result_nodes{'double_top'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {}
      },
      'normalized' => 'Top'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'prev' => {},
        'up' => {}
      },
      'normalized' => 'Top'
    }
  }
];
$result_nodes{'double_top'}[0]{'extra'}{'node_directions'}{'next'} = $result_nodes{'double_top'}[0];
$result_nodes{'double_top'}[1]{'extra'}{'node_directions'}{'prev'} = $result_nodes{'double_top'}[0];
$result_nodes{'double_top'}[1]{'extra'}{'node_directions'}{'up'} = $result_nodes{'double_top'}[0];

$result_menus{'double_top'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'double_top'} = [
  {
    'error_line' => '@node `top\' previously defined
',
    'line_nr' => 3,
    'text' => '@node `top\' previously defined',
    'type' => 'error'
  },
  {
    'continuation' => 1,
    'error_line' => 'here is the previous definition as @node
',
    'line_nr' => 1,
    'text' => 'here is the previous definition as @node',
    'type' => 'error'
  },
  {
    'error_line' => '@anchor `TOP\' previously defined
',
    'line_nr' => 5,
    'text' => '@anchor `TOP\' previously defined',
    'type' => 'error'
  },
  {
    'continuation' => 1,
    'error_line' => 'here is the previous definition as @node
',
    'line_nr' => 1,
    'text' => 'here is the previous definition as @node',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: Next pointer `top\' (for node `ToP\') different from node name `ToP\'
',
    'line_nr' => 1,
    'text' => 'Next pointer `top\' (for node `ToP\') different from node name `ToP\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: Up pointer `Top\' (for node `top\') different from node name `ToP\'
',
    'line_nr' => 3,
    'text' => 'Up pointer `Top\' (for node `top\') different from node name `ToP\'',
    'type' => 'warning'
  }
];


$result_floats{'double_top'} = {};



$result_converted{'info'}->{'double_top'} = 'This is , produced from .


File: ,  Node: Top,  Next: Top,  Up: (dir)

.


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'double_top'} = '<!DOCTYPE html>
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

<link href="#Top" rel="start" title="ToP">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#Top" accesskey="n" rel="next">ToP</a> &nbsp; </p>
</div>
<h1 class="node"><span>ToP<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<hr>
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">ToP</a>, Up: <a href="#Top" accesskey="u" rel="up">ToP</a> &nbsp; </p>
</div>

<p>.
</p>


</body>
</html>
';

$result_converted_errors{'html'}->{'double_top'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
