use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'space_and_commands_in_menu_node'} = '*document_root C5
 *before_node_section
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4]
 |section_level:{0}
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
  {empty_line:\\n}
  *2 @menu C11 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap  b}
    |normalized:{chap-b}
     {chap  b}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |node_content:{chap @: b}
    |normalized:{chap-b}
     {chap }
     *@:
     { b}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap b}
    |normalized:{chap-b}
     {chap b}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C4
    |EXTRA
    |node_content:{chap@ @ b}
    |normalized:{chap-b}
     {chap}
     *@ 
     *@ 
     {b}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l9
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |node_content:{chap@  b}
    |normalized:{chap-b}
     {chap}
     *@ 
     { b}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |node_content:{chap @ b}
    |normalized:{chap-b}
     {chap }
     *@ 
     {b}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C6 l11
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {label}
    {menu_entry_separator:: }
    *menu_entry_node C3
    |EXTRA
    |node_content:{chap @: b}
    |normalized:{chap-b}
     {chap }
     *@:
     { b}
    {menu_entry_separator:.}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C6 l12
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {label}
    {menu_entry_separator:: }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap b}
    |normalized:{chap-b}
     {chap b}
    {menu_entry_separator:.}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C6 l13
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {label}
    {menu_entry_separator:: }
    *menu_entry_node C4
    |EXTRA
    |node_content:{chap @ @ b}
    |normalized:{chap-b}
     {chap }
     *@ 
     *@ 
     {b}
    {menu_entry_separator:.}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l14
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
 *3 @node C1 l16
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E3|prev->E3|up->E0]
 |node_directions:D[next->E3|prev->E0|up->E0]
 |normalized:{chap-b}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap }
    *@:
    { b}
 *4 @chapter C1 l17
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
';


$result_texis{'space_and_commands_in_menu_node'} = '@node Top
@top top

@menu
* chap  b::
* chap @: b::
* chap b::
* chap@ @ b::
* chap@  b::
* chap @ b::
* label: chap @: b.
* label: chap b.
* label: chap @ @ b.
@end menu

@node chap @: b
@chapter Chap
';


$result_texts{'space_and_commands_in_menu_node'} = 'top
***

* chap  b::
* chap  b::
* chap b::
* chap  b::
* chap  b::
* chap  b::
* label: chap  b.
* label: chap b.
* label: chap   b.

1 Chap
******
';

$result_sectioning{'space_and_commands_in_menu_node'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap-b'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'space_and_commands_in_menu_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'space_and_commands_in_menu_node'};

$result_nodes{'space_and_commands_in_menu_node'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {},
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap-b'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'space_and_commands_in_menu_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'space_and_commands_in_menu_node'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'space_and_commands_in_menu_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'space_and_commands_in_menu_node'}[0];
$result_nodes{'space_and_commands_in_menu_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'space_and_commands_in_menu_node'}[0];
$result_nodes{'space_and_commands_in_menu_node'}[1] = $result_nodes{'space_and_commands_in_menu_node'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'space_and_commands_in_menu_node'} = [
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
        'next' => {},
        'prev' => {},
        'up' => {}
      },
      'normalized' => 'chap-b'
    }
  }
];
$result_menus{'space_and_commands_in_menu_node'}[1]{'extra'}{'menu_directions'}{'next'} = $result_menus{'space_and_commands_in_menu_node'}[1];
$result_menus{'space_and_commands_in_menu_node'}[1]{'extra'}{'menu_directions'}{'prev'} = $result_menus{'space_and_commands_in_menu_node'}[1];
$result_menus{'space_and_commands_in_menu_node'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'space_and_commands_in_menu_node'}[0];

$result_errors{'space_and_commands_in_menu_node'} = [
  {
    'error_line' => 'warning: @menu entry node name `chap  b\' different from node name `chap @: b\'
',
    'line_nr' => 5,
    'text' => '@menu entry node name `chap  b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap b\' different from node name `chap @: b\'
',
    'line_nr' => 7,
    'text' => '@menu entry node name `chap b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap@ @ b\' different from node name `chap @: b\'
',
    'line_nr' => 8,
    'text' => '@menu entry node name `chap@ @ b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap@  b\' different from node name `chap @: b\'
',
    'line_nr' => 9,
    'text' => '@menu entry node name `chap@  b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap @ b\' different from node name `chap @: b\'
',
    'line_nr' => 10,
    'text' => '@menu entry node name `chap @ b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap b\' different from node name `chap @: b\'
',
    'line_nr' => 12,
    'text' => '@menu entry node name `chap b\' different from node name `chap @: b\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `chap @ @ b\' different from node name `chap @: b\'
',
    'line_nr' => 13,
    'text' => '@menu entry node name `chap @ @ b\' different from node name `chap @: b\'',
    'type' => 'warning'
  }
];


$result_floats{'space_and_commands_in_menu_node'} = {};



$result_converted{'plaintext'}->{'space_and_commands_in_menu_node'} = 'top
***

* Menu:

* chap  b::
* chap  b::
* chap b::
* chap  b::
* chap  b::
* chap  b::
* label: chap  b.
* label: chap b.
* label: chap   b.

1 Chap
******

';


$result_converted{'html'}->{'space_and_commands_in_menu_node'} = '<!DOCTYPE html>
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
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chap-b" accesskey="n" rel="next">Chap</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="1">chap  b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="2">chap  b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="3">chap b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="4">chap&nbsp;&nbsp;b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="5">chap&nbsp; b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="6">chap &nbsp;b</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="7">label</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="8">label</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chap-b" accesskey="9">label</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<hr>
<div class="chapter-level-extent" id="chap-b">
<div class="nav-panel">
<p>
Next: <a href="#chap-b" accesskey="n" rel="next">Chap</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Chap"><span>1 Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h2>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'space_and_commands_in_menu_node'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap &noeos; b</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chap  b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap &noeos; b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap<spacecmd type="spc"/><spacecmd type="spc"/>b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap<spacecmd type="spc"/> b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chap <spacecmd type="spc"/>b</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle>label</menutitle><menuseparator>: </menuseparator><menunode>chap &noeos; b</menunode><menuseparator>.</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle>label</menutitle><menuseparator>: </menuseparator><menunode>chap b</menunode><menuseparator>.</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle>label</menutitle><menuseparator>: </menuseparator><menunode>chap <spacecmd type="spc"/><spacecmd type="spc"/>b</menunode><menuseparator>.</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="chap-b" spaces=" "><nodename>chap &noeos; b</nodename><nodenext automatic="on">chap &noeos; b</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chap</sectiontitle>
</chapter>
';

1;
