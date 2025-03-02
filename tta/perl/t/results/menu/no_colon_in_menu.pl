use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_colon_in_menu'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *1 @menu C3 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_comment C1
    *preformatted C1
     {* a\\n}
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
';


$result_texis{'no_colon_in_menu'} = '@node first

@menu
* a
@end menu
';


$result_texts{'no_colon_in_menu'} = '
* a
';

$result_nodes{'no_colon_in_menu'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_menus{'no_colon_in_menu'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'first'
    }
  }
];

$result_errors{'no_colon_in_menu'} = [];


$result_floats{'no_colon_in_menu'} = {};



$result_converted{'plaintext'}->{'no_colon_in_menu'} = '* Menu:

* a
';


$result_converted{'html'}->{'no_colon_in_menu'} = '<!DOCTYPE html>
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
pre.menu-comment-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<h4 class="node" id="first"><span>first<a class="copiable-link" href="#first"> &para;</a></span></h4>

<table class="menu">
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">* a
</pre></th></tr></table>



</body>
</html>
';

$result_converted_errors{'html'}->{'no_colon_in_menu'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'no_colon_in_menu'} = '<node identifier="first" spaces=" "><nodename>first</nodename></node>

<menu endspaces=" ">
<menucomment><pre xml:space="preserve">* a
</pre></menucomment></menu>
';

1;
