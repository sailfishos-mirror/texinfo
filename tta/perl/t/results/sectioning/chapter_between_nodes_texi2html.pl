use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'chapter_between_nodes_texi2html'} = '*document_root C6
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C5 l2 {top section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  *paragraph C1
   {Top node\\n}
  {empty_line:\\n}
  *2 @menu C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section node}
    |normalized:{section-node}
     {section node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l7
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
 *3 @chapter C4 l9 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E5]
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
  *paragraph C1
   {In chapter\\n}
  {empty_line:\\n}
 *4 @node C1 l13 {section node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[up->E0]
 |normalized:{section-node}
  *arguments_line C4
   *line_arg C1
    {section node}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *5 @section C5 l14 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_directions:D[up->E3]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
  *paragraph C1
   {section.\\n}
  {empty_line:\\n}
  *@contents C1 l18
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'chapter_between_nodes_texi2html'} = '@node Top
@top top section
Top node

@menu
* section node::
@end menu

@chapter Chapter

In chapter

@node section node,,,Top
@section section

section.

@contents
';


$result_texts{'chapter_between_nodes_texi2html'} = 'top section
***********
Top node

* section node::

1 Chapter
*********

In chapter

1.1 section
===========

section.

';

$result_sectioning{'chapter_between_nodes_texi2html'} = {
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
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'section-node'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
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
$result_sectioning{'chapter_between_nodes_texi2html'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'chapter_between_nodes_texi2html'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_texi2html'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'chapter_between_nodes_texi2html'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_texi2html'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'chapter_between_nodes_texi2html'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_texi2html'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'chapter_between_nodes_texi2html'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes_texi2html'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'chapter_between_nodes_texi2html'};

$result_nodes{'chapter_between_nodes_texi2html'} = [
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
              'cmdname' => 'section',
              'extra' => {
                'section_number' => '1.1'
              }
            },
            'node_directions' => {
              'up' => {}
            },
            'normalized' => 'section-node'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'chapter_between_nodes_texi2html'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'chapter_between_nodes_texi2html'}[0];
$result_nodes{'chapter_between_nodes_texi2html'}[1] = $result_nodes{'chapter_between_nodes_texi2html'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'chapter_between_nodes_texi2html'} = [
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
        'up' => {}
      },
      'normalized' => 'section-node'
    }
  }
];
$result_menus{'chapter_between_nodes_texi2html'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'chapter_between_nodes_texi2html'}[0];

$result_errors{'chapter_between_nodes_texi2html'} = [];


$result_floats{'chapter_between_nodes_texi2html'} = {};



$result_converted{'info'}->{'chapter_between_nodes_texi2html'} = 'This is , produced from .


File: ,  Node: Top,  Next: section node,  Up: (dir)

top section
***********

Top node

* Menu:

* section node::

1 Chapter
*********

In chapter


File: ,  Node: section node,  Up: Top

1.1 section
===========

section.


Tag Table:
Node: Top27
Node: section node177

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'chapter_between_nodes_texi2html'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top section</title>

<meta name="description" content="top section">
<meta name="keywords" content="top section">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span.program-in-footer {font-size: smaller}
span:hover a.copiable-link {visibility: visible}
table.direction-about {border-collapse: collapse}
td.button-direction-about {text-align: center; border-width: thin; border-right-style: solid}
td.description-direction-about {border-width: thin; border-right-style: solid; border-left-style: solid}
td.example-direction-about {border-width: thin; border-left-style: solid}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
td.name-direction-about {text-align: center; border-width: thin; border-right-style: solid; border-left-style: solid}
th.button-direction-about {border-width: thin; border-bottom-style: solid; border-right-style: solid}
th.description-direction-about {border-width: thin; border-bottom-style: solid; border-right-style: solid; border-left-style: solid}
th.example-direction-about {border-width: thin; border-bottom-style: solid; border-left-style: solid}
th.name-direction-about {border-width: thin; border-bottom-style: solid; border-right-style: solid; border-left-style: solid}
ul.toc-numbered-mark {list-style: none}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<table class="nav-panel">
<tr><td class="nav-button">[ &lt; ]</td>
<td class="nav-button">[<a href="#Chapter" title="Next section in reading order" rel="next"> &gt; </a>]</td>
<td class="nav-button"> &nbsp; </td>
<td class="nav-button">[<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</td>
<td class="nav-button">[Index]</td>
<td class="nav-button">[<a href="#SEC_About" title="About (help)" rel="help"> ? </a>]</td>
</tr></table>
<h1 class="top" id="top-section"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h1>
<p>Top node
</p>
<table class="menu">
<tr><td class="menu-entry-destination"><a href="#section-node">1.1 section</a></td><td class="menu-entry-description">
</td></tr>
</table>

<hr style="height: 6px;">
<div class="chapter-level-extent" id="Chapter">
<table class="nav-panel">
<tr><td class="nav-button">[<a href="#Top" title="Beginning of this chapter or previous chapter"> &lt;&lt; </a>]</td>
<td class="nav-button">[<a href="#Top" title="Previous section in reading order" rel="prev"> &lt; </a>]</td>
<td class="nav-button">[<a href="#Top" title="Up section" rel="up"> Up </a>]</td>
<td class="nav-button">[<a href="#section-node" title="Next section in reading order" rel="next"> &gt; </a>]</td>
<td class="nav-button">[ &gt;&gt; ]</td>
<td class="nav-button"> &nbsp; </td>
<td class="nav-button"> &nbsp; </td>
<td class="nav-button"> &nbsp; </td>
<td class="nav-button"> &nbsp; </td>
<td class="nav-button">[<a href="#Top" title="Cover (top) of document" rel="start">Top</a>]</td>
<td class="nav-button">[<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</td>
<td class="nav-button">[Index]</td>
<td class="nav-button">[<a href="#SEC_About" title="About (help)" rel="help"> ? </a>]</td>
</tr></table>
<h1 class="chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h1>

<p>In chapter
</p>
<hr>
<div class="section-level-extent" id="section-node">
<table class="nav-panel">
<tr><td class="nav-button">[<a href="#Chapter" title="Beginning of this chapter or previous chapter"> &lt;&lt; </a>]</td>
<td class="nav-button">[<a href="#Chapter" title="Previous section in reading order" rel="prev"> &lt; </a>]</td>
<td class="nav-button">[<a href="#Chapter" title="Up section" rel="up"> Up </a>]</td>
<td class="nav-button">[ &gt; ]</td>
<td class="nav-button">[ &gt;&gt; ]</td>
<td class="nav-button"> &nbsp; </td>
<td class="nav-button"> &nbsp; </td>
<td class="nav-button"> &nbsp; </td>
<td class="nav-button"> &nbsp; </td>
<td class="nav-button">[<a href="#Top" title="Cover (top) of document" rel="start">Top</a>]</td>
<td class="nav-button">[<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</td>
<td class="nav-button">[Index]</td>
<td class="nav-button">[<a href="#SEC_About" title="About (help)" rel="help"> ? </a>]</td>
</tr></table>
<h2 class="section" id="section"><span>1.1 section<a class="copiable-link" href="#section"> &para;</a></span></h2>

<p>section.
</p>
<div class="region-contents" id="SEC_Contents">
<h1 class="contents-heading">Table of Contents</h1>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-Chapter" href="#Chapter">1 Chapter</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-section" href="#section-node">1.1 section</a></li>
  </ul></li>
</ul>
</div>
</div>
<hr style="height: 6px;">
</div>
</div>
</div>
<div class="element-about" id="SEC_About">
<table class="nav-panel">
<tr><td class="nav-button">[<a href="#Top" title="Cover (top) of document" rel="start">Top</a>]</td>
<td class="nav-button">[<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</td>
<td class="nav-button">[Index]</td>
<td class="nav-button">[<a href="#SEC_About" title="About (help)" rel="help"> ? </a>]</td>
</tr></table>
<h1 class="about-heading">About This Document</h1>

<p>
  This document was generated on <em class="emph">a sunny day</em>.
</p>
<p>
  The buttons in the navigation panels have the following meaning:
</p>
<table class="direction-about">
  <tr>
    <th class="button-direction-about"> Button </th>
    <th class="name-direction-about"> Name </th>
    <th class="description-direction-about"> Go to </th>
    <th class="example-direction-about"> From 1.2.3 go to</th>
  </tr>
  <tr>
    <td class="button-direction-about"> [ &lt;&lt; ] </td>
    <td class="name-direction-about">FastBack</td>
    <td class="description-direction-about">Beginning of this chapter or previous chapter</td>
    <td class="example-direction-about">1</td>
  </tr>
  <tr>
    <td class="button-direction-about"> [ &lt; ] </td>
    <td class="name-direction-about">Back</td>
    <td class="description-direction-about">Previous section in reading order</td>
    <td class="example-direction-about">1.2.2</td>
  </tr>
  <tr>
    <td class="button-direction-about"> [ Up ] </td>
    <td class="name-direction-about">Up</td>
    <td class="description-direction-about">Up section</td>
    <td class="example-direction-about">1.2</td>
  </tr>
  <tr>
    <td class="button-direction-about"> [ &gt; ] </td>
    <td class="name-direction-about">Forward</td>
    <td class="description-direction-about">Next section in reading order</td>
    <td class="example-direction-about">1.2.4</td>
  </tr>
  <tr>
    <td class="button-direction-about"> [ &gt;&gt; ] </td>
    <td class="name-direction-about">FastForward</td>
    <td class="description-direction-about">Next chapter</td>
    <td class="example-direction-about">2</td>
  </tr>
  <tr>
    <td class="button-direction-about"> [Top] </td>
    <td class="name-direction-about">Top</td>
    <td class="description-direction-about">Cover (top) of document</td>
    <td class="example-direction-about"> &nbsp; </td>
  </tr>
  <tr>
    <td class="button-direction-about"> [Contents] </td>
    <td class="name-direction-about">Contents</td>
    <td class="description-direction-about">Table of contents</td>
    <td class="example-direction-about"> &nbsp; </td>
  </tr>
  <tr>
    <td class="button-direction-about"> [Index] </td>
    <td class="name-direction-about">Index</td>
    <td class="description-direction-about">Index</td>
    <td class="example-direction-about"> &nbsp; </td>
  </tr>
  <tr>
    <td class="button-direction-about"> [ ? ] </td>
    <td class="name-direction-about">About</td>
    <td class="description-direction-about">About (help)</td>
    <td class="example-direction-about"> &nbsp; </td>
  </tr>
</table>

<p>
  where the <strong class="strong"> Example </strong> assumes that the current position is at <strong class="strong"> Subsubsection One-Two-Three </strong> of a document of the following structure:
</p>

<ul>
  <li> 1. Section One
    <ul>
      <li>1.1 Subsection One-One
        <ul>
          <li>...</li>
        </ul>
      </li>
      <li>1.2 Subsection One-Two
        <ul>
          <li>1.2.1 Subsubsection One-Two-One</li>
          <li>1.2.2 Subsubsection One-Two-Two</li>
          <li>1.2.3 Subsubsection One-Two-Three &nbsp; &nbsp;
            <strong>&lt;== Current Position </strong></li>
          <li>1.2.4 Subsubsection One-Two-Four</li>
        </ul>
      </li>
      <li>1.3 Subsection One-Three
        <ul>
          <li>...</li>
        </ul>
      </li>
      <li>1.4 Subsection One-Four</li>
    </ul>
  </li>
</ul>
</div><hr>
<p>
  <span class="program-in-footer">This document was generated on <em class="emph">a sunny day</em>.</span>
</p>


</body>
</html>
';

1;
