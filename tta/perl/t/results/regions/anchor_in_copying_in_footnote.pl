use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_in_copying_in_footnote'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content C2
   *@copying C5 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    {empty_line:\\n}
    *paragraph C3
     {Copying}
     *@footnote C1 l3
     |INFO
     |spaces_before_argument:
      |{\\n}
     |EXTRA
     |global_command_number:{1}
      *brace_command_context C1
       *paragraph C3
        {In footnote.\\n}
        *0 @anchor C1 l5
        |EXTRA
        |is_target:{1}
        |normalized:{Copying-footnote}
         *brace_arg C1
         |EXTRA
         |element_region:{copying}
          {Copying footnote}
        {spaces_after_close_brace:\\n}
     {.\\n}
    {empty_line:\\n}
    *@end C1 l8
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
 *1 @node C2 l10 {Top}
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
 *2 @node C8 l12 {chap}
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
  *@insertcopying C1 l14
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@insertcopying C1 l16
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C2
   *@xref C1 l18
    *brace_arg C1
    |EXTRA
    |node_content:{Copying footnote}
    |normalized:{Copying-footnote}
     {Copying footnote}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'anchor_in_copying_in_footnote'} = '@copying

Copying@footnote{
In footnote.
@anchor{Copying footnote}
}.

@end copying

@node Top

@node chap

@insertcopying

@insertcopying

@xref{Copying footnote}.

';


$result_texts{'anchor_in_copying_in_footnote'} = '




Copying footnote.

';

$result_errors{'anchor_in_copying_in_footnote'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 12,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'anchor_in_copying_in_footnote'} = 'This is , produced from .

Copying(1).

   ---------- Footnotes ----------

   (1) In footnote.


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

Copying(1).

   Copying(2).

   *Note Copying footnote::.

   ---------- Footnotes ----------

   (1) In footnote.

   (2) In footnote.


Tag Table:
Node: Top97
Node: chap144
Ref: chap-Footnote-1274
Ref: Copying footnote293
Ref: chap-Footnote-2295

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'anchor_in_copying_in_footnote'} = [
  {
    'error_line' => '@anchor output more than once: Copying footnote
',
    'line_nr' => 5,
    'text' => '@anchor output more than once: Copying footnote',
    'type' => 'error'
  }
];



$result_converted{'html'}->{'anchor_in_copying_in_footnote'} = '<!DOCTYPE html>
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


<p>Copying<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>.
</p>


<p>Copying<a class="footnote" id="DOCF1_2" href="#FOOT1_2"><sup>2</sup></a>.
</p>

<p>See <a class="xref" href="#Copying-footnote">Copying footnote</a>.
</p>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>In footnote.
<a class="anchor" id="Copying-footnote"></a></p>
<h5 class="footnote-body-heading"><a id="FOOT1_2" href="#DOCF1_2">(2)</a></h5>
<p>In footnote.
<a class="anchor" id="Copying-footnote"></a></p>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'anchor_in_copying_in_footnote'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'anchor_in_copying_in_footnote'} = '
\\begin{document}
\\label{anchor:Top}%
\\label{anchor:chap}%


Copying\\footnote{In footnote.
\\label{anchor:Copying-footnote}%
}.



Copying\\footnote{In footnote.
\\label{anchor:Copying-footnote}%
}.


See \\hyperref[anchor:Copying-footnote]{[Copying footnote], page~\\pageref*{anchor:Copying-footnote}}.

';

1;
