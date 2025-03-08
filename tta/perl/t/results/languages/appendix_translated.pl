use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'appendix_translated'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content C2
   *@documentlanguage C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |text_arg:{es}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {es}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @appendix C3 l6 {dernier}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {dernier}
  {empty_line:\\n}
  *@contents C1 l8
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'appendix_translated'} = '@documentlanguage es

@node Top
@top top

@appendix dernier

@contents
';


$result_texts{'appendix_translated'} = '
top
***

Appendix A dernier
******************

';

$result_errors{'appendix_translated'} = [];



$result_converted{'plaintext'}->{'appendix_translated'} = 'top
***

Apéndice A dernier
******************

top
Apéndice A dernier
';


$result_converted{'info'}->{'appendix_translated'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

top
***

Apéndice A dernier
******************


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
Info-documentlanguage: es
End:
';


$result_converted{'html'}->{'appendix_translated'} = '<!DOCTYPE html>
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

<link href="#Top" rel="start" title="Top">
<link href="#SEC_Contents" rel="contents" title="Índice general">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
ul.toc-numbered-mark {list-style: none}
-->
</style>


</head>

<body lang="es">

<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Índice general</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-dernier" href="#dernier">Apéndice A dernier</a></li>
</ul>
</div>
</div>
<div class="appendix-level-extent" id="dernier">
<h2 class="appendix"><span>Apéndice A dernier<a class="copiable-link" href="#dernier"> &para;</a></span></h2>

</div>
</div>



</body>
</html>
';

1;
