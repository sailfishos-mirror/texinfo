use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_below_unnumbered_no_top'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *@unnumbered C1 l1 {U}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_level:{1}
 |section_number:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {U}
 *@section C1 l2 {S}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_level:{2}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {S}
';


$result_texis{'section_below_unnumbered_no_top'} = '@unnumbered U
@section S
';


$result_texts{'section_below_unnumbered_no_top'} = 'U
*
S
=
';

$result_errors{'section_below_unnumbered_no_top'} = [];


$result_nodes_list{'section_below_unnumbered_no_top'} = '';

$result_sections_list{'section_below_unnumbered_no_top'} = '1|U
 section_children:
  1|S
2|S
 section_directions:
  up->U
';

$result_sectioning_root{'section_below_unnumbered_no_top'} = 'level: 0
list:
 1|U
';

$result_headings_list{'section_below_unnumbered_no_top'} = '';


$result_converted{'plaintext'}->{'section_below_unnumbered_no_top'} = 'U
*

S
=

';


$result_converted{'html'}->{'section_below_unnumbered_no_top'} = '<!DOCTYPE html>
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
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
</style>


</head>

<body lang="">
<div class="unnumbered-level-extent" id="U">
<h2 class="unnumbered"><span>U<a class="copiable-link" href="#U"> &para;</a></span></h2>
<ul class="mini-toc">
<li><a href="#S" accesskey="1">S</a></li>
</ul>
<div class="section-level-extent" id="S">
<h3 class="section"><span>S<a class="copiable-link" href="#S"> &para;</a></span></h3>
</div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'section_below_unnumbered_no_top'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
