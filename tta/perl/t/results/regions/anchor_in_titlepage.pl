use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_in_titlepage'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@titlepage C5 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    {empty_line:\\n}
    *0 @anchor C1 l3
    |EXTRA
    |is_target:{1}
    |normalized:{in-titlepage}
     *brace_arg C1
     |EXTRA
     |element_region:{titlepage}
      {in titlepage}
    {spaces_after_close_brace:\\n}
    *@end C1 l4
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{titlepage}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {titlepage}
   {empty_line:\\n}
 *1 @top C1 l6 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
 *2 @node C2 l7 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
 *3 @chapter C1 l9 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *4 @node C3 l10 {nchap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E2]
 |normalized:{nchap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {nchap}
  {empty_line:\\n}
  *paragraph C2
   *@xref C1 l12
    *brace_arg C1
    |EXTRA
    |node_content:{in titlepage}
    |normalized:{in-titlepage}
     {in titlepage}
   {.\\n}
';


$result_texis{'anchor_in_titlepage'} = '@titlepage

@anchor{in titlepage}
@end titlepage

@top top
@node Top

@chapter Chapter
@node nchap

@xref{in titlepage}.
';


$result_texts{'anchor_in_titlepage'} = '
top
***

1 Chapter
*********

in titlepage.
';

$result_errors{'anchor_in_titlepage'} = [
  {
    'error_line' => 'warning: node `nchap\' not in menu
',
    'line_nr' => 10,
    'text' => 'node `nchap\' not in menu',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'anchor_in_titlepage'} = 'This is , produced from .

top
***


File: ,  Node: Top,  Next: nchap,  Up: (dir)

1 Chapter
*********


File: ,  Node: nchap,  Prev: Top

*Note in titlepage::.


Tag Table:
Node: Top36
Node: nchap105

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'anchor_in_titlepage'} = '<!DOCTYPE html>
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
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="">

<div class="top-level-extent" id="top">
<div class="nav-panel">
<p>
Next: <a href="#nchap" accesskey="n" rel="next">nchap</a> &nbsp; </p>
</div>
<h1 class="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>
<ul class="mini-toc">
<li><a href="#Top" accesskey="1">Chapter</a></li>
</ul>
<div class="chapter-level-extent" id="Top">

<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>
<hr>
<a class="node-id" id="nchap"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Chapter</a> &nbsp; </p>
</div>
<h4 class="node"><span>nchap<a class="copiable-link" href="#nchap"> &para;</a></span></h4>

<p>See <a class="xref" href="#in-titlepage">in titlepage</a>.
</p></div>
</div>



</body>
</html>
';


$result_converted{'latex_text'}->{'anchor_in_titlepage'} = '
\\begin{document}

\\frontmatter
\\pagestyle{empty}%
\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue

\\label{anchor:in-titlepage}%
\\endgroup
\\end{titlepage}
\\mainmatter
\\pagestyle{single}%
\\part*{{top}}
\\label{anchor:Top}%
\\label{anchor:nchap}%

See \\hyperref[anchor:in-titlepage]{[in titlepage], page~\\pageref*{anchor:in-titlepage}}.
';

1;
