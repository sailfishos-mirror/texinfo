use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'one_subsection_and_node'} = '*document_root C3
 *before_node_section
 *0 @node C1 l1 {one node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |normalized:{one-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {one node}
 *1 @subsection C1 l2 {The subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_level:{3}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {The subsection}
';


$result_texis{'one_subsection_and_node'} = '@node one node
@subsection The subsection
';


$result_texts{'one_subsection_and_node'} = '1 The subsection
----------------
';

$result_errors{'one_subsection_and_node'} = [];



$result_converted{'info'}->{'one_subsection_and_node'} = 'This is , produced from .


File: ,  Node: one node

1 The subsection
----------------


Tag Table:
Node: one node27

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'one_subsection_and_node'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'one_subsection_and_node'} = '<!DOCTYPE html>
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

<link href="#one-node" rel="start" title="one node">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="">
<div class="subsection-level-extent" id="one-node">
<h4 class="subsection" id="The-subsection"><span>1 The subsection<a class="copiable-link" href="#The-subsection"> &para;</a></span></h4>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'one_subsection_and_node'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
