use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_no_argument_and_node'} = '*document_root C3
 *before_node_section
 *0 @node C1 l1 {start}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |normalized:{start}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {start}
 *1 @top C1 l2
 |EXTRA
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
';


$result_texis{'top_no_argument_and_node'} = '@node start
@top
';


$result_texts{'top_no_argument_and_node'} = '';

$result_errors{'top_no_argument_and_node'} = [];



$result_converted{'info'}->{'top_no_argument_and_node'} = 'This is , produced from .


File: ,  Node: start


Tag Table:
Node: start27

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'top_no_argument_and_node'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'top_no_argument_and_node'} = '<!DOCTYPE html>
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

<link href="#start" rel="start" title="start">


</head>

<body lang="en">
<div class="top-level-extent" id="start">
<a class="top" id="SEC_Top"></a></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'top_no_argument_and_node'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
