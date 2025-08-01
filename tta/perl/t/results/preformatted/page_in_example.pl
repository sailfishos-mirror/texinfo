use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'page_in_example'} = '*document_root C1
 *before_node_section C1
  *@example C4 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *@page C1
    *line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *preformatted C1
    {text\\n}
   *@end C1 l4
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {example}
';


$result_texis{'page_in_example'} = '@example
@page
text
@end example
';


$result_texts{'page_in_example'} = '
text
';

$result_errors{'page_in_example'} = [];


$result_nodes_list{'page_in_example'} = '';

$result_sections_list{'page_in_example'} = '';

$result_sectioning_root{'page_in_example'} = '';

$result_headings_list{'page_in_example'} = '';


$result_converted{'plaintext'}->{'page_in_example'} = '     text
';


$result_converted{'html'}->{'page_in_example'} = '<!DOCTYPE html>
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
div.example {margin-left: 3.2em}
</style>


</head>

<body lang="">
<div class="example">
<pre class="example-preformatted">text
</pre></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'page_in_example'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'docbook'}->{'page_in_example'} = '<screen>text
</screen>';


$result_converted{'xml'}->{'page_in_example'} = '<example endspaces=" ">
<page></page>
<pre xml:space="preserve">text
</pre></example>
';


$result_converted{'latex_text'}->{'page_in_example'} = '\\begin{Texinfoindented}
\\newpage{}%
\\phantom{blabla}%
\\begin{Texinfopreformatted}%
\\ttfamily text
\\end{Texinfopreformatted}
\\end{Texinfoindented}
';

1;
