use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'menu_pointing_to_anchor'} = '*document_root C3
 *before_node_section
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E3]
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C8 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
  *paragraph C1
   {Text\\n}
  {empty_line:\\n}
  *2 @anchor C1 l6
  |EXTRA
  |is_target:{1}
  |menu_directions:D[up->E0]
  |normalized:{An-anchor}
   *brace_arg C1
    {An anchor}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
  *3 @menu C3 l8
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{An anchor}
    |normalized:{An-anchor}
     {An anchor}
    {menu_entry_separator:::                }
    *menu_entry_description C1
     *preformatted C1
      {menu entry pointing to the anchor.\\n}
   *@end C1 l10
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


$result_texis{'menu_pointing_to_anchor'} = '@node Top
@top top

Text

@anchor{An anchor}

@menu
* An anchor::                menu entry pointing to the anchor.
@end menu
';


$result_texts{'menu_pointing_to_anchor'} = 'top
***

Text


* An anchor::                menu entry pointing to the anchor.
';

$result_sectioning{'menu_pointing_to_anchor'} = {
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
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'menu_pointing_to_anchor'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'menu_pointing_to_anchor'};

$result_nodes{'menu_pointing_to_anchor'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'anchor',
          'extra' => {
            'normalized' => 'An-anchor'
          }
        }
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'menu_pointing_to_anchor'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  }
];

$result_errors{'menu_pointing_to_anchor'} = [];


$result_floats{'menu_pointing_to_anchor'} = {};



$result_converted{'plaintext'}->{'menu_pointing_to_anchor'} = 'top
***

Text

* Menu:

* An anchor::                menu entry pointing to the anchor.
';


$result_converted{'html'}->{'menu_pointing_to_anchor'} = '<!DOCTYPE html>
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
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<p>Text
</p>
<a class="anchor" id="An-anchor"></a>
<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#An-anchor" accesskey="1">An anchor</a>:</td><td class="menu-entry-description">menu entry pointing to the anchor.
</td></tr>
</table>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'menu_pointing_to_anchor'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">An anchor</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<para>Text
</para>
<anchor identifier="An-anchor">An anchor</anchor>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>An anchor</menunode><menuseparator>::                </menuseparator><menudescription><pre xml:space="preserve">menu entry pointing to the anchor.
</pre></menudescription></menuentry></menu>
</top>
';

1;
