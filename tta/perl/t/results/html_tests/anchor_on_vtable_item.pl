use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_on_vtable_item'} = '*document_root C7
 *before_node_section
 *0 @node C1 l1 {Top}
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
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E9]
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
 *2 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E8|prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C4 l5 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[next->E9|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E9|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
  *4 @vtable C6 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E5]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *5 @code l7
   *before_item C1
    {empty_line:\\n}
   *table_entry C2
    *table_term C1
     *@item C1 l9
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{vr,1}
      *line_arg C2
      |INFO
      |spaces_after_argument:
       |{\\n}
       *6 @anchor C1 l9
       |EXTRA
       |is_target:{1}
       |normalized:{label1}
        *brace_arg C1
         {label1}
       {label1}
    *table_definition C2
     *paragraph C1
      {Text1\\n}
     {empty_line:\\n}
   *table_entry C2
    *table_term C1
     *@item C1 l12
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{vr,2}
      *line_arg C3
      |INFO
      |spaces_after_argument:
       |{\\n}
       *7 @anchor C1 l12
       |EXTRA
       |is_target:{1}
       |normalized:{label2}
        *brace_arg C1
         {label2}
       {spaces_after_close_brace: }
       {label2}
    *table_definition C2
     *paragraph C1
      {Text2\\n}
     {empty_line:\\n}
   *table_entry C2
    *table_term C1
     *@item C1 l15
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{vr,3}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {lab3}
    *table_definition C1
     {empty_line:\\n}
   *@end C1 l17
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{vtable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {vtable}
  {empty_line:\\n}
 *8 @node C1 l19 {Idx}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{Idx}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Idx}
 *9 @chapter C5 l20 {Idx}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E8]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Idx}
  {empty_line:\\n}
  *@printindex C1 l22
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{vr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {vr}
  {empty_line:\\n}
  *paragraph C2
   *10 @xref C1 l24
    *brace_arg C1
    |EXTRA
    |node_content:{label1}
    |normalized:{label1}
     {label1}
   {.\\n}
';


$result_texis{'anchor_on_vtable_item'} = '@node Top
@top top

@node chap
@chapter Chap

@vtable @code

@item @anchor{label1}label1
Text1

@item @anchor{label2} label2
Text2

@item lab3

@end vtable

@node Idx
@chapter Idx

@printindex vr

@xref{label1}.
';


$result_texts{'anchor_on_vtable_item'} = 'top
***

1 Chap
******


label1
Text1

label2
Text2

lab3


2 Idx
*****


label1.
';

$result_sectioning{'anchor_on_vtable_item'} = {
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
                    'normalized' => 'chap'
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
                    'normalized' => 'Idx'
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
$result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0];
$result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0];
$result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0];
$result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0];
$result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0];
$result_sectioning{'anchor_on_vtable_item'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'anchor_on_vtable_item'};

$result_nodes{'anchor_on_vtable_item'} = [
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
                  'normalized' => 'Idx'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'anchor_on_vtable_item'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'anchor_on_vtable_item'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'anchor_on_vtable_item'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'anchor_on_vtable_item'}[0];
$result_nodes{'anchor_on_vtable_item'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'anchor_on_vtable_item'}[0];
$result_nodes{'anchor_on_vtable_item'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'anchor_on_vtable_item'}[0];
$result_nodes{'anchor_on_vtable_item'}[1] = $result_nodes{'anchor_on_vtable_item'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'anchor_on_vtable_item'}[2] = $result_nodes{'anchor_on_vtable_item'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'anchor_on_vtable_item'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  },
  {
    'extra' => {
      'normalized' => 'Idx'
    }
  }
];

$result_errors{'anchor_on_vtable_item'} = [];


$result_floats{'anchor_on_vtable_item'} = {};


$result_indices_sort_strings{'anchor_on_vtable_item'} = {
  'vr' => [
    'lab3',
    'label1',
    'label2'
  ]
};



$result_converted{'html'}->{'anchor_on_vtable_item'} = '<!DOCTYPE html>
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
<link href="#Idx" rel="index" title="Idx">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter-printindex {text-decoration: none}
span:hover a.copiable-link {visibility: visible}
table.index-entries-printindex {border-spacing: 0 0.5em}
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
Next: <a href="#chap" accesskey="n" rel="next">Chap</a> &nbsp; [<a href="#Idx" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chap</a></li>
<li><a href="#Idx" accesskey="2">Idx</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
Next: <a href="#Idx" accesskey="n" rel="next">Idx</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#Idx" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chap"><span>1 Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h2>

<dl class="vtable">
<dt><a id="index-label1"></a><span><code class="code"><a class="anchor" id="label1"></a>label1</code><a class="copiable-link" href="#index-label1"> &para;</a></span></dt>
<dd><p>Text1
</p>
</dd>
<dt><a id="index-label2"></a><span><code class="code"><a class="anchor" id="label2"></a>label2</code><a class="copiable-link" href="#index-label2"> &para;</a></span></dt>
<dd><p>Text2
</p>
</dd>
<dt><a id="index-lab3"></a><span><code class="code">lab3</code><a class="copiable-link" href="#index-lab3"> &para;</a></span></dt>
</dl>

<hr>
</div>
<div class="chapter-level-extent" id="Idx">
<div class="nav-panel">
<p>
Previous: <a href="#chap" accesskey="p" rel="prev">Chap</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#Idx" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Idx-1"><span>2 Idx<a class="copiable-link" href="#Idx-1"> &para;</a></span></h2>

<div class="printindex vr-printindex">
<table class="index-entries-printindex vr-entries-printindex">
<tr><th class="index-letter-header-printindex vr-letter-header-printindex" colspan="2" id="Idx_vr_letter-L">L</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-lab3"><code>lab3</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-label1"><code><a class="anchor" id="label1"></a>label1</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-label2"><code><a class="anchor" id="label2"></a>label2</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>

<p>See <a class="xref" href="#label1">label1</a>.
</p></div>
</div>



</body>
</html>
';

1;
