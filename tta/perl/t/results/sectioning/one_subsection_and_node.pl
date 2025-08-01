use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'one_subsection_and_node'} = '*document_root C3
 *before_node_section
 *@node C1 l1 {one node}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{one-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {one node}
 *@subsection C1 l2 {The subsection}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{3}
 |section_number:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {The subsection}
';


$result_texis{'one_subsection_and_node'} = '@node one node
@subsection The subsection
';


$result_texts{'one_subsection_and_node'} = '1 The subsection
----------------
';

$result_errors{'one_subsection_and_node'} = [];


$result_nodes_list{'one_subsection_and_node'} = '1|one node
 associated_section: 1 The subsection
 associated_title_command: 1 The subsection
';

$result_sections_list{'one_subsection_and_node'} = '1|The subsection
 associated_anchor_command: one node
 associated_node: one node
';

$result_sectioning_root{'one_subsection_and_node'} = 'level: 2
list:
 1|The subsection
';

$result_headings_list{'one_subsection_and_node'} = '';


$result_converted{'info'}->{'one_subsection_and_node'} = 'This is , produced from .


File: ,  Node: one node

1 The subsection
----------------


Tag Table:
Node: one node27

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'one_subsection_and_node'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'one_subsection_and_node'} = '<!DOCTYPE html>
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

<link href="#one-node" rel="start" title="one node">
<style type="text/css">
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
</style>


</head>

<body lang="">
<div class="subsection-level-extent" id="one-node">
<h4 class="subsection" id="The-subsection"><span>1 The subsection<a class="copiable-link" href="#The-subsection"> &para;</a></span></h4>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'one_subsection_and_node'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
