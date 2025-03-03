use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'example_invalid_at_commands_arguments'} = '*document_root C1
 *before_node_section C1
  *0 @example C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C3
    *block_line_arg C2
     *1 @ref C4 l1
      *brace_arg C1
      |EXTRA
      |node_content:{a}
       {a}
      *brace_arg C1
       {b}
      *brace_arg C1
       {c}
      *brace_arg C1
       {d}
     { fa}
    *block_line_arg C3
    |INFO
    |spaces_before_argument:
     |{ }
     *2 @anchor C1 l1
     |EXTRA
     |is_target:{1}
     |normalized:{an-anchor}
      *brace_arg C1
       {an anchor}
     {spaces_after_close_brace: }
     {on example line}
    *block_line_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     *@center C1 l1
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {in center}
   *@end C1 l2
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


$result_texis{'example_invalid_at_commands_arguments'} = '@example @ref{a,b,c,d} fa, @anchor{an anchor} on example line, @center in center
@end example
';


$result_texts{'example_invalid_at_commands_arguments'} = '';

$result_errors{'example_invalid_at_commands_arguments'} = [
  {
    'error_line' => 'warning: @ref should not appear on @example line
',
    'line_nr' => 1,
    'text' => '@ref should not appear on @example line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear on @example line
',
    'line_nr' => 1,
    'text' => '@anchor should not appear on @example line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @center should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@center should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @center should not appear on @example line
',
    'line_nr' => 1,
    'text' => '@center should not appear on @example line',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'example_invalid_at_commands_arguments'} = '';


$result_converted{'html'}->{'example_invalid_at_commands_arguments'} = '<!DOCTYPE html>
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



</head>

<body lang="en">



</body>
</html>
';

$result_converted_errors{'html'}->{'example_invalid_at_commands_arguments'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'docbook'}->{'example_invalid_at_commands_arguments'} = '';


$result_converted{'xml'}->{'example_invalid_at_commands_arguments'} = '<example spaces=" " endspaces=" "><examplelanguage><ref label="a" manual="d"><xrefnodename>a</xrefnodename><xrefinfoname>b</xrefinfoname><xrefprinteddesc>c</xrefprinteddesc><xrefinfofile>d</xrefinfofile></ref> fa</examplelanguage><examplearg spaces=" "><anchor identifier="an-anchor">an anchor</anchor> on example line</examplearg><examplearg spaces=" "><center spaces=" ">in center</center>
</examplearg>
</example>
';


$result_converted{'latex_text'}->{'example_invalid_at_commands_arguments'} = '\\begin{Texinfoindented}
\\end{Texinfoindented}
';

1;
