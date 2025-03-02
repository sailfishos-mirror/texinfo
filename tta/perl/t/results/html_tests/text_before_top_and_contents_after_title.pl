use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'text_before_top_and_contents_after_title'} = '*document_root C4
 *before_node_section C3
  {empty_line:\\n}
  *paragraph C1
   {Some text before top\\n}
  {empty_line:\\n}
 *0 @node C1 l4
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *paragraph C1
   {In top.\\n}
  {empty_line:\\n}
 *2 @chapter C4 l9
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {the chap}
  {empty_line:\\n}
  *@contents C1 l11
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
';


$result_texis{'text_before_top_and_contents_after_title'} = '
Some text before top

@node Top
@top top

In top.

@chapter the chap

@contents

';


$result_texts{'text_before_top_and_contents_after_title'} = '
Some text before top

top
***

In top.

1 the chap
**********


';

$result_sectioning{'text_before_top_and_contents_after_title'} = {
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
$result_sectioning{'text_before_top_and_contents_after_title'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'text_before_top_and_contents_after_title'}{'extra'}{'section_childs'}[0];
$result_sectioning{'text_before_top_and_contents_after_title'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'text_before_top_and_contents_after_title'}{'extra'}{'section_childs'}[0];
$result_sectioning{'text_before_top_and_contents_after_title'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'text_before_top_and_contents_after_title'}{'extra'}{'section_childs'}[0];
$result_sectioning{'text_before_top_and_contents_after_title'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'text_before_top_and_contents_after_title'};

$result_nodes{'text_before_top_and_contents_after_title'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'text_before_top_and_contents_after_title'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'text_before_top_and_contents_after_title'} = [];


$result_floats{'text_before_top_and_contents_after_title'} = {};



$result_converted{'html'}->{'text_before_top_and_contents_after_title'} = '<!DOCTYPE html>
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
<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-the-chap" href="#the-chap">1 the chap</a></li>
</ul>
</div>
</div>
<hr>

<p>Some text before top
</p>
<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<p>In top.
</p>
<ul class="mini-toc">
<li><a href="#the-chap" accesskey="1">the chap</a></li>
</ul>
<div class="chapter-level-extent" id="the-chap">
<h2 class="chapter"><span>1 the chap<a class="copiable-link" href="#the-chap"> &para;</a></span></h2>


</div>
</div>



</body>
</html>
';

1;
