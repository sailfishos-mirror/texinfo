use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_no_argument_and_content'} = '*document_root C2
 *before_node_section C1
  *preamble_before_content
 *0 @top C3 l1
 |EXTRA
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
  *paragraph C1
   {A.\\n}
';


$result_texis{'top_no_argument_and_content'} = '@top

A.
';


$result_texts{'top_no_argument_and_content'} = '
A.
';

$result_errors{'top_no_argument_and_content'} = [];



$result_converted{'plaintext'}->{'top_no_argument_and_content'} = 'A.
';


$result_converted{'html'}->{'top_no_argument_and_content'} = '<!DOCTYPE html>
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
<div class="top-level-extent" id="SEC_Top">

<p>A.
</p></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'top_no_argument_and_content'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
