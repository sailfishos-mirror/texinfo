use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_in_copying'} = '*document_root C3
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@copying C5 l2
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    {empty_line:\\n}
    *paragraph C3
     {Copying.\\n}
     *0 @anchor C1 l5
     |EXTRA
     |is_target:{1}
     |normalized:{Copying-information}
      *brace_arg C1
      |EXTRA
      |element_region:{copying}
       {Copying information}
     {spaces_after_close_brace:\\n}
    {empty_line:\\n}
    *@end C1 l7
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
 *1 @node C2 l9 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
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
 *2 @node C8 l11 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E1]
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *@insertcopying C1 l13
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@insertcopying C1 l15
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C2
   *@xref C1 l17
    *brace_arg C1
    |EXTRA
    |node_content:{Copying information}
    |normalized:{Copying-information}
     {Copying information}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'anchor_in_copying'} = '
@copying

Copying.
@anchor{Copying information}

@end copying

@node Top

@node chap

@insertcopying

@insertcopying

@xref{Copying information}.

';


$result_texts{'anchor_in_copying'} = '




Copying information.

';

$result_errors{'anchor_in_copying'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 11,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'anchor_in_copying'} = 'This is , produced from .

Copying.


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

Copying.

   Copying.

   *Note Copying information::.


Tag Table:
Node: Top37
Node: chap84
Ref: Copying information127

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'anchor_in_copying'} = [
  {
    'error_line' => '@anchor output more than once: Copying information
',
    'line_nr' => 5,
    'text' => '@anchor output more than once: Copying information',
    'type' => 'error'
  }
];



$result_converted{'html'}->{'anchor_in_copying'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 
Copying.
 -->
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
Next: <a href="#chap" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>


<p>Copying.
<a class="anchor" id="Copying-information"></a></p>


<p>Copying.
<a class="anchor" id="Copying-information"></a></p>

<p>See <a class="xref" href="#Copying-information">Copying information</a>.
</p>



</body>
</html>
';

$result_converted_errors{'html'}->{'anchor_in_copying'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'anchor_in_copying'} = '
\\begin{document}
\\label{anchor:Top}%
\\label{anchor:chap}%


Copying.
\\label{anchor:Copying-information}%



Copying.
\\label{anchor:Copying-information}%


See \\hyperref[anchor:Copying-information]{[Copying information], page~\\pageref*{anchor:Copying-information}}.

';

1;
