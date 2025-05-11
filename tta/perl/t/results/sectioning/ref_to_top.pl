use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'ref_to_top'} = '*document_root C3
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C1 l2 {ToP}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ToP}
 *1 @top C3 l3 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *paragraph C2
   *@xref C1 l5
    *brace_arg C1
    |EXTRA
    |node_content:{TOP}
    |normalized:{Top}
     {TOP}
   {.\\n}
';


$result_texis{'ref_to_top'} = '
@node ToP
@top top

@xref{TOP}.
';


$result_texts{'ref_to_top'} = '
top
***

TOP.
';

$result_errors{'ref_to_top'} = [
  {
    'error_line' => 'warning: @xref to `TOP\', different from node name `ToP\'
',
    'line_nr' => 5,
    'text' => '@xref to `TOP\', different from node name `ToP\'',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'ref_to_top'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

top
***

*Note ToP::.


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'ref_to_top'} = '<!DOCTYPE html>
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

<link href="#Top" rel="start" title="ToP">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="">

<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<p>See <a class="xref" href="#Top">top</a>.
</p></div>



</body>
</html>
';

1;
