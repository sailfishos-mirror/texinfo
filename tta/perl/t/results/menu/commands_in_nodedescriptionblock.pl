use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'commands_in_nodedescriptionblock'} = '*document_root C7
 *before_node_section
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E5]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C6 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E6|E17]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E6]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {test commands in nodedescriptionblock}
  {empty_line:\\n}
  *2 @menu C4 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node1}
    |normalized:{node1}
     {node1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node2}
    |normalized:{node2}
     {node2}
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
  *paragraph C4
   *3 @ref C1 l9
    *brace_arg C1
    |EXTRA
    |node_content:{in nodescription}
    |normalized:{in-nodescription}
     {in nodescription}
   {, }
   *4 @ref C1 l9
    *brace_arg C1
    |EXTRA
    |node_content:{f1}
    |normalized:{f1}
     {f1}
   {.\\n}
  {empty_line:\\n}
 *5 @node C1 l11
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |menu_directions:D[next->E16|up->E16]
 |node_description:[E7]
 |node_directions:D[next->E16|prev->E0|up->E0]
 |node_long_description:[E7]
 |normalized:{node1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node1}
 *6 @chapter C4 l12
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |section_directions:D[next->E17|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E17|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap1}
  {empty_line:\\n}
  *7 @nodedescriptionblock C10 l14
  |EXTRA
  |element_node:[E5]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *8 @anchor C1 l15
   |EXTRA
   |is_target:{1}
   |normalized:{in-nodescription}
    *brace_arg C1
     {in nodescription}
   {spaces_after_close_brace:\\n}
   {empty_line:\\n}
   *paragraph C8
    *9 @ref C1 l17
     *brace_arg C1
     |EXTRA
     |node_content:{node2}
     |normalized:{node2}
      {node2}
    {. Footnote}
    *10 @footnote C1 l17
    |EXTRA
    |global_command_number:{1}
     *brace_command_context C1
      *paragraph C1
       {in footnote}
    {. Some text to see\\n}
    {where the max column could be. }
    *11 @w C1 l18
     *brace_container C1
      {in w}
    {.\\n}
    *12 index_entry_command@cindex C1 l19
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E5]
    |index_entry:I{cp,1}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {in nodedescriptionblock}
   {empty_line:\\n}
   *13 @float C6 l21
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |caption:[E15]
   |float_number:{1.1}
   |float_section:[E6]
   |float_type:{tfloat}
   |global_command_number:{1}
   |is_target:{1}
   |normalized:{f1}
    *arguments_line C2
     *block_line_arg C1
      {tfloat}
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
     |spaces_before_argument:
      |{ }
      {f1}
    *14 @image C1 l22
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {float_image}
    {\\n}
    *15 @caption C1 l23
    |EXTRA
    |float:[E13]
     *brace_command_context C1
      *paragraph C1
       {Cap1}
    {spaces_after_close_brace:\\n}
    *@end C1 l24
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{float}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {float}
   {empty_line:\\n}
   {empty_line:\\n}
   *@end C1 l27
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
 *16 @node C1 l29
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E17]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[prev->E5|up->E0]
 |menus:EC[E20]
 |node_directions:D[prev->E5|up->E0]
 |normalized:{node2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node2}
 *17 @chapter C11 l30
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E16]
 |section_directions:D[prev->E6|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E6|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap2}
  {empty_line:\\n}
  *paragraph C4
   *18 @ref C1 l32
    *brace_arg C1
    |EXTRA
    |node_content:{in nodescription}
    |normalized:{in-nodescription}
     {in nodescription}
   {, }
   *19 @ref C1 l32
    *brace_arg C1
    |EXTRA
    |node_content:{f1}
    |normalized:{f1}
     {f1}
   {.\\n}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: node1 again to test two nodescription expansions\\n}
  *20 @menu C3 l35
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l36
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node1}
    |normalized:{node1}
     {node1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l37
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
  *@printindex C1 l39
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *@listoffloats C1 l41
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{tfloat}
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {tfloat}
  {empty_line:\\n}
';


$result_texis{'commands_in_nodedescriptionblock'} = '@node Top
@top test commands in nodedescriptionblock

@menu
* node1::
* node2::
@end menu

@ref{in nodescription}, @ref{f1}.

@node node1
@chapter chap1

@nodedescriptionblock
@anchor{in nodescription}

@ref{node2}. Footnote@footnote{in footnote}. Some text to see
where the max column could be. @w{in w}.
@cindex in nodedescriptionblock

@float tfloat, f1
@image{float_image}
@caption{Cap1}
@end float


@end nodedescriptionblock

@node node2
@chapter chap2

@ref{in nodescription}, @ref{f1}.

@c node1 again to test two nodescription expansions
@menu
* node1::
@end menu

@printindex cp

@listoffloats tfloat

';


$result_texts{'commands_in_nodedescriptionblock'} = 'test commands in nodedescriptionblock
*************************************

* node1::
* node2::

in nodescription, f1.

1 chap1
*******


2 chap2
*******

in nodescription, f1.

* node1::



';

$result_sectioning{'commands_in_nodedescriptionblock'} = {
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
                    'normalized' => 'node1'
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'node2'
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
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0];
$result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0];
$result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0];
$result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0];
$result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0];
$result_sectioning{'commands_in_nodedescriptionblock'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'commands_in_nodedescriptionblock'};

$result_nodes{'commands_in_nodedescriptionblock'} = [
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
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'isindex' => 1,
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'node2'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'node1'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'commands_in_nodedescriptionblock'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'commands_in_nodedescriptionblock'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'commands_in_nodedescriptionblock'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'commands_in_nodedescriptionblock'}[0];
$result_nodes{'commands_in_nodedescriptionblock'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'commands_in_nodedescriptionblock'}[0];
$result_nodes{'commands_in_nodedescriptionblock'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'commands_in_nodedescriptionblock'}[0];
$result_nodes{'commands_in_nodedescriptionblock'}[1] = $result_nodes{'commands_in_nodedescriptionblock'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'commands_in_nodedescriptionblock'}[2] = $result_nodes{'commands_in_nodedescriptionblock'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'commands_in_nodedescriptionblock'} = [
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
            'menus' => [
              {}
            ],
            'normalized' => 'node2'
          }
        },
        'up' => {}
      },
      'normalized' => 'node1'
    }
  },
  {}
];
$result_menus{'commands_in_nodedescriptionblock'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'commands_in_nodedescriptionblock'}[1];
$result_menus{'commands_in_nodedescriptionblock'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'commands_in_nodedescriptionblock'}[0];
$result_menus{'commands_in_nodedescriptionblock'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'commands_in_nodedescriptionblock'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'commands_in_nodedescriptionblock'}[2] = $result_menus{'commands_in_nodedescriptionblock'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'commands_in_nodedescriptionblock'} = [];


$result_floats{'commands_in_nodedescriptionblock'} = {
  'tfloat' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_number' => '1.1',
        'float_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'section_number' => '1'
          }
        },
        'float_type' => 'tfloat',
        'normalized' => 'f1'
      }
    }
  ]
};
$result_floats{'commands_in_nodedescriptionblock'}{'tfloat'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'commands_in_nodedescriptionblock'}{'tfloat'}[0];


$result_indices_sort_strings{'commands_in_nodedescriptionblock'} = {
  'cp' => [
    'in nodedescriptionblock'
  ]
};



$result_converted{'plaintext'}->{'commands_in_nodedescriptionblock'} = 'test commands in nodedescriptionblock
*************************************

* Menu:

* node1::
               node2.  Footnote(1).  Some text to see where the max column could be.
               in w.

[float_image]

               tfloat 1.1: Cap1


* node2::

in nodescription, tfloat 1.1: f1.

   ---------- Footnotes ----------

   (1) in footnote

1 chap1
*******

2 chap2
*******

in nodescription, tfloat 1.1: f1.

* Menu:

* node1::
               node2.  Footnote(1).  Some text to see where the max column could be.
               in w.

[float_image]

               tfloat 1.1: Cap1


* Menu:

* in nodedescriptionblock:               node2.                (line 34)

* Menu:

* tfloat 1.1: f1.                        Cap1

   ---------- Footnotes ----------

   (1) in footnote

';

$result_converted_errors{'plaintext'}->{'commands_in_nodedescriptionblock'} = [
  {
    'error_line' => 'warning: could not find @image file `float_image.txt\' nor alternate text
',
    'line_nr' => 22,
    'text' => 'could not find @image file `float_image.txt\' nor alternate text',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'commands_in_nodedescriptionblock'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>test commands in nodedescriptionblock</title>

<meta name="description" content="test commands in nodedescriptionblock">
<meta name="keywords" content="test commands in nodedescriptionblock">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#node2" rel="index" title="node2">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter-printindex {text-decoration: none}
span:hover a.copiable-link {visibility: visible}
table.index-entries-printindex {border-spacing: 0 0.5em}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
td.printindex-index-entry {vertical-align: top}
td.printindex-index-section {vertical-align: top; padding-left: 1em}
th.index-letter-header-printindex {text-align: left; font-size: 150%; padding-bottom: 0.5em; padding-top: 0.5em; border-width: thin; border-top-style: solid}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#node1" accesskey="n" rel="next">chap1</a> &nbsp; [<a href="#node2" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="test-commands-in-nodedescriptionblock"><span>test commands in nodedescriptionblock<a class="copiable-link" href="#test-commands-in-nodedescriptionblock"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#node1" accesskey="1">node1</a>:</td><td class="menu-entry-description"><a class="anchor" id="in-nodescription"></a>
<a class="ref" href="#node2">chap2</a>. Footnote<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>. Some text to see
where the max column could be. in&nbsp;w<!-- /@w -->.
<a class="index-entry-id" id="index-in-nodedescriptionblock"></a>

<div class="float" id="f1">
<img class="image" src="float_image.jpg" alt="float_image">
<div class="caption"><p><strong class="strong">tfloat 1.1: </strong>Cap1</p></div></div>

</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#node2" rel="index" accesskey="2">node2</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<p><a class="ref" href="#in-nodescription">in nodescription</a>, <a class="ref" href="#f1">tfloat 1.1</a>.
</p>
<hr>
<div class="chapter-level-extent" id="node1">
<div class="nav-panel">
<p>
Next: <a href="#node2" accesskey="n" rel="next">chap2</a>, Previous: <a href="#Top" accesskey="p" rel="prev">test commands in nodedescriptionblock</a>, Up: <a href="#Top" accesskey="u" rel="up">test commands in nodedescriptionblock</a> &nbsp; [<a href="#node2" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="chap1"><span>1 chap1<a class="copiable-link" href="#chap1"> &para;</a></span></h2>


<hr>
</div>
<div class="chapter-level-extent" id="node2">
<div class="nav-panel">
<p>
Previous: <a href="#node1" accesskey="p" rel="prev">chap1</a>, Up: <a href="#Top" accesskey="u" rel="up">test commands in nodedescriptionblock</a> &nbsp; [<a href="#node2" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="chap2"><span>2 chap2<a class="copiable-link" href="#chap2"> &para;</a></span></h2>

<p><a class="ref" href="#in-nodescription">in nodescription</a>, <a class="ref" href="#f1">tfloat 1.1</a>.
</p>
<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#node1" accesskey="1">node1</a>:</td><td class="menu-entry-description">
<a class="ref" href="#node2">chap2</a>. Footnote<a class="footnote" id="t_fnode-description-2_DOCF1_2" href="#t_fnode-description-2_FOOT1_2"><sup>2</sup></a>. Some text to see
where the max column could be. in&nbsp;w<!-- /@w -->.

<div class="float" id="f1">
<img class="image" src="float_image.jpg" alt="float_image">
<div class="caption"><p><strong class="strong">tfloat 1.1: </strong>Cap1</p></div></div>

</td></tr>
</table>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node2_cp_letter-I">I</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-in-nodedescriptionblock">in nodedescriptionblock</a></td><td class="printindex-index-section"><a href="#node1">node1</a></td></tr>
</table>
</div>

<dl class="listoffloats">
<dt><a href="#f1">tfloat 1.1</a></dt><dd class="caption-in-listoffloats"><p>Cap1</p></dd>
</dl>

</div>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>in footnote</p>
<h5 class="footnote-body-heading"><a id="t_fnode-description-2_FOOT1_2" href="#t_fnode-description-2_DOCF1_2">(2)</a></h5>
<p>in footnote</p>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'commands_in_nodedescriptionblock'} = [
  {
    'error_line' => 'warning: @image file `float_image\' (for HTML) not found, using `float_image.jpg\'
',
    'line_nr' => 22,
    'text' => '@image file `float_image\' (for HTML) not found, using `float_image.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `float_image\' (for HTML) not found, using `float_image.jpg\'
',
    'line_nr' => 22,
    'text' => '@image file `float_image\' (for HTML) not found, using `float_image.jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'commands_in_nodedescriptionblock'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">node1</nodenext></node>
<top spaces=" "><sectiontitle>test commands in nodedescriptionblock</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>node1</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>node2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<para><ref label="in-nodescription"><xrefnodename>in nodescription</xrefnodename></ref>, <ref label="f1"><xrefnodename>f1</xrefnodename></ref>.
</para>
</top>
<node identifier="node1" spaces=" "><nodename>node1</nodename><nodenext automatic="on">node2</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chap1</sectiontitle>

<nodedescriptionblock endspaces=" ">
<anchor identifier="in-nodescription">in nodescription</anchor>

<para><ref label="node2"><xrefnodename>node2</xrefnodename></ref>. Footnote<footnote><para>in footnote</para></footnote>. Some text to see
where the max column could be. <w>in w</w>.
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">in nodedescriptionblock</indexterm></cindex>
</para>
<float identifier="f1" type="tfloat" number="1.1" spaces=" " endspaces=" "><floattype>tfloat</floattype><floatname spaces=" ">f1</floatname>
<image><imagefile>float_image</imagefile></image>
<caption><para>Cap1</para></caption>
</float>


</nodedescriptionblock>

</chapter>
<node identifier="node2" spaces=" "><nodename>node2</nodename><nodeprev automatic="on">node1</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chap2</sectiontitle>

<para><ref label="in-nodescription"><xrefnodename>in nodescription</xrefnodename></ref>, <ref label="f1"><xrefnodename>f1</xrefnodename></ref>.
</para>
<!-- c node1 again to test two nodescription expansions -->
<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>node1</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<printindex spaces=" " value="cp" line="cp"></printindex>

<listoffloats type="tfloat" spaces=" ">tfloat</listoffloats>

</chapter>
';

1;
