use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'contents_and_parts'} = '*document_root C11
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1
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
 *1 @top C4 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_directions:D[next->E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3|E8]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *2 @menu C5 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter 1 node}
    |normalized:{chapter-1-node}
     {chapter 1 node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter 2 node}
    |normalized:{chapter-2-node}
     {chapter 2 node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter 3 node}
    |normalized:{chapter-3-node}
     {chapter 3 node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l8
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
 *3 @part C2 l10
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E5]
 |part_following_node:[E4]
 |section_childs:EC[E5|E7]
 |section_directions:D[next->E8|prev->E1]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part 1: part 1}
  {empty_line:\\n}
 *4 @node C1 l12
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |menu_directions:D[next->E6|up->E0]
 |node_directions:D[next->E6|prev->E0|up->E0]
 |node_preceding_part:[E3]
 |normalized:{chapter-1-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 1 node}
 *5 @chapter C2 l13
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |associated_part:[E3]
 |section_directions:D[next->E7|up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E7|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 1}
  {empty_line:\\n}
 *6 @node C1 l15
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |menu_directions:D[next->E9|prev->E4|up->E0]
 |node_directions:D[next->E9|prev->E4|up->E0]
 |normalized:{chapter-2-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2 node}
 *7 @chapter C2 l16
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E6]
 |section_directions:D[prev->E5|up->E3]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E10|prev->E5|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2}
  {empty_line:\\n}
 *8 @part C2 l18
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{2}
 |part_associated_section:[E10]
 |part_following_node:[E9]
 |section_childs:EC[E10]
 |section_directions:D[prev->E3]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part2: part2}
  {empty_line:\\n}
 *9 @node C1 l20
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |is_target:{1}
 |menu_directions:D[prev->E6|up->E0]
 |node_directions:D[prev->E6|up->E0]
 |node_preceding_part:[E8]
 |normalized:{chapter-3-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 3 node}
 *10 @chapter C4 l21
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E9]
 |associated_part:[E8]
 |section_directions:D[up->E8]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E7|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 3}
  {empty_line:\\n}
  *@contents C1 l23
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  *@shortcontents C1 l24
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'contents_and_parts'} = '@node Top
@top top

@menu
* chapter 1 node::
* chapter 2 node::
* chapter 3 node::
@end menu

@part part 1: part 1

@node chapter 1 node
@chapter chapter 1

@node chapter 2 node
@chapter chapter 2

@part part2: part2

@node chapter 3 node
@chapter chapter 3

@contents
@shortcontents
';


$result_texts{'contents_and_parts'} = 'top
***

* chapter 1 node::
* chapter 2 node::
* chapter 3 node::

part 1: part 1
**************

1 chapter 1
***********

2 chapter 2
***********

part2: part2
************

3 chapter 3
***********

';

$result_sectioning{'contents_and_parts'} = {
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
              'associated_node' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'chapter-1-node'
                }
              },
              'associated_part' => {},
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
          },
          'part_following_node' => {},
          'section_childs' => [
            {},
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chapter-2-node'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
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
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
              'associated_node' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'chapter-3-node'
                }
              },
              'associated_part' => {},
              'section_directions' => {
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
          'part_following_node' => {},
          'section_childs' => [
            {}
          ],
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 0
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'contents_and_parts'};
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'part_following_node'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_node'};
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0] = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2]{'extra'}{'part_following_node'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'}{'extra'}{'associated_node'};
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2]{'extra'}{'section_childs'}[0] = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2]{'extra'}{'part_associated_section'};
$result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'contents_and_parts'}{'extra'}{'section_childs'}[1];

$result_nodes{'contents_and_parts'} = [
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
                'associated_part' => {
                  'cmdname' => 'part',
                  'extra' => {}
                },
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'associated_part' => {
                              'cmdname' => 'part',
                              'extra' => {}
                            },
                            'section_number' => '3'
                          }
                        },
                        'node_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'node_preceding_part' => {},
                        'normalized' => 'chapter-3-node'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'chapter-2-node'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'node_preceding_part' => {},
            'normalized' => 'chapter-1-node'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {}
];
$result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'contents_and_parts'}[0];
$result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_preceding_part'} = $result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'};
$result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'contents_and_parts'}[0];
$result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'contents_and_parts'}[0];
$result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'contents_and_parts'}[0];
$result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_preceding_part'} = $result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'};
$result_nodes{'contents_and_parts'}[1] = $result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'contents_and_parts'}[2] = $result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'contents_and_parts'}[3] = $result_nodes{'contents_and_parts'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'contents_and_parts'} = [
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
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'chapter-3-node'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chapter-2-node'
          }
        },
        'up' => {}
      },
      'normalized' => 'chapter-1-node'
    }
  },
  {},
  {}
];
$result_menus{'contents_and_parts'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'contents_and_parts'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'contents_and_parts'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'contents_and_parts'}[0];
$result_menus{'contents_and_parts'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'contents_and_parts'}[1];
$result_menus{'contents_and_parts'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'contents_and_parts'}[0];
$result_menus{'contents_and_parts'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'contents_and_parts'}[0];
$result_menus{'contents_and_parts'}[2] = $result_menus{'contents_and_parts'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'contents_and_parts'}[3] = $result_menus{'contents_and_parts'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'contents_and_parts'} = [];


$result_floats{'contents_and_parts'} = {};



$result_converted{'plaintext'}->{'contents_and_parts'} = 'top
***

1 chapter 1
***********

2 chapter 2
***********

3 chapter 3
***********

top
part 1: part 1
1 chapter 1
2 chapter 2
part2: part2
3 chapter 3
top
part 1: part 1
1 chapter 1
2 chapter 2
part2: part2
3 chapter 3
';


$result_converted{'html'}->{'contents_and_parts'} = '<!DOCTYPE html>
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
Next: <a href="#chapter-1-node" accesskey="n" rel="next">chapter 1</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<div class="region-shortcontents" id="SEC_Shortcontents">
<h2 class="shortcontents-heading">Short Table of Contents</h2>

<div class="shortcontents">
<ul class="toc-numbered-mark">
<li><a id="stoc-part-1_003a-part-1" href="#toc-part-1_003a-part-1">part 1: part 1</a><ul class="toc-numbered-mark">
<li><a id="stoc-chapter-1" href="#toc-chapter-1">1 chapter 1</a></li>
<li><a id="stoc-chapter-2" href="#toc-chapter-2">2 chapter 2</a></li>
</ul></li>
<li><a id="stoc-part2_003a-part2" href="#toc-part2_003a-part2">part2: part2</a><ul class="toc-numbered-mark">
<li><a id="stoc-chapter-3" href="#toc-chapter-3">3 chapter 3</a></li>
</ul></li>

</ul>
</div>
</div>
<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">
<ul class="toc-numbered-mark">
<li><a id="toc-part-1_003a-part-1" href="#part-1_003a-part-1">part 1: part 1</a>
<ul class="toc-numbered-mark">
  <li><a id="toc-chapter-1" href="#chapter-1-node">1 chapter 1</a></li>
  <li><a id="toc-chapter-2" href="#chapter-2-node">2 chapter 2</a></li>
</ul></li>
<li><a id="toc-part2_003a-part2" href="#part2_003a-part2">part2: part2</a>
<ul class="toc-numbered-mark">
  <li><a id="toc-chapter-3" href="#chapter-3-node">3 chapter 3</a></li>
</ul></li>

</ul>
</div>
</div>
<hr>
</div>
<div class="part-level-extent" id="part-1_003a-part-1">
<div class="nav-panel">
<p>
Next: <a href="#chapter-2-node" accesskey="n" rel="next">chapter 2</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="part"><span>part 1: part 1<a class="copiable-link" href="#part-1_003a-part-1"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#chapter-1-node" accesskey="1">chapter 1</a></li>
<li><a href="#chapter-2-node" accesskey="2">chapter 2</a></li>
</ul>
<div class="chapter-level-extent" id="chapter-1-node">
<h2 class="chapter" id="chapter-1"><span>1 chapter 1<a class="copiable-link" href="#chapter-1"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="chapter-2-node">
<div class="nav-panel">
<p>
Next: <a href="#chapter-3-node" accesskey="n" rel="next">chapter 3</a>, Previous: <a href="#chapter-1-node" accesskey="p" rel="prev">chapter 1</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="chapter" id="chapter-2"><span>2 chapter 2<a class="copiable-link" href="#chapter-2"> &para;</a></span></h2>

<hr>
</div>
</div>
<div class="part-level-extent" id="part2_003a-part2">
<div class="nav-panel">
<p>
Previous: <a href="#chapter-2-node" accesskey="p" rel="prev">chapter 2</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="part"><span>part2: part2<a class="copiable-link" href="#part2_003a-part2"> &para;</a></span></h1>
<hr>

<ul class="mini-toc">
<li><a href="#chapter-3-node" accesskey="1">chapter 3</a></li>
</ul>
<div class="chapter-level-extent" id="chapter-3-node">
<h2 class="chapter" id="chapter-3"><span>3 chapter 3<a class="copiable-link" href="#chapter-3"> &para;</a></span></h2>

</div>
</div>



</body>
</html>
';

1;
