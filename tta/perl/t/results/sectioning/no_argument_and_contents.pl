use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_argument_and_contents'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content C2
   *@contents C1 l1
   |EXTRA
   |global_command_number:{1}
    {rawline_arg:\\n}
   {empty_line:\\n}
 *0 @top C2 l3 {for example}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {for example}
  {empty_line:\\n}
 *1 @chapter C2 l5 {@asis{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E0]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@asis C1 l5
     *brace_container
  {empty_line:\\n}
';


$result_texis{'no_argument_and_contents'} = '@contents

@top for example

@chapter @asis{}

';


$result_texts{'no_argument_and_contents'} = '
for example
***********

1 
**

';

$result_errors{'no_argument_and_contents'} = [];



$result_converted{'plaintext'}->{'no_argument_and_contents'} = 'for example
1 

for example
***********

1 
**

';


$result_converted{'html'}->{'no_argument_and_contents'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>for example</title>

<meta name="description" content="for example">
<meta name="keywords" content="for example">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
ul.toc-numbered-mark {list-style: none}
-->
</style>


</head>

<body lang="">

<div class="top-level-extent" id="for-example">
<h1 class="top"><span>for example<a class="copiable-link" href="#for-example"> &para;</a></span></h1>

<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li>1 </li>
</ul>
</div>
</div>
<div class="chapter-level-extent">
<h2 class="chapter">1 </h2>

</div>
</div>



</body>
</html>
';

1;
