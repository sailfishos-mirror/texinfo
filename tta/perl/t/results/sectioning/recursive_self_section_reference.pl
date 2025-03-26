use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'recursive_self_section_reference'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {sharp}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |normalized:{sharp}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sharp}
 *1 @chapter C1 l2 {@ref{sharp} tuple}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C1 l2
     *brace_arg C1
     |EXTRA
     |node_content:{sharp}
     |normalized:{sharp}
      {sharp}
    { tuple}
';


$result_texis{'recursive_self_section_reference'} = '@node sharp
@chapter @ref{sharp} tuple
';


$result_texts{'recursive_self_section_reference'} = '1 sharp tuple
*************
';

$result_errors{'recursive_self_section_reference'} = [];



$result_converted{'plaintext'}->{'recursive_self_section_reference'} = '1 sharp tuple
*************

';


$result_converted{'html'}->{'recursive_self_section_reference'} = '<!DOCTYPE html>
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

<link href="#sharp" rel="start" title="sharp">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="chapter-level-extent" id="sharp">
<h2 class="chapter" id="sharp-tuple"><span>1 <a class="ref" href="#sharp">sharp</a> tuple<a class="copiable-link" href="#sharp-tuple"> &para;</a></span></h2>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'recursive_self_section_reference'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
