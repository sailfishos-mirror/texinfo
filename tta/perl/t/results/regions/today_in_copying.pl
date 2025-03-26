use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'today_in_copying'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content C2
   *@copying C3 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C2
     *@today C1 l2
      *brace_container
     {.\\n}
    *@end C1 l3
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   {empty_line:\\n}
 *0 @node C1 l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l6 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_level:{0}
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
 *2 @node C3 l8 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *@insertcopying C1 l10
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'today_in_copying'} = '@copying
@today{}.
@end copying

@node Top
@top top

@node chap

@insertcopying
';


$result_texts{'today_in_copying'} = '
top
***


';

$result_errors{'today_in_copying'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 8,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'today_in_copying'} = 'This is , produced from .

a sunny day.


File: ,  Node: Top,  Next: chap,  Up: (dir)

top
***


File: ,  Node: chap,  Prev: Top

a sunny day.


Tag Table:
Node: Top41
Node: chap97

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'today_in_copying'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- a sunny day. -->
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

<body lang="en">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chap" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<p>a sunny day.
</p></div>



</body>
</html>
';


$result_converted{'latex_text'}->{'today_in_copying'} = '
\\begin{document}
\\label{anchor:Top}%
\\label{anchor:chap}%

\\today{}.
';

1;
