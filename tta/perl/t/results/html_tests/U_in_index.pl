use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'U_in_index'} = '*document_root C5
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
 *2 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C9 l5 {Chapter}
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
    {Chapter}
  {empty_line:\\n}
  *4 index_entry_command@cindex C1 l7
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *5 @U C1 l7
     *brace_arg C1
      {0131}
    { dotless i}
  {empty_line:\\n}
  *6 index_entry_command@cindex C1 l9
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,2}
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *7 @U C1 l9
     *brace_arg C1
      {0074}
    { letter t}
  {empty_line:\\n}
  *8 index_entry_command@cindex C1 l11
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,3}
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *9 @U C1 l11
     *brace_arg C1
      {00B5}
    { greek letter mu}
  {empty_line:\\n}
  *@printindex C1 l13
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
';


$result_texis{'U_in_index'} = '@node Top
@top top

@node chap
@chapter Chapter

@cindex @U{0131} dotless i

@cindex @U{0074} letter t

@cindex @U{00B5} greek letter mu

@printindex cp
';


$result_texts{'U_in_index'} = 'top
***

1 Chapter
*********




';

$result_sectioning{'U_in_index'} = {
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
                    'isindex' => 1,
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
$result_sectioning{'U_in_index'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'U_in_index'}{'extra'}{'section_childs'}[0];
$result_sectioning{'U_in_index'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'U_in_index'}{'extra'}{'section_childs'}[0];
$result_sectioning{'U_in_index'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'U_in_index'}{'extra'}{'section_childs'}[0];
$result_sectioning{'U_in_index'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'U_in_index'};

$result_nodes{'U_in_index'} = [
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
            'isindex' => 1,
            'node_directions' => {
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
  {}
];
$result_nodes{'U_in_index'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'U_in_index'}[0];
$result_nodes{'U_in_index'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'U_in_index'}[0];
$result_nodes{'U_in_index'}[1] = $result_nodes{'U_in_index'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'U_in_index'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'U_in_index'} = [];


$result_floats{'U_in_index'} = {};


$result_indices_sort_strings{'U_in_index'} = {
  'cp' => [
    '0074 letter t',
    '00B5 greek letter mu',
    '0131 dotless i'
  ]
};



$result_converted{'html'}->{'U_in_index'} = '<!DOCTYPE html>
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
<link href="#chap" rel="index" title="chap">
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
Next: <a href="#chap" accesskey="n" rel="next">Chapter</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<a class="index-entry-id" id="index-0131-dotless-i"></a>

<a class="index-entry-id" id="index-0074-letter-t"></a>

<a class="index-entry-id" id="index-00B5-greek-letter-mu"></a>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chap_cp_symbol-1">0</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-0074-letter-t">&#x0074; letter t</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-00B5-greek-letter-mu">&#x00B5; greek letter mu</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-0131-dotless-i">&#x0131; dotless i</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>
</div>
</div>



</body>
</html>
';

1;
