use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'check_htmlxref_ignore_ref_top_up'} = '*document_root C6
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C1 l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->MISSING: (line_arg)[C3]|prev->E3|up->MISSING: (line_arg)[C3]]
 |normalized:{Top}
  *arguments_line C4
   *line_arg C1
    {Top}
   *line_arg C3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{../there/no_existing_no_manual_direction}
    {(}
    {../there/no_existing_no_manual_direction}
    {)}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{first}
   |normalized:{first}
    {first}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *1 @top C6 l3 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *paragraph C4
   *@ref C4 l5
    *brace_arg C1
    |EXTRA
    |node_content:{a}
     {a}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {b}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {c}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {no_existing_no_manual.info}
   {\\n}
   *@ref C4 l6
    *brace_arg C1
    |EXTRA
    |node_content:{a}
     {a}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {b}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {c}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {no_existing_no_manual.info}
   {\\n}
  {empty_line:\\n}
  *2 @menu C5 l8
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{first}
    |normalized:{first}
     {first}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{other_no_existing_no_manual}
     {(}
     {other_no_existing_no_manual}
     {)}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter}
    |normalized:{chapter}
     {chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l12
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *3 @node C2 l14 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->MISSING: (menu_entry_node)[C3]|up->E0]
 |node_directions:D[next->MISSING: (line_arg)[C3]]
 |normalized:{first}
  *arguments_line C2
   *line_arg C1
    {first}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{no_existing_no_manual.info}
    {(}
    {no_existing_no_manual.info}
    {)}
  {empty_line:\\n}
 *4 @node C1 l16 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |menu_directions:D[prev->MISSING: (menu_entry_node)[C3]|up->E0]
 |node_directions:D[next->MISSING: (line_arg)[C3]|prev->MISSING: (line_arg)[C4]]
 |normalized:{chapter}
  *arguments_line C3
   *line_arg C1
    {chapter}
   *line_arg C3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{chap_not_existing}
    {(}
    {chap_not_existing}
    {)}
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
   |node_content:{node in dir}
   |normalized:{node-in-dir}
    {(}
    {dir}
    {)}
    {node in dir}
 *5 @chapter C3 l17 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
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
  {empty_line:\\n}
  *paragraph C2
   *@xref C1 l19
    *brace_arg C4
    |EXTRA
    |manual_content:{some_name_inf.inf}
    |node_content:{aa}
     {(}
     {some_name_inf.inf}
     {)}
     {aa}
   {.\\n}
';


$result_texis{'check_htmlxref_ignore_ref_top_up'} = '
@node Top, (../there/no_existing_no_manual_direction), first, (dir)
@top top

@ref{a, b, c, no_existing_no_manual.info}
@ref{a, b, c, no_existing_no_manual.info}

@menu
* first::
* (other_no_existing_no_manual)::
* chapter::
@end menu

@node first, (no_existing_no_manual.info)

@node chapter, (chap_not_existing), (dir)node in dir
@chapter Chapter

@xref{(some_name_inf.inf)aa}.
';


$result_texts{'check_htmlxref_ignore_ref_top_up'} = '
top
***

a
a

* first::
* (other_no_existing_no_manual)::
* chapter::


1 Chapter
*********

(some_name_inf.inf)aa.
';

$result_errors{'check_htmlxref_ignore_ref_top_up'} = [];



$result_converted{'html'}->{'check_htmlxref_ignore_ref_top_up'} = '<!DOCTYPE html>
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

<body lang="en">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="no_existing_no_manual_direction.html#Top" accesskey="n" rel="next">(../there/no_existing_no_manual_direction)</a>, Previous: <a href="#first" accesskey="p" rel="prev">first</a>, Up: (dir) &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<p><a data-manual="no_existing_no_manual.info" href="no_existing_no_manual.html#a">c</a>
<a data-manual="no_existing_no_manual.info" href="no_existing_no_manual.html#a">c</a>
</p>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">Chapter</a></li>
</ul>
<hr>
<a class="node-id" id="first"></a><div class="nav-panel">
<p>
Next: <a href="no_existing_no_manual.html#Top" accesskey="n" rel="next">(no_existing_no_manual.info)</a> &nbsp; </p>
</div>
<h4 class="node"><span>first<a class="copiable-link" href="#first"> &para;</a></span></h4>

<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Next: <a href="chap_not_existing.html#Top" accesskey="n" rel="next">(chap_not_existing)</a>, Previous: <a href="dir.html#node-in-dir" accesskey="p" rel="prev">(dir)node in dir</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>See <a data-manual="some_name_inf.inf" href="some_name_inf.html#aa">(some_name_inf.inf)aa</a>.
</p></div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'check_htmlxref_ignore_ref_top_up'} = [
  {
    'error_line' => 'warning: no HTML cross-references entry found for `../there/no_existing_no_manual_direction\'
',
    'line_nr' => 2,
    'text' => 'no HTML cross-references entry found for `../there/no_existing_no_manual_direction\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .info suffix in reference for manual `no_existing_no_manual.info\'
',
    'line_nr' => 5,
    'text' => 'do not set .info suffix in reference for manual `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `no_existing_no_manual.info\'
',
    'line_nr' => 5,
    'text' => 'no HTML cross-references entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .info suffix in reference for manual `no_existing_no_manual.info\'
',
    'line_nr' => 6,
    'text' => 'do not set .info suffix in reference for manual `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `no_existing_no_manual.info\'
',
    'line_nr' => 6,
    'text' => 'no HTML cross-references entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .info suffix in reference for manual `no_existing_no_manual.info\'
',
    'line_nr' => 14,
    'text' => 'do not set .info suffix in reference for manual `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `no_existing_no_manual.info\'
',
    'line_nr' => 14,
    'text' => 'no HTML cross-references entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `chap_not_existing\'
',
    'line_nr' => 16,
    'text' => 'no HTML cross-references entry found for `chap_not_existing\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `dir\'
',
    'line_nr' => 16,
    'text' => 'no HTML cross-references entry found for `dir\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .inf suffix in reference for manual `some_name_inf.inf\'
',
    'line_nr' => 19,
    'text' => 'do not set .inf suffix in reference for manual `some_name_inf.inf\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `some_name_inf.inf\'
',
    'line_nr' => 19,
    'text' => 'no HTML cross-references entry found for `some_name_inf.inf\'',
    'type' => 'warning'
  }
];


1;
