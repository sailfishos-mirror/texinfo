use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'entry_after_detailmenu'} = '*document_root C4
 *before_node_section
 *0 @node C4 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @menu C8 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *2 @detailmenu C3 l4
   |EXTRA
   |global_command_number:{1}
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_entry C4 l5
     {menu_entry_leading_text:* }
     *menu_entry_node C1
     |EXTRA
     |node_content:{second}
     |normalized:{second}
      {second}
     {menu_entry_separator:::}
     *menu_entry_description C1
      *preformatted C1
       {\\n}
    *@end C1 l6
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{detailmenu}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {detailmenu}
   *menu_comment C1
    *preformatted C3
     {empty_line:\\n}
     {Menu comment\\n}
     {empty_line:\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap first}
    |normalized:{chap-first}
     {chap first}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
   *3 @detailmenu C3 l12
   |EXTRA
   |global_command_number:{2}
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_entry C4 l13
     {menu_entry_leading_text:* }
     *menu_entry_node C1
     |EXTRA
     |node_content:{second}
     |normalized:{second}
      {second}
     {menu_entry_separator:::}
     *menu_entry_description C1
      *preformatted C1
       {\\n}
    *@end C1 l14
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{detailmenu}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {detailmenu}
   *menu_entry C4 l15
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{second}
    |normalized:{second}
     {second}
    {menu_entry_separator:::}
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
  {empty_line:\\n}
 *4 @node C1 l18 {chap first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{chap-first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap first}
 *5 @node C1 l19 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E4|up->E0]
 |node_directions:D[prev->E4|up->E0]
 |normalized:{second}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second}
';


$result_texis{'entry_after_detailmenu'} = '@node Top

@menu
@detailmenu
* second::
@end detailmenu

Menu comment

* chap first::

@detailmenu
* second::
@end detailmenu
* second::
@end menu

@node chap first
@node second
';


$result_texts{'entry_after_detailmenu'} = '
* second::

Menu comment

* chap first::

* second::
* second::

';

$result_nodes{'entry_after_detailmenu'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'second'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap-first'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'entry_after_detailmenu'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'entry_after_detailmenu'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'entry_after_detailmenu'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'entry_after_detailmenu'}[0];
$result_nodes{'entry_after_detailmenu'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'entry_after_detailmenu'}[0];
$result_nodes{'entry_after_detailmenu'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'entry_after_detailmenu'}[0];
$result_nodes{'entry_after_detailmenu'}[1] = $result_nodes{'entry_after_detailmenu'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'entry_after_detailmenu'}[2] = $result_nodes{'entry_after_detailmenu'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'entry_after_detailmenu'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'second'
          }
        },
        'up' => {}
      },
      'normalized' => 'chap-first'
    }
  },
  {}
];
$result_menus{'entry_after_detailmenu'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'entry_after_detailmenu'}[1];
$result_menus{'entry_after_detailmenu'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'entry_after_detailmenu'}[0];
$result_menus{'entry_after_detailmenu'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'entry_after_detailmenu'}[0];
$result_menus{'entry_after_detailmenu'}[2] = $result_menus{'entry_after_detailmenu'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'entry_after_detailmenu'} = [];


$result_floats{'entry_after_detailmenu'} = {};



$result_converted{'plaintext'}->{'entry_after_detailmenu'} = '* Menu:

* second::

Menu comment

* chap first::

* second::
* second::

';


$result_converted{'html'}->{'entry_after_detailmenu'} = '<!DOCTYPE html>
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
pre.menu-comment-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap-first" accesskey="n" rel="next">chap first</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#second" accesskey="1">second</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

Menu comment

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#chap-first" accesskey="2">chap first</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#second" accesskey="3">second</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#second" accesskey="4">second</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<hr>
<a class="node-id" id="chap-first"></a><div class="nav-panel">
<p>
Next: <a href="#second" accesskey="n" rel="next">second</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Top</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap first<a class="copiable-link" href="#chap-first"> &para;</a></span></h4>
<hr>
<a class="node-id" id="second"></a><div class="nav-panel">
<p>
Previous: <a href="#chap-first" accesskey="p" rel="prev">chap first</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>second<a class="copiable-link" href="#second"> &para;</a></span></h4>



</body>
</html>
';

$result_converted_errors{'html'}->{'entry_after_detailmenu'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'entry_after_detailmenu'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap first</nodenext></node>

<menu endspaces=" ">
<detailmenu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>second</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></detailmenu>
<menucomment><pre xml:space="preserve">
Menu comment

</pre></menucomment><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap first</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menucomment><pre xml:space="preserve">
</pre></menucomment><detailmenu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>second</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></detailmenu>
<menuentry><menuleadingtext>* </menuleadingtext><menunode>second</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="chap-first" spaces=" "><nodename>chap first</nodename><nodenext automatic="on">second</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<node identifier="second" spaces=" "><nodename>second</nodename><nodeprev automatic="on">chap first</nodeprev><nodeup automatic="on">Top</nodeup></node>
';

1;
