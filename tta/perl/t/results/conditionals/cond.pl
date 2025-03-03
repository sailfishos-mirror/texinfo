use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'cond'} = '*document_root C5
 *before_node_section C4
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C5
   *@c C1
    {rawline_arg: test conditions\\n}
   {empty_line:\\n}
   *0 @html C3 cond.texi:l5
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *elided_rawpreformatted C1
     {raw:This is html text.\\n}
    *@end C1 cond.texi:l7
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{html}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {html}
   {empty_line:\\n}
   >SOURCEMARKS
   >ignored_conditional_block<1><p:1>
    >*@ifhtml C3 cond.texi:l9
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
     >{raw:This is ifhtml text.\\n}
     >*@end C1 cond.texi:l11
     >|INFO
     >|spaces_before_argument:
      >|{ }
     >|EXTRA
     >|text_arg:{ifhtml}
      >*line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{ifhtml}
   {empty_line:\\n}
   >SOURCEMARKS
   >expanded_conditional_command<start;1><p:1>
    >*@ifnothtml C1 cond.texi:l13
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
  *paragraph C1
   {This is ifnothtml text.\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;1><p:24>
    >*@end C1 cond.texi:l15
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifnothtml}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifnothtml}
  {empty_line:\\n}
 *1 @node C1 cond.texi:l17 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |is_target:{1}
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C2 cond.texi:l18 {conditionals}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E1]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {conditionals}
  {empty_line:\\n}
 *3 @node C12 cond.texi:l20 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E1]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<2><p:1>
   >*@ifinfo C3 cond.texi:l23
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
    >{raw:This is ifinfo text.\\n}
    >*@end C1 cond.texi:l25
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifinfo}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifinfo}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;2><p:1>
   >*@ifnotinfo C1 cond.texi:l27
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
  *paragraph C1
   {This is ifnotinfo text.\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;2><p:24>
    >*@end C1 cond.texi:l29
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifnotinfo}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifnotinfo}
  {empty_line:\\n}
  {empty_line:\\n}
  *4 @tex C3 cond.texi:l32
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *elided_rawpreformatted C1
    {raw:This is tex text.\\n}
   *@end C1 cond.texi:l34
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{tex}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {tex}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<3><p:1>
   >*@iftex C3 cond.texi:l36
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
    >{raw:This is iftex text.\\n}
    >*@end C1 cond.texi:l38
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{iftex}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{iftex}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;3><p:1>
   >*@ifnottex C1 cond.texi:l40
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
  *paragraph C1
   {This is ifnottex text.\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;3><p:23>
    >*@end C1 cond.texi:l42
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifnottex}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifnottex}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'cond'} = '\\input texinfo

@c test conditions

@html
This is html text.
@end html


This is ifnothtml text.

@node Top
@top conditionals

@node chap



This is ifnotinfo text.


@tex
This is tex text.
@end tex


This is ifnottex text.

@bye
';


$result_texts{'cond'} = '


This is ifnothtml text.

conditionals
************




This is ifnotinfo text.




This is ifnottex text.

';

$result_errors{'cond'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'file_name' => 'cond.texi',
    'line_nr' => 20,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'cond'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>conditionals</title>

<meta name="description" content="conditionals">
<meta name="keywords" content="conditionals">
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

This is html text.


<p>This is ifnothtml text.
</p>
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chap" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="top" id="conditionals"><span>conditionals<a class="copiable-link" href="#conditionals"> &para;</a></span></h1>

<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">conditionals</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>



<p>This is ifnotinfo text.
</p>



<p>This is ifnottex text.
</p>
</div>



</body>
</html>
';

1;
