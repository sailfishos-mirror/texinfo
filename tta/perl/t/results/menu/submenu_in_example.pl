use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'submenu_in_example'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[MISSING: (preformatted)[C1]]
 |is_target:{1}
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *1 @example C4 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C3
    {empty_line:\\n}
    {in example\\n}
    {empty_line:\\n}
   *2 @menu C9 l7
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_comment C1
     *preformatted C2
      {in submenu\\n}
      {empty_line:\\n}
    *3 @menu C2 l10
     *arguments_line C1
      *block_line_arg
      |INFO
      |spaces_after_argument:
       |{\\n}
     *@end C1 l11
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
    *menu_comment C1
     *preformatted C1
      {empty_line:\\n}
    *4 @menu C3 l13
     *arguments_line C1
      *block_line_arg
      |INFO
      |spaces_after_argument:
       |{\\n}
     *menu_comment C1
      *preformatted C1
       {in submenu\\n}
     *@end C1 l15
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
    *menu_comment C1
     *preformatted C1
      {empty_line:\\n}
    *5 @menu C3 l17
     *arguments_line C1
      *block_line_arg
      |INFO
      |spaces_after_argument:
       |{\\n}
     *menu_comment C1
      *6 @quotation C3 l18
       *arguments_line C1
        *block_line_arg
        |INFO
        |spaces_after_argument:
         |{\\n}
       *preformatted C1
        {A quot---ation in submenu\\n}
       *@end C1 l20
       |INFO
       |spaces_before_argument:
        |{ }
       |EXTRA
       |text_arg:{quotation}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {quotation}
     *@end C1 l21
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
    *menu_comment C5
     *preformatted C1
      {empty_line:\\n}
     *7 @subheading C1 l23
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |global_command_number:{1}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {subheading in menu}
     *preformatted C1
     |EXTRA
     |associated_anchor_command:[E0]
      {empty_line:\\n}
     *8 @enumerate C3 l25
     |EXTRA
     |enumerate_specification:{1}
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{\\n}
      *@item C1 l26
      |EXTRA
      |item_number:{1}
       *preformatted C2
        {ignorable_spaces_after_command: }
        {e--numerate\\n}
      *@end C1 l27
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |text_arg:{enumerate}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {enumerate}
     *preformatted C1
      {empty_line:\\n}
    *@end C1 l29
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
   *@end C1 l30
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


$result_texis{'submenu_in_example'} = '@node first

@example

in example

@menu
in submenu

@menu
@end menu

@menu
in submenu
@end menu

@menu
@quotation
A quot---ation in submenu
@end quotation
@end menu

@subheading subheading in menu

@enumerate
@item e--numerate
@end enumerate

@end menu
@end example
';


$result_texts{'submenu_in_example'} = '

in example

in submenu


in submenu

A quot---ation in submenu

subheading in menu
------------------

1. e--numerate

';

$result_errors{'submenu_in_example'} = [
  {
    'error_line' => 'warning: @menu in invalid context
',
    'line_nr' => 7,
    'text' => '@menu in invalid context',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu in invalid context
',
    'line_nr' => 10,
    'text' => '@menu in invalid context',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu in invalid context
',
    'line_nr' => 13,
    'text' => '@menu in invalid context',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu in invalid context
',
    'line_nr' => 17,
    'text' => '@menu in invalid context',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'submenu_in_example'} = '
     in example

* Menu:

     in submenu

* Menu:


* Menu:

     in submenu

* Menu:

          A quot--ation in submenu

     subheading in menu
     ------------------


       1. e-numerate

';


$result_converted{'html'}->{'submenu_in_example'} = '<!DOCTYPE html>
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
div.example {margin-left: 3.2em}
pre.menu-comment-preformatted {font-family: serif}
-->
</style>


</head>

<body lang="en">
<a class="node" id="first"></a>
<div class="example">
<pre class="example-preformatted">

in example

</pre><table class="menu"><tr><td>
<pre class="menu-comment-preformatted">in submenu

</pre><pre class="menu-comment-preformatted">

</pre><table class="menu"><tr><td>
<pre class="menu-comment-preformatted">in submenu
</pre></td></tr></table>
<pre class="menu-comment-preformatted">

</pre><table class="menu"><tr><td>
<blockquote class="quotation">
<pre class="menu-comment-preformatted">A quot---ation in submenu
</pre></blockquote>
</td></tr></table>
<pre class="menu-comment-preformatted">

</pre><strong class="subheading" id="subheading-in-menu">subheading in menu</strong>
<pre class="menu-comment-preformatted">

</pre><ol class="enumerate">
<li> <pre class="menu-comment-preformatted">e--numerate
</pre></li></ol>
<pre class="menu-comment-preformatted">

</pre></td></tr></table>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'submenu_in_example'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'submenu_in_example'} = '<node identifier="first" spaces=" "><nodename>first</nodename></node>

<example endspaces=" ">
<pre xml:space="preserve">
in example

</pre><menu endspaces=" ">
<menucomment><pre xml:space="preserve">in submenu

</pre></menucomment><menu endspaces=" ">
</menu>
<menucomment><pre xml:space="preserve">
</pre></menucomment><menu endspaces=" ">
<menucomment><pre xml:space="preserve">in submenu
</pre></menucomment></menu>
<menucomment><pre xml:space="preserve">
</pre></menucomment><menu endspaces=" ">
<menucomment><quotation endspaces=" ">
<pre xml:space="preserve">A quot---ation in submenu
</pre></quotation>
</menucomment></menu>
<menucomment><pre xml:space="preserve">
</pre><subheading spaces=" ">subheading in menu</subheading>
<pre xml:space="preserve">
</pre><enumerate first="1" endspaces=" ">
<listitem><pre xml:space="preserve"> e--numerate
</pre></listitem></enumerate>
<pre xml:space="preserve">
</pre></menucomment></menu>
</example>
';

1;
