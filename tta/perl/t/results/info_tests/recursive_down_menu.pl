use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'recursive_down_menu'} = '*document_root C5
 *before_node_section
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2
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
    {top}
  {empty_line:\\n}
 *2 @node C1 l4
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |menu_directions:D[up->E2]
 |menus:EC[E4]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapN}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapN}
 *3 @chapter C3 l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Intro}
  {empty_line:\\n}
  *4 @menu C3 l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapN}
    |normalized:{chapN}
     {chapN}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l9
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


$result_texis{'recursive_down_menu'} = '@node Top
@top top

@node chapN
@chapter Intro

@menu
* chapN::
@end menu
';


$result_texts{'recursive_down_menu'} = 'top
***

1 Intro
*******

* chapN::
';

$result_sectioning{'recursive_down_menu'} = {
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
                    'normalized' => 'chapN'
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
$result_sectioning{'recursive_down_menu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'recursive_down_menu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'recursive_down_menu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'recursive_down_menu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'recursive_down_menu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'recursive_down_menu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'recursive_down_menu'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'recursive_down_menu'};

$result_nodes{'recursive_down_menu'} = [
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
            'normalized' => 'chapN'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'recursive_down_menu'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'recursive_down_menu'}[0];
$result_nodes{'recursive_down_menu'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'recursive_down_menu'}[0];
$result_nodes{'recursive_down_menu'}[1] = $result_nodes{'recursive_down_menu'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'recursive_down_menu'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'menus' => [
        {}
      ],
      'normalized' => 'chapN'
    }
  }
];
$result_menus{'recursive_down_menu'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'recursive_down_menu'}[1];

$result_errors{'recursive_down_menu'} = [
  {
    'error_line' => 'warning: node up pointer for `chapN\' is `Top\' but up is `chapN\' in menu
',
    'line_nr' => 4,
    'text' => 'node up pointer for `chapN\' is `Top\' but up is `chapN\' in menu',
    'type' => 'warning'
  }
];


$result_floats{'recursive_down_menu'} = {};



$result_converted{'html'}->{'recursive_down_menu'} = '<!DOCTYPE html>
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
pre.menu-comment-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chapN" accesskey="n" rel="next">Intro</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#chapN" accesskey="1">chapN</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted"> &mdash; The Detailed Node Listing &mdash;

Intro

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#chapN" accesskey="2">chapN</a>:</td><td class="menu-entry-description">
</td></tr>
</table>
<hr>
<div class="chapter-level-extent" id="chapN">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Intro"><span>1 Intro<a class="copiable-link" href="#Intro"> &para;</a></span></h2>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#chapN" accesskey="1">chapN</a>:</td><td class="menu-entry-description">
</td></tr>
</table>
</div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'recursive_down_menu'} = [
  {
    'error_line' => 'warning: node `chapN\' appears in its own menus
',
    'line_nr' => 4,
    'text' => 'node `chapN\' appears in its own menus',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'recursive_down_menu'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapN,  Up: (dir)

top
***

* Menu:

* chapN::

 -- The Detailed Node Listing --

Intro

* chapN::


File: ,  Node: chapN,  Prev: Top,  Up: Top

1 Intro
*******

* Menu:

* chapN::


Tag Table:
Node: Top27
Node: chapN156

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'recursive_down_menu'} = [
  {
    'error_line' => 'warning: node `chapN\' appears in its own menus
',
    'line_nr' => 4,
    'text' => 'node `chapN\' appears in its own menus',
    'type' => 'warning'
  }
];


1;
