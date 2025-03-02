use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'ref_in_copying_insert_in_chapter'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content C2
   *0 @copying C3 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C2
     *1 @ref C1 l2
      *brace_arg C1
      |EXTRA
      |node_content:{GFDL}
      |normalized:{GFDL}
       {GFDL}
     {\\n}
    *@end C1 l3
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   {empty_line:\\n}
 *2 @node C1 l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *3 @top C2 l6 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_childs:EC[E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *4 @node C1 l8 {Intro}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |menus:EC[E6]
 |node_directions:D[prev->E2|up->E2]
 |normalized:{Intro}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Intro}
 *5 @chapter C6 l9 {Introduction}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_childs:EC[E8]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E3|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Introduction}
  {empty_line:\\n}
  *@insertcopying C1 l11
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *6 @menu C3 l13
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l14
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{GFDL}
    |normalized:{GFDL}
     {GFDL}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
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
  {empty_line:\\n}
 *7 @node C1 l17 {GFDL}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |is_target:{1}
 |menu_directions:D[up->E4]
 |node_directions:D[up->E4]
 |normalized:{GFDL}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {GFDL}
 *8 @section C2 l18 {GFDL}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E7]
 |section_directions:D[up->E5]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {GFDL}
  {empty_line:\\n}
';


$result_texis{'ref_in_copying_insert_in_chapter'} = '@copying
@ref{GFDL}
@end copying

@node Top
@top top

@node Intro
@chapter Introduction

@insertcopying

@menu
* GFDL::
@end menu

@node GFDL
@section GFDL

';


$result_texts{'ref_in_copying_insert_in_chapter'} = '
top
***

1 Introduction
**************


* GFDL::

1.1 GFDL
========

';

$result_sectioning{'ref_in_copying_insert_in_chapter'} = {
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
                    'normalized' => 'Intro'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'GFDL'
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
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0];
$result_sectioning{'ref_in_copying_insert_in_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'ref_in_copying_insert_in_chapter'};

$result_nodes{'ref_in_copying_insert_in_chapter'} = [
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
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'Intro'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {
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
      'normalized' => 'GFDL'
    }
  }
];
$result_nodes{'ref_in_copying_insert_in_chapter'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'ref_in_copying_insert_in_chapter'}[0];
$result_nodes{'ref_in_copying_insert_in_chapter'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'ref_in_copying_insert_in_chapter'}[0];
$result_nodes{'ref_in_copying_insert_in_chapter'}[1] = $result_nodes{'ref_in_copying_insert_in_chapter'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'ref_in_copying_insert_in_chapter'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'ref_in_copying_insert_in_chapter'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'ref_in_copying_insert_in_chapter'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Intro'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'GFDL'
    }
  }
];
$result_menus{'ref_in_copying_insert_in_chapter'}[2]{'extra'}{'menu_directions'}{'up'} = $result_menus{'ref_in_copying_insert_in_chapter'}[1];

$result_errors{'ref_in_copying_insert_in_chapter'} = [];


$result_floats{'ref_in_copying_insert_in_chapter'} = {};



$result_converted{'info'}->{'ref_in_copying_insert_in_chapter'} = 'This is , produced from .

*note GFDL::


File: ,  Node: Top,  Next: Intro,  Up: (dir)

top
***

* Menu:

* Intro::

 -- The Detailed Node Listing --

Introduction

* GFDL::


File: ,  Node: Intro,  Prev: Top,  Up: Top

1 Introduction
**************

*note GFDL::

* Menu:

* GFDL::


File: ,  Node: GFDL,  Up: Intro

1.1 GFDL
========


Tag Table:
Node: Top41
Node: Intro176
Node: GFDL286

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'ref_in_copying_insert_in_chapter'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- GFDL -->
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
-->
</style>


</head>

<body lang="en">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#Intro" accesskey="n" rel="next">Introduction</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#Intro" accesskey="1">Introduction</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="Intro">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Introduction"><span>1 Introduction<a class="copiable-link" href="#Introduction"> &para;</a></span></h2>

<p><a class="ref" href="#GFDL">GFDL</a>
</p>

<ul class="mini-toc">
<li><a href="#GFDL" accesskey="1">GFDL</a></li>
</ul>
<hr>
<div class="section-level-extent" id="GFDL">
<div class="nav-panel">
<p>
Up: <a href="#Intro" accesskey="u" rel="up">Introduction</a> &nbsp; </p>
</div>
<h3 class="section" id="GFDL-1"><span>1.1 GFDL<a class="copiable-link" href="#GFDL-1"> &para;</a></span></h3>

</div>
</div>
</div>



</body>
</html>
';


$result_converted{'latex_text'}->{'ref_in_copying_insert_in_chapter'} = '
\\begin{document}
\\label{anchor:Top}%
\\chapter{{Introduction}}
\\label{anchor:Intro}%

\\hyperref[anchor:GFDL]{Section~\\ref*{anchor:GFDL} [GFDL], page~\\pageref*{anchor:GFDL}}


\\section{{GFDL}}
\\label{anchor:GFDL}%

';

1;
