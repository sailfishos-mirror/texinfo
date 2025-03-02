use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'sections_test_no_use_nodes_use_node_directions'} = '*document_root C12
 *before_node_section C1
  *preamble_before_content
 *0 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1]
 |section_directions:D[next->E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E5|E9]
  ||section_level:{-1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *1 @chapter C2 l3 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_directions:D[up->E0]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
 *2 @section C2 l5 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_directions:D[up->E1]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *3 @subsection C2 l7 {subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
 |section_directions:D[up->E2]
 |section_level:{3}
 |section_number:{1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection}
  {empty_line:\\n}
 *4 @subsubsection C2 l9 {subsubsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E3]
 |section_level:{4}
 |section_number:{1.1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsubsection}
  {empty_line:\\n}
 *5 @part C2 l11 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E6]
 |section_childs:EC[E6|E7|E8]
 |section_directions:D[next->E9|prev->E0]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *6 @chapter C2 l13 {chapter in part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E5]
 |section_directions:D[next->E7|up->E5]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E7|prev->E1|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter in part}
  {empty_line:\\n}
 *7 @chapter C2 l15 {second chapter in part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E8|prev->E6|up->E5]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E8|prev->E6|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second chapter in part}
  {empty_line:\\n}
 *8 @unnumbered C2 l17 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E7|up->E5]
 |section_level:{1}
 |toplevel_directions:D[next->E9|prev->E7|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  {empty_line:\\n}
 *9 @appendix C2 l19 {appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E10]
 |section_directions:D[prev->E5]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E8|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendix}
  {empty_line:\\n}
 *10 @appendixsec C1 l21 {appendixsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E9]
 |section_level:{2}
 |section_number:{A.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendixsec}
';


$result_texis{'sections_test_no_use_nodes_use_node_directions'} = '@top top

@chapter chapter

@section section

@subsection subsection

@subsubsection subsubsection

@part part

@chapter chapter in part

@chapter second chapter in part

@unnumbered unnumbered

@appendix appendix

@appendixsec appendixsec
';


$result_texts{'sections_test_no_use_nodes_use_node_directions'} = 'top
***

1 chapter
*********

1.1 section
===========

1.1.1 subsection
----------------

1.1.1.1 subsubsection
.....................

part
****

2 chapter in part
*****************

3 second chapter in part
************************

unnumbered
**********

Appendix A appendix
*******************

A.1 appendixsec
===============
';

$result_sectioning{'sections_test_no_use_nodes_use_node_directions'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'section_childs' => [
                        {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'section_childs' => [
                              {
                                'cmdname' => 'subsubsection',
                                'extra' => {
                                  'section_directions' => {
                                    'up' => {}
                                  },
                                  'section_level' => 4,
                                  'section_number' => '1.1.1.1'
                                }
                              }
                            ],
                            'section_directions' => {
                              'up' => {}
                            },
                            'section_level' => 3,
                            'section_number' => '1.1.1'
                          }
                        }
                      ],
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
          'section_directions' => {},
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
              'associated_part' => {},
              'section_directions' => {
                'up' => {}
              },
              'section_level' => 1,
              'section_number' => '2',
              'toplevel_directions' => {
                'prev' => {},
                'up' => {}
              }
            }
          },
          'section_childs' => [
            {},
            {
              'cmdname' => 'chapter',
              'extra' => {
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '3',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'unnumbered',
              'extra' => {
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 0
        }
      },
      {
        'cmdname' => 'appendix',
        'extra' => {
          'section_childs' => [
            {
              'cmdname' => 'appendixsec',
              'extra' => {
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 2,
                'section_number' => 'A.1'
              }
            }
          ],
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 1,
          'section_number' => 'A',
          'toplevel_directions' => {
            'prev' => {},
            'up' => {}
          }
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0] = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[2]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[2];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[2];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'extra'}{'section_childs'}[0];

$result_errors{'sections_test_no_use_nodes_use_node_directions'} = [];


$result_floats{'sections_test_no_use_nodes_use_node_directions'} = {};



$result_converted{'plaintext'}->{'sections_test_no_use_nodes_use_node_directions'} = 'top
***

1 chapter
*********

1.1 section
===========

1.1.1 subsection
----------------

1.1.1.1 subsubsection
.....................

2 chapter in part
*****************

3 second chapter in part
************************

unnumbered
**********

Appendix A appendix
*******************

A.1 appendixsec
===============

';


$result_converted{'html'}->{'sections_test_no_use_nodes_use_node_directions'} = '<!DOCTYPE html>
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

<link href="#top" rel="start" title="top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="top">
<h1 class="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<h2 class="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>

<ul class="mini-toc">
<li><a href="#section" accesskey="1">section</a></li>
</ul>
<hr>
<div class="section-level-extent" id="section">
<h3 class="section"><span>1.1 section<a class="copiable-link" href="#section"> &para;</a></span></h3>

<ul class="mini-toc">
<li><a href="#subsection" accesskey="1">subsection</a></li>
</ul>
<hr>
<div class="subsection-level-extent" id="subsection">
<h4 class="subsection"><span>1.1.1 subsection<a class="copiable-link" href="#subsection"> &para;</a></span></h4>

<ul class="mini-toc">
<li><a href="#subsubsection" accesskey="1">subsubsection</a></li>
</ul>
<hr>
<div class="subsubsection-level-extent" id="subsubsection">
<h4 class="subsubsection"><span>1.1.1.1 subsubsection<a class="copiable-link" href="#subsubsection"> &para;</a></span></h4>

<hr>
</div>
</div>
</div>
</div>
</div>
<div class="part-level-extent" id="part">
<h1 class="part"><span>part<a class="copiable-link" href="#part"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#chapter-in-part" accesskey="1">chapter in part</a></li>
<li><a href="#second-chapter-in-part" accesskey="2">second chapter in part</a></li>
<li><a href="#unnumbered" accesskey="3">unnumbered</a></li>
</ul>
<div class="chapter-level-extent" id="chapter-in-part">
<h2 class="chapter"><span>2 chapter in part<a class="copiable-link" href="#chapter-in-part"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="second-chapter-in-part">
<h2 class="chapter"><span>3 second chapter in part<a class="copiable-link" href="#second-chapter-in-part"> &para;</a></span></h2>

<hr>
</div>
<div class="unnumbered-level-extent" id="unnumbered">
<h2 class="unnumbered"><span>unnumbered<a class="copiable-link" href="#unnumbered"> &para;</a></span></h2>

<hr>
</div>
<div class="appendix-level-extent" id="appendix">
<h2 class="appendix"><span>Appendix A appendix<a class="copiable-link" href="#appendix"> &para;</a></span></h2>

<ul class="mini-toc">
<li><a href="#appendixsec" accesskey="1">appendixsec</a></li>
</ul>
<hr>
<div class="appendixsec-level-extent" id="appendixsec">
<h3 class="appendixsec"><span>A.1 appendixsec<a class="copiable-link" href="#appendixsec"> &para;</a></span></h3>
</div>
</div>
</div>



</body>
</html>
';

1;
