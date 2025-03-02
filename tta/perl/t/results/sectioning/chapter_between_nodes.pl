use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'chapter_between_nodes'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content
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


$result_texis{'chapter_between_nodes'} = '@node Top
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


$result_texts{'chapter_between_nodes'} = 'top section
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

$result_sectioning{'chapter_between_nodes'} = {
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
$result_sectioning{'chapter_between_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'chapter_between_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'chapter_between_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'chapter_between_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'chapter_between_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'chapter_between_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'chapter_between_nodes'};

$result_nodes{'chapter_between_nodes'} = [
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
$result_nodes{'chapter_between_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'chapter_between_nodes'}[0];
$result_nodes{'chapter_between_nodes'}[1] = $result_nodes{'chapter_between_nodes'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'chapter_between_nodes'} = [
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
$result_menus{'chapter_between_nodes'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'chapter_between_nodes'}[0];

$result_errors{'chapter_between_nodes'} = [];


$result_floats{'chapter_between_nodes'} = {};



$result_converted{'info'}->{'chapter_between_nodes'} = 'This is , produced from chapter_between_nodes.texi.


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
Node: Top53
Node: section node203

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'chapter_between_nodes'} = '<!DOCTYPE html>
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

<link href="#Top" rel="start" title="Top">
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
ul.toc-numbered-mark {list-style: none}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#section-node" accesskey="n" rel="next">section</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="top" id="top-section"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h1>
<p>Top node
</p>

<ul class="mini-toc">
<li><a href="#Chapter" accesskey="1">Chapter</a></li>
</ul>
<div class="chapter-level-extent" id="Chapter">
<h2 class="chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>In chapter
</p>
<ul class="mini-toc">
<li><a href="#section-node" accesskey="1">section</a></li>
</ul>
<hr>
<div class="section-level-extent" id="section-node">
<div class="nav-panel">
<p>
Up: <a href="#Top" accesskey="u" rel="up">top section</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="section" id="section"><span>1.1 section<a class="copiable-link" href="#section"> &para;</a></span></h3>

<p>section.
</p>
<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-Chapter" href="#Chapter">1 Chapter</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-section" href="#section-node">1.1 section</a></li>
  </ul></li>
</ul>
</div>
</div>
</div>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'chapter_between_nodes'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">section node</nodenext></node>
<top spaces=" "><sectiontitle>top section</sectiontitle>
<para>Top node
</para>
<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>section node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para>In chapter
</para>
<node identifier="section-node" spaces=" "><nodename>section node</nodename><nodenext></nodenext><nodeprev></nodeprev><nodeup>Top</nodeup></node>
<section spaces=" "><sectiontitle>section</sectiontitle>

<para>section.
</para>
<contents></contents>
</section>
</chapter>
';


$result_converted{'docbook'}->{'chapter_between_nodes'} = '<sect1 label="1.1" id="section-node">
<title>section</title>

<para>section.
</para>
</sect1>
</chapter>
';


$result_converted{'latex_text'}->{'chapter_between_nodes'} = '\\begin{document}
\\label{anchor:Top}%
\\section{{section}}
\\label{anchor:section-node}%

section.

\\tableofcontents\\newpage
';

1;
