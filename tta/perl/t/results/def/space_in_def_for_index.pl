use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'space_in_def_for_index'} = '*document_root C3
 *before_node_section
 *@node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Top}
 *@node C5 l2 {chap}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chap}
  {empty_line:\\n}
  *@deffn C3 l4
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *def_line C1 l4
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |* C1
     |*brace_arg C1
     ||INFO
     ||spaces_after_argument:
      ||{spaces_after_argument: }
     ||spaces_before_argument:
      ||{spaces_before_argument: }
      |{name}
   |element_node:{chap}
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *def_category C1
      *bracketed_arg C1 l4
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument: }
      |spaces_before_argument:
       |{spaces_before_argument: }
       {Category}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l4
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument: }
      |spaces_before_argument:
       |{spaces_before_argument: }
       {name}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l4
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument: }
      |spaces_before_argument:
       |{spaces_before_argument: }
       {argument}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {argument2...}
   *@deffnx C1 l5
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |* C1
     |*brace_arg C1
      |{AAA2}
   |element_node:{chap}
   |index_entry:I{fn,2}
   |original_def_cmdname:{deffnx}
    *line_arg C5
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *def_category C1
      *bracketed_arg C1 l5
       {AAA1}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l5
       {AAA2}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {arg3}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {deffn}
  {empty_line:\\n}
  *@printindex C1 l8
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {fn}
';


$result_texis{'space_in_def_for_index'} = '@node Top
@node chap

@deffn { Category } { name } { argument } argument2...
@deffnx {AAA1} {AAA2} arg3
@end deffn

@printindex fn
';


$result_texts{'space_in_def_for_index'} = '
Category: name argument argument2...
AAA1: AAA2 arg3

';

$result_errors{'space_in_def_for_index'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 2,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_nodes_list{'space_in_def_for_index'} = '1|Top
 node_directions:
  next->chap
2|chap
 node_directions:
  prev->Top
';

$result_sections_list{'space_in_def_for_index'} = '';

$result_sectioning_root{'space_in_def_for_index'} = '';

$result_headings_list{'space_in_def_for_index'} = '';

$result_indices_sort_strings{'space_in_def_for_index'} = 'fn:
 AAA2
 name
';


$result_converted{'info'}->{'space_in_def_for_index'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

 -- Category: name argument argument2...
 -- AAA1: AAA2 arg3

 [index ]
* Menu:

* AAA2:                                  chap.                  (line 4)
* name:                                  chap.                  (line 3)


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'space_in_def_for_index'} = '<!DOCTYPE html>
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

<link href="#Top" rel="start" title="Top">
<link href="#chap" rel="index" title="chap">
<style type="text/css">
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter-printindex {text-decoration: none}
span:hover a.copiable-link {visibility: visible}
strong.def-name {font-family: monospace; font-weight: bold; font-size: larger}
td.printindex-index-entry {vertical-align: top; padding-left: 1.5em}
td.printindex-index-section {vertical-align: top; padding-left: 1em}
th.index-letter-header-printindex {text-align: left}
</style>


</head>

<body lang="">
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap" accesskey="n" rel="next">chap</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Top</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<dl class="first-deffn def-block">
<dt class="deffn def-line" id="index-name"><span class="category-def">Category: </span><span><strong class="def-name">name</strong> <var class="def-var-arguments">argument argument2...</var><a class="copiable-link" href="#index-name"> &para;</a></span></dt>
<dt class="deffnx def-cmd-deffn def-line" id="index-AAA2"><span class="category-def">AAA1: </span><span><strong class="def-name">AAA2</strong> <var class="def-var-arguments">arg3</var><a class="copiable-link" href="#index-AAA2"> &para;</a></span></dt>
</dl>

<div class="printindex fn-printindex">
<table class="index-letters-header-printindex fn-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-N"><b>N</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex fn-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-AAA2"><code>AAA2</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-N">N</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-name"><code>name</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
<table class="index-letters-footer-printindex fn-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-N"><b>N</b></a>
 &nbsp; 
</td></tr></table>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'space_in_def_for_index'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'space_in_def_for_index'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="1">name</indexterm><defcategory bracketed="on" spaces=" " trailingspaces=" ">Category</defcategory> <deffunction bracketed="on" spaces=" " trailingspaces=" ">name</deffunction> <defparam bracketed="on" spaces=" " trailingspaces=" ">argument</defparam> <defparam>argument2...</defparam></definitionterm>
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="2">AAA2</indexterm><defcategory bracketed="on">AAA1</defcategory> <deffunction bracketed="on">AAA2</deffunction> <defparam>arg3</defparam></definitionterm></deffnx>
</deffn>

<printindex spaces=" " value="fn" line="fn"></printindex>
';

1;
