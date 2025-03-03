use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'quote_dash_in_display'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *0 @display C3 l2
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C2
    {and now -- yes---now and ``so\'\'.\\n}
    {empty_line:\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{display}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {display}
';


$result_texis{'quote_dash_in_display'} = '
@display
and now -- yes---now and ``so\'\'.

@end display
';


$result_texts{'quote_dash_in_display'} = '
and now - yes--now and "so".

';

$result_errors{'quote_dash_in_display'} = [];



$result_converted{'plaintext'}->{'quote_dash_in_display'} = '     and now - yes--now and "so".

';


$result_converted{'html'}->{'quote_dash_in_display'} = '<!DOCTYPE html>
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
div.display {margin-left: 3.2em}
pre.display-preformatted {font-family: inherit}
-->
</style>


</head>

<body lang="en">

<div class="display">
<pre class="display-preformatted">and now &ndash; yes&mdash;now and &ldquo;so&rdquo;.

</pre></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'quote_dash_in_display'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'docbook'}->{'quote_dash_in_display'} = '
<literallayout>and now &#8211; yes&#8212;now and &#8220;so&#8221;.

</literallayout>';


$result_converted{'xml'}->{'quote_dash_in_display'} = '
<display endspaces=" ">
<pre xml:space="preserve">and now &textndash; yes&textmdash;now and &textldquo;so&textrdquo;.

</pre></display>
';


$result_converted{'latex_text'}->{'quote_dash_in_display'} = '
\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
and now -- yes---now and ``so\'\'.

\\end{Texinfopreformatted}
\\end{Texinfoindented}
';

1;
