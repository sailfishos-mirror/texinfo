use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nested_formats'} = '*document_root C1
 *before_node_section C3
  *0 @format C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *1 @example C3 l2
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C3
     {empty_line:\\n}
     {in -- format/example\\n}
     {empty_line:\\n}
    *@end C1 l6
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{example}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {example}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{format}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {format}
  {empty_line:\\n}
  *2 @example C3 l9
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *3 @format C3 l10
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C3
     {empty_line:\\n}
     {in -- example/format\\n}
     {empty_line:\\n}
    *@end C1 l14
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{format}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {format}
   *@end C1 l15
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
';


$result_texis{'nested_formats'} = '@format
@example

in -- format/example

@end example
@end format

@example
@format

in -- example/format

@end format
@end example
';


$result_texts{'nested_formats'} = '
in -- format/example



in -- example/format

';

$result_errors{'nested_formats'} = [];



$result_converted{'plaintext'}->{'nested_formats'} = '
     in -- format/example


     in -- example/format

';


$result_converted{'html'}->{'nested_formats'} = '<!DOCTYPE html>
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

<style type="text/css">
<!--
div.example {margin-left: 3.2em}
-->
</style>


</head>

<body lang="en">
<div class="format">
<div class="example">
<pre class="example-preformatted">

in -- format/example

</pre></div>
</div>

<div class="example">
<div class="format">
<pre class="example-preformatted">

in -- example/format

</pre></div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'nested_formats'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'docbook'}->{'nested_formats'} = '<screen>
in -- format/example

</screen>
<literallayout>
in -- example/format

</literallayout>';


$result_converted{'xml'}->{'nested_formats'} = '<format endspaces=" ">
<example endspaces=" ">
<pre xml:space="preserve">
in -- format/example

</pre></example>
</format>

<example endspaces=" ">
<format endspaces=" ">
<pre xml:space="preserve">
in -- example/format

</pre></format>
</example>
';


$result_converted{'latex_text'}->{'nested_formats'} = '\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily 
in {-}{-} format/example

\\end{Texinfopreformatted}
\\end{Texinfoindented}

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%

in -- example/format

\\end{Texinfopreformatted}
\\end{Texinfoindented}
';

1;
