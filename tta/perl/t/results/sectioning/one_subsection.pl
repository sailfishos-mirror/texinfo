use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'one_subsection'} = '*document_root C2
 *before_node_section C1
  *preamble_before_content
 *0 @subsection C1 l1 {The subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{3}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {The subsection}
';


$result_texis{'one_subsection'} = '@subsection The subsection
';


$result_texts{'one_subsection'} = '1 The subsection
----------------
';

$result_errors{'one_subsection'} = [];



$result_converted{'plaintext'}->{'one_subsection'} = '1 The subsection
----------------

';


$result_converted{'html'}->{'one_subsection'} = '<!DOCTYPE html>
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
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="subsection-level-extent" id="The-subsection">
<h4 class="subsection"><span>1 The subsection<a class="copiable-link" href="#The-subsection"> &para;</a></span></h4>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'one_subsection'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
