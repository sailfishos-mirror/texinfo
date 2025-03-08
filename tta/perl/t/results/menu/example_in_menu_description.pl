use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'example_in_menu_description'} = '*document_root C3
 *before_node_section
 *0 @node C1 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
 *1 @top C3 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *2 @menu C4 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{manual}
     {(}
     {manual}
     {)}
    {menu_entry_separator:::}
    *menu_entry_description C2
     *preformatted C1
      {\\n}
     *3 @example C3 l6
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{\\n}
      *preformatted C3
       {in \\n}
       {empty_line:\\n}
       {example\\n}
      *@end C1 l10
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
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
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
';


$result_texis{'example_in_menu_description'} = '@node first
@top top

@menu
* (manual)::
@example
in 

example
@end example

@end menu
';


$result_texts{'example_in_menu_description'} = 'top
***

* (manual)::
in 

example

';

$result_errors{'example_in_menu_description'} = [];



$result_converted{'plaintext'}->{'example_in_menu_description'} = 'top
***

* Menu:

* (manual)::
     in

     example

';


$result_converted{'html'}->{'example_in_menu_description'} = '<!DOCTYPE html>
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

<link href="#first" rel="start" title="first">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
div.example {margin-left: 3.2em}
pre.menu-comment-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="first">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="manual.html#Top" accesskey="1">(manual)</a>:</td><td class="menu-entry-description">
<div class="example">
<pre class="example-preformatted">in 

example
</pre></div>
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr></table>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'example_in_menu_description'} = '<node identifier="first" spaces=" "><nodename>first</nodename></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>(manual)</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre><example endspaces=" ">
<pre xml:space="preserve">in 

example
</pre></example>
</menudescription></menuentry><menucomment><pre xml:space="preserve">
</pre></menucomment></menu>
</top>
';

1;
