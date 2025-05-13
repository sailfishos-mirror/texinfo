use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_node_anchor_float'} = '*document_root C5
 *before_node_section
 *0 @node C2 l1 {node1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{node1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node1}
  {empty_line:\\n}
 *1 @node C8 l3 {node1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |node_number:{2}
 |normalized:{node1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node1}
  {empty_line:\\n}
  *2 @anchor C1 l5
  |EXTRA
  |normalized:{node1}
   *brace_arg C1
    {node1}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
  *3 @anchor C1 l7
  |EXTRA
  |is_target:{1}
  |normalized:{anchor1}
   *brace_arg C1
    {anchor1}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *4 @node C8 l9 {anchor1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |node_number:{3}
 |normalized:{anchor1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {anchor1}
  {empty_line:\\n}
  *5 @float C2 l11
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_number:{1}
  |float_type:{Text}
  |global_command_number:{1}
  |normalized:{node1}
   *arguments_line C2
    *block_line_arg C1
     {Text}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {node1}
   *@end C1 l12
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
  *6 @float C2 l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_number:{2}
  |float_type:{Text}
  |global_command_number:{2}
  |normalized:{anchor1}
   *arguments_line C2
    *block_line_arg C1
     {Text}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {anchor1}
   *@end C1 l15
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
  *7 @float C2 l17
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_number:{3}
  |float_type:{Text}
  |global_command_number:{3}
  |is_target:{1}
  |normalized:{float1}
   *arguments_line C2
    *block_line_arg C1
     {Text}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {float1}
   *@end C1 l18
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
 *8 @node C1 l20 {float1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |node_number:{4}
 |normalized:{float1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {float1}
';


$result_texis{'double_node_anchor_float'} = '@node node1

@node node1

@anchor{node1}

@anchor{anchor1}

@node anchor1

@float Text, node1
@end float

@float Text, anchor1
@end float

@float Text, float1
@end float

@node float1
';


$result_texts{'double_node_anchor_float'} = '




Text, node1

Text, anchor1

Text, float1

';

$result_errors{'double_node_anchor_float'} = [
  {
    'error_line' => '@node `node1\' previously defined
',
    'line_nr' => 3,
    'text' => '@node `node1\' previously defined',
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
    'error_line' => '@anchor `node1\' previously defined
',
    'line_nr' => 5,
    'text' => '@anchor `node1\' previously defined',
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
    'error_line' => '@node `anchor1\' previously defined
',
    'line_nr' => 9,
    'text' => '@node `anchor1\' previously defined',
    'type' => 'error'
  },
  {
    'continuation' => 1,
    'error_line' => 'here is the previous definition as @anchor
',
    'line_nr' => 7,
    'text' => 'here is the previous definition as @anchor',
    'type' => 'error'
  },
  {
    'error_line' => '@float `node1\' previously defined
',
    'line_nr' => 11,
    'text' => '@float `node1\' previously defined',
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
    'error_line' => '@float `anchor1\' previously defined
',
    'line_nr' => 14,
    'text' => '@float `anchor1\' previously defined',
    'type' => 'error'
  },
  {
    'continuation' => 1,
    'error_line' => 'here is the previous definition as @anchor
',
    'line_nr' => 7,
    'text' => 'here is the previous definition as @anchor',
    'type' => 'error'
  },
  {
    'error_line' => '@node `float1\' previously defined
',
    'line_nr' => 20,
    'text' => '@node `float1\' previously defined',
    'type' => 'error'
  },
  {
    'continuation' => 1,
    'error_line' => 'here is the previous definition as @float
',
    'line_nr' => 17,
    'text' => 'here is the previous definition as @float',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: node `node1\' not in menu
',
    'line_nr' => 1,
    'text' => 'node `node1\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'double_node_anchor_float'} = 'Text: 3
 F1: {node1}
 F2: {anchor1}
 F3: {float1}
';

$result_nodes_list{'double_node_anchor_float'} = '1|node1
2|node1
3|anchor1
4|float1
';

$result_sections_list{'double_node_anchor_float'} = '';

$result_headings_list{'double_node_anchor_float'} = '';


$result_converted{'info'}->{'double_node_anchor_float'} = 'This is , produced from .


File: ,  Node: node1


Text 1

Text 2

Text 3



Tag Table:
Node: node127
Ref: anchor151
Ref: float168

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'double_node_anchor_float'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'double_node_anchor_float'} = '<!DOCTYPE html>
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

<link href="#node1" rel="start" title="node1">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="">
<h4 class="node" id="node1"><span>node1<a class="copiable-link" href="#node1"> &para;</a></span></h4>

<hr>


<a class="anchor" id="anchor1"></a>
<hr>

<div class="float">
<div class="type-number-float"><p><strong class="strong">Text 1</strong></p></div></div>
<div class="float">
<div class="type-number-float"><p><strong class="strong">Text 2</strong></p></div></div>
<div class="float" id="float1">
<div class="type-number-float"><p><strong class="strong">Text 3</strong></p></div></div>
<hr>



</body>
</html>
';

$result_converted_errors{'html'}->{'double_node_anchor_float'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'double_node_anchor_float'} = '<node identifier="node1" spaces=" "><nodename>node1</nodename></node>

<node identifier="" spaces=" "><nodename></nodename></node>

<anchor identifier="">node1</anchor>

<anchor identifier="anchor1">anchor1</anchor>

<node identifier="" spaces=" "><nodename></nodename></node>

<float type="Text" number="1" spaces=" " endspaces=" "><floattype>Text</floattype><floatname spaces=" ">node1</floatname>
</float>

<float type="Text" number="2" spaces=" " endspaces=" "><floattype>Text</floattype><floatname spaces=" ">anchor1</floatname>
</float>

<float identifier="float1" type="Text" number="3" spaces=" " endspaces=" "><floattype>Text</floattype><floatname spaces=" ">float1</floatname>
</float>

<node identifier="" spaces=" "><nodename></nodename></node>
';


$result_converted{'docbook'}->{'double_node_anchor_float'} = '<anchor id="node1"/>



<anchor id="anchor1"/>



<anchor id="float1"/>

';

1;
