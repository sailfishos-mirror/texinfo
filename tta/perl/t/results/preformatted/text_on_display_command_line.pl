use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'text_on_display_command_line'} = '*document_root C1
 *before_node_section C7
  *@display C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {text on line}
   *@end C1 l2
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
  {empty_line:\\n}
  *@display C3 l4
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {text on line followed by text}
   *preformatted C1
    {normal text\\n}
   *@end C1 l6
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
  {empty_line:\\n}
  *@display C3 l8
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    {in display\\n}
   *@end C1 l10
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{display text after end}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {display text after end}
  {empty_line:\\n}
  *@display C3 l12
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@display C2 l13
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *@end C1 l14
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{display text after end display nested in display}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {display text after end display nested in display}
   *@end C1 l15
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


$result_texis{'text_on_display_command_line'} = '@display text on line
@end display

@display text on line followed by text
normal text
@end display

@display
in display
@end display text after end

@display
@display
@end display text after end display nested in display
@end display
';


$result_texts{'text_on_display_command_line'} = '
normal text

in display

';

$result_errors{'text_on_display_command_line'} = [
  {
    'error_line' => 'warning: unexpected argument on @display line: text on line
',
    'line_nr' => 1,
    'text' => 'unexpected argument on @display line: text on line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unexpected argument on @display line: text on line followed by text
',
    'line_nr' => 4,
    'text' => 'unexpected argument on @display line: text on line followed by text',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: display text after end
',
    'line_nr' => 10,
    'text' => 'bad argument to @end: display text after end',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: display text after end display nested in display
',
    'line_nr' => 14,
    'text' => 'bad argument to @end: display text after end display nested in display',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'text_on_display_command_line'} = '     normal text

     in display

';


$result_converted{'html'}->{'text_on_display_command_line'} = '<!DOCTYPE html>
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

<body lang="">

<div class="display">
<pre class="display-preformatted">normal text
</pre></div>

<div class="display">
<pre class="display-preformatted">in display
</pre></div>




</body>
</html>
';

$result_converted_errors{'html'}->{'text_on_display_command_line'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'docbook'}->{'text_on_display_command_line'} = '
<literallayout>normal text
</literallayout>
<literallayout>in display
</literallayout>
';


$result_converted{'xml'}->{'text_on_display_command_line'} = '<display spaces=" " endspaces=" ">
</display>

<display spaces=" " endspaces=" ">
<pre xml:space="preserve">normal text
</pre></display>

<display endspaces=" ">
<pre xml:space="preserve">in display
</pre></display>

<display endspaces=" ">
<display endspaces=" ">
</display>
</display>
';


$result_converted{'latex_text'}->{'text_on_display_command_line'} = '\\begin{Texinfoindented}
\\end{Texinfoindented}

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
normal text
\\end{Texinfopreformatted}
\\end{Texinfoindented}

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
in display
\\end{Texinfopreformatted}
\\end{Texinfoindented}

\\begin{Texinfoindented}
\\begin{Texinfoindented}
\\end{Texinfoindented}
\\end{Texinfoindented}
';

1;
