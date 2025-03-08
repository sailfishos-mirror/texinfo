use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'menu_in_example'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *1 @example C3 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *2 @menu C6 l4
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_entry C4 l5
     {menu_entry_leading_text:* }
     *menu_entry_node C3
     |EXTRA
     |manual_content:{entry}
      {(}
      {entry}
      {)}
     {menu_entry_separator:::}
     *menu_entry_description C2
      *preformatted C1
       {\\n}
      *3 @cartouche C3 l6
       *arguments_line C1
        *block_line_arg
        |INFO
        |spaces_after_argument:
         |{\\n}
       *preformatted C1
        {in cartouche in description in menu in example\\n}
       *@end C1 l8
       |INFO
       |spaces_before_argument:
        |{ }
       |EXTRA
       |text_arg:{cartouche}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {cartouche}
    *menu_comment C3
     *preformatted C1
      {after_menu_description_line:\\n}
     *4 @cartouche C3 l10
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{\\n}
      *preformatted C1
       {in cartouche in menu comment in menu in example\\n}
      *@end C1 l12
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |text_arg:{cartouche}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {cartouche}
     *preformatted C1
      {empty_line:\\n}
    *menu_entry C4 l14
     {menu_entry_leading_text:* }
     *menu_entry_node C5
     |EXTRA
     |manual_content:{node}
     |node_content:{menu}
     |normalized:{menu}
      {(}
      {node}
      {)}
      { }
      {menu}
     {menu_entry_separator:::      }
     *menu_entry_description C1
      *preformatted C1
       {a node in menu\\n}
    *menu_entry C6 l15
     {menu_entry_leading_text:* }
     *menu_entry_name C1
      {a menu name}
     {menu_entry_separator::}
     *menu_entry_node C5
     |EXTRA
     |manual_content:{other}
     |node_content:{node}
     |normalized:{node}
      {(}
      {other}
      {)}
      { }
      {node}
     {menu_entry_separator:. }
     *menu_entry_description C1
      *preformatted C1
       {\\n}
    *@end C1 l16
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
   *@end C1 l17
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
';


$result_texis{'menu_in_example'} = '@node first

@example
@menu
* (entry)::
@cartouche
in cartouche in description in menu in example
@end cartouche

@cartouche
in cartouche in menu comment in menu in example
@end cartouche

* (node) menu::      a node in menu
* a menu name:(other) node. 
@end menu
@end example
';


$result_texts{'menu_in_example'} = '
* (entry)::
in cartouche in description in menu in example

in cartouche in menu comment in menu in example

* (node) menu::      a node in menu
* a menu name:(other) node. 
';

$result_errors{'menu_in_example'} = [
  {
    'error_line' => 'warning: @menu in invalid context
',
    'line_nr' => 4,
    'text' => '@menu in invalid context',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'menu_in_example'} = '* Menu:

     * (entry)::
     in cartouche in description in menu in example

     in cartouche in menu comment in menu in example

     * (node) menu::      a node in menu
     * a menu name:(other) node.
';


$result_converted{'html'}->{'menu_in_example'} = '<!DOCTYPE html>
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

<link href="#first" rel="start" title="first">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
div.example {margin-left: 3.2em}
pre.menu-comment-preformatted {font-family: serif}
pre.menu-entry-description-preformatted {font-family: serif; display: inline}
pre.menu-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
table.cartouche {border-style: solid; border-radius: 0.5em}
-->
</style>


</head>

<body lang="en">
<h4 class="node" id="first"><span>first<a class="copiable-link" href="#first"> &para;</a></span></h4>

<div class="example">
<table class="menu"><tr><td>
<pre class="menu-preformatted">&bull; <a href="entry.html#Top" accesskey="1">(entry)</a>::</pre><pre class="menu-entry-description-preformatted">

</pre><table class="cartouche"><tr><td>
<pre class="menu-preformatted">in cartouche in description in menu in example
</pre></td></tr></table>
<pre class="menu-comment-preformatted">

</pre><table class="cartouche"><tr><td>
<pre class="menu-comment-preformatted">in cartouche in menu comment in menu in example
</pre></td></tr></table>
<pre class="menu-comment-preformatted">

</pre><pre class="menu-preformatted">&bull; <a href="node.html#menu" accesskey="2">(node) menu</a>::      </pre><pre class="menu-entry-description-preformatted">a node in menu
</pre><pre class="menu-preformatted">&bull; a menu name:<a href="other.html#node" accesskey="3">(other) node</a>. </pre><pre class="menu-entry-description-preformatted">

</pre></td></tr></table>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'menu_in_example'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'menu_in_example'} = '<node identifier="first" spaces=" "><nodename>first</nodename></node>

<example endspaces=" ">
<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>(entry)</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre><cartouche endspaces=" ">
<pre xml:space="preserve">in cartouche in description in menu in example
</pre></cartouche>
</menudescription></menuentry><menucomment><pre xml:space="preserve">
</pre><cartouche endspaces=" ">
<pre xml:space="preserve">in cartouche in menu comment in menu in example
</pre></cartouche>
<pre xml:space="preserve">
</pre></menucomment><menuentry><menuleadingtext>* </menuleadingtext><menunode>(node) menu</menunode><menuseparator>::      </menuseparator><menudescription><pre xml:space="preserve">a node in menu
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle>a menu name</menutitle><menuseparator>:</menuseparator><menunode>(other) node</menunode><menuseparator>. </menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>
</example>
';

1;
