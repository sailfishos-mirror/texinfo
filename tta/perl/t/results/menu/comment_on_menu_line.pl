use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'comment_on_menu_line'} = '*document_root C4
 *before_node_section
 *0 @node C4 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |associated_title_command:[E2]
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @menu C3 l3
  |INFO
  |spaces_before_argument:
   |{  }
   *arguments_line C1
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg:\\n}
   *menu_entry C4 l4
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
   *@end C1 l5
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
 *2 @chapter C1 l7 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
 *3 @node C1 l8 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
';


$result_texis{'comment_on_menu_line'} = '@node Top

@menu  @c
* first::
@end menu

@chapter first
@node first
';


$result_texts{'comment_on_menu_line'} = '
* first::

1 first
*******
';

$result_errors{'comment_on_menu_line'} = [];



$result_converted{'plaintext'}->{'comment_on_menu_line'} = '* Menu:

* first::

1 first
*******

';


$result_converted{'html'}->{'comment_on_menu_line'} = '<!DOCTYPE html>
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
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
-->
</style>


</head>

<body lang="">
<div class="chapter-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#first" accesskey="n" rel="next">first</a> &nbsp; </p>
</div>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#first" accesskey="1">first</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<h2 class="chapter" id="first-1"><span>1 first<a class="copiable-link" href="#first-1"> &para;</a></span></h2>
<hr>
<a class="node-id" id="first"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">first</a>, Up: <a href="#Top" accesskey="u" rel="up">first</a> &nbsp; </p>
</div>
<h4 class="node"><span>first<a class="copiable-link" href="#first"> &para;</a></span></h4>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'comment_on_menu_line'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'comment_on_menu_line'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">first</nodenext></node>

<menu spaces="  " endspaces=" "><!-- c -->
<menuentry><menuleadingtext>* </menuleadingtext><menunode>first</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<chapter spaces=" "><sectiontitle>first</sectiontitle>
</chapter>
<node identifier="first" spaces=" "><nodename>first</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
';

1;
