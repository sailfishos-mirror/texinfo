use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_insert_nodes_nodedescription'} = '*document_root C9
 *before_node_section
 *0 @node C1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E3]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C3 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  *2 @nodedescription C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {D1}
  {empty_line: \\n}
 *3 @node C1 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{Chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
 *4 @chapter C2 l4 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E6]
 |section_directions:D[up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line: \\n}
 *5 @node C1 {Sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[up->E3]
 |node_number:{3}
 |normalized:{Sec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec}
 *6 @section C4 l6 {Sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E10]
 |section_directions:D[up->E4]
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec}
  *7 @nodedescription C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {D2}
  *8 @nodedescription C1 l8
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {D3}
  {empty_line:\\n}
 *9 @node C1 {Subsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[up->E5]
 |node_number:{4}
 |normalized:{Subsec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsec}
 *10 @subsection C2 l10 {Subsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E6]
 |section_heading_number:{1.1.1}
 |section_level:{3}
 |section_number:{4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsec}
  {empty_line:\\n}
';


$result_texis{'test_insert_nodes_nodedescription'} = '@node Top
@top top
@nodedescription D1
 
@node Chap
@chapter Chap
 
@node Sec
@section Sec
@nodedescription D2
@nodedescription D3

@node Subsec
@subsection Subsec

';


$result_texts{'test_insert_nodes_nodedescription'} = 'top
***
 
1 Chap
******
 
1.1 Sec
=======

1.1.1 Subsec
------------

';

$result_errors{'test_insert_nodes_nodedescription'} = [
  {
    'error_line' => 'warning: @nodedescription outside of any node
',
    'line_nr' => 2,
    'text' => '@nodedescription outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @nodedescription outside of any node
',
    'line_nr' => 7,
    'text' => '@nodedescription outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @nodedescription outside of any node
',
    'line_nr' => 8,
    'text' => '@nodedescription outside of any node',
    'type' => 'warning'
  }
];


$result_nodes_list{'test_insert_nodes_nodedescription'} = '1|Top
 associated_section: top
2|Chap
 associated_section: 1 Chap
3|Sec
 associated_section: 1.1 Sec
4|Subsec
 associated_section: 1.1.1 Subsec
';

$result_sections_list{'test_insert_nodes_nodedescription'} = '1|top
 associated_node: Top
2|Chap
 associated_node: Chap
3|Sec
 associated_node: Sec
4|Subsec
 associated_node: Subsec
';

$result_headings_list{'test_insert_nodes_nodedescription'} = '';


$result_converted{'html'}->{'test_insert_nodes_nodedescription'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
pre.menu-comment-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#Chap" accesskey="n" rel="next">Chap</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>
 
<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#Chap" accesskey="1">Chap</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted"> &mdash; The Detailed Node Listing &mdash;

Chap

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#Sec" accesskey="2">Sec</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

Sec

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#Subsec" accesskey="3">Subsec</a>:</td><td class="menu-entry-description">
</td></tr>
</table>
<hr>
<div class="chapter-level-extent" id="Chap">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h4 class="node"><span>Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h4>
<h2 class="chapter" id="Chap-1"><span>1 Chap<a class="copiable-link" href="#Chap-1"> &para;</a></span></h2>
 
<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#Sec" accesskey="1">Sec</a>:</td><td class="menu-entry-description">
</td></tr>
</table>
<hr>
<div class="section-level-extent" id="Sec">
<div class="nav-panel">
<p>
Up: <a href="#Chap" accesskey="u" rel="up">Chap</a> &nbsp; </p>
</div>
<h4 class="node"><span>Sec<a class="copiable-link" href="#Sec"> &para;</a></span></h4>
<h3 class="section" id="Sec-1"><span>1.1 Sec<a class="copiable-link" href="#Sec-1"> &para;</a></span></h3>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#Subsec" accesskey="1">Subsec</a>:</td><td class="menu-entry-description">
</td></tr>
</table>
<hr>
<div class="subsection-level-extent" id="Subsec">
<div class="nav-panel">
<p>
Up: <a href="#Sec" accesskey="u" rel="up">Sec</a> &nbsp; </p>
</div>
<h4 class="node"><span>Subsec<a class="copiable-link" href="#Subsec"> &para;</a></span></h4>
<h4 class="subsection" id="Subsec-1"><span>1.1.1 Subsec<a class="copiable-link" href="#Subsec-1"> &para;</a></span></h4>

</div>
</div>
</div>
</div>



</body>
</html>
';


$result_converted{'info'}->{'test_insert_nodes_nodedescription'} = 'This is , produced from .


File: ,  Node: Top,  Next: Chap,  Up: (dir)

top
***

* Menu:

* Chap::

 -- The Detailed Node Listing --

Chap

* Sec::

Sec

* Subsec::


File: ,  Node: Chap,  Prev: Top,  Up: Top

1 Chap
******

* Menu:

* Sec::


File: ,  Node: Sec,  Up: Chap

1.1 Sec
=======

* Menu:

* Subsec::


File: ,  Node: Subsec,  Up: Sec

1.1.1 Subsec
------------


Tag Table:
Node: Top27
Node: Chap168
Node: Sec246
Node: Subsec317

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
