use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'printindex_between_node_section'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
 *@node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Top}
 *@top C7 l2 {top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {top}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l4
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{Top}
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {top1}
  *index_entry_command@cindex C1 l5
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{Top}
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {top1}
  *index_entry_command@cindex C1 l6
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{Top}
  |index_entry:I{cp,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {aop1}
  *index_entry_command@cindex C1 l7
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{Top}
  |index_entry:I{cp,4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {aop1}
  {empty_line:\\n}
 *@node C1 l9 {node chap1}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{node-chap1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {node chap1}
 *@chapter C5 l10 {chapter 1}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chapter 1}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l12
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{node-chap1}
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chap1}
  *index_entry_command@cindex C1 l13
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{node-chap1}
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chap1}
  {empty_line:\\n}
 *@node C2 l15 {node sec1}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{3}
 |normalized:{node-sec1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {node sec1}
  *@printindex C1 l16
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {cp}
 *@section C1 l17 {section1}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {section1}
';


$result_texis{'printindex_between_node_section'} = '@node Top
@top top

@cindex top1
@cindex top1
@cindex aop1
@cindex aop1

@node node chap1
@chapter chapter 1

@cindex chap1
@cindex chap1

@node node sec1
@printindex cp
@section section1
';


$result_texts{'printindex_between_node_section'} = 'top
***


1 chapter 1
***********


1.1 section1
============
';

$result_errors{'printindex_between_node_section'} = [];


$result_nodes_list{'printindex_between_node_section'} = '1|Top
 associated_section: top
 associated_title_command: top
 node_directions:
  next->node chap1
2|node chap1
 associated_section: 1 chapter 1
 associated_title_command: 1 chapter 1
 node_directions:
  prev->Top
  up->Top
3|node sec1
 associated_section: 1.1 section1
 associated_title_command: 1.1 section1
 node_directions:
  up->node chap1
';

$result_sections_list{'printindex_between_node_section'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->chapter 1
 section_children:
  1|chapter 1
2|chapter 1
 associated_anchor_command: node chap1
 associated_node: node chap1
 section_directions:
  up->top
 toplevel_directions:
  prev->top
  up->top
 section_children:
  1|section1
3|section1
 associated_anchor_command: node sec1
 associated_node: node sec1
 section_directions:
  up->chapter 1
';

$result_sectioning_root{'printindex_between_node_section'} = 'level: -1
list:
 1|top
';

$result_headings_list{'printindex_between_node_section'} = '';

$result_indices_sort_strings{'printindex_between_node_section'} = 'cp:
 aop1
 aop1
 chap1
 chap1
 top1
 top1
';


$result_converted{'info'}->{'printindex_between_node_section'} = 'This is , produced from .


File: ,  Node: Top,  Next: node chap1,  Up: (dir)

top
***

* Menu:

* node chap1::

 -- The Detailed Node Listing --

chapter 1

* node sec1::


File: ,  Node: node chap1,  Prev: Top,  Up: Top

1 chapter 1
***********

* Menu:

* node sec1::


File: ,  Node: node sec1,  Up: node chap1

 [index ]
* Menu:

* aop1:                                  Top.                   (line 6)
* aop1 <1>:                              Top.                   (line 6)
* chap1:                                 node chap1.            (line 6)
* chap1 <1>:                             node chap1.            (line 6)
* top1:                                  Top.                   (line 6)
* top1 <1>:                              Top.                   (line 6)

1.1 section1
============


Tag Table:
Node: Top27
Node: node chap1174
Node: node sec1274

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'printindex_between_node_section'} = 'top
***

1 chapter 1
***********

* Menu:

* aop1:                                  Top.                   (line 2)
* aop1 <1>:                              Top.                   (line 2)
* chap1:                                 node chap1.            (line 5)
* chap1 <1>:                             node chap1.            (line 5)
* top1:                                  Top.                   (line 2)
* top1 <1>:                              Top.                   (line 2)

1.1 section1
============

';


$result_converted{'html_text'}->{'printindex_between_node_section'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#node-chap1" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<a class="index-entry-id" id="index-top1"></a>
<a class="index-entry-id" id="index-top1-1"></a>
<a class="index-entry-id" id="index-aop1"></a>
<a class="index-entry-id" id="index-aop1-1"></a>

<ul class="mini-toc">
<li><a href="#node-chap1">chapter 1</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="node-chap1">
<div class="nav-panel">
<p>
[<a href="#node-chap1" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="chapter-1"><span>1 chapter 1<a class="copiable-link" href="#chapter-1"> &para;</a></span></h2>

<a class="index-entry-id" id="index-chap1"></a>
<a class="index-entry-id" id="index-chap1-1"></a>

<ul class="mini-toc">
<li><a href="#node-sec1">section1</a></li>
</ul>
<hr>
<div class="section-level-extent" id="node-sec1">
<div class="nav-panel">
<p>
[<a href="#node-chap1" title="Index" rel="index">Index</a>]</p>
</div>
<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#node-sec1_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-sec1_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-sec1_cp_letter-T"><b>T</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-sec1_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-aop1">aop1</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-aop1-1">aop1</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-sec1_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-chap1">chap1</a></td><td class="printindex-index-section"><a href="#node-chap1">node chap1</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-chap1-1">chap1</a></td><td class="printindex-index-section"><a href="#node-chap1">node chap1</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-sec1_cp_letter-T">T</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-top1">top1</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top1-1">top1</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#node-sec1_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-sec1_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-sec1_cp_letter-T"><b>T</b></a>
 &nbsp; 
</td></tr></table>
</div>
<h3 class="section" id="section1"><span>1.1 section1<a class="copiable-link" href="#section1"> &para;</a></span></h3>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'printindex_between_node_section'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">node chap1</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">top1</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">top1</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">aop1</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="4">aop1</indexterm></cindex>

</top>
<node identifier="node-chap1" spaces=" "><nodename>node chap1</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter 1</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="5">chap1</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="6">chap1</indexterm></cindex>

<node identifier="node-sec1" spaces=" "><nodename>node sec1</nodename><nodeup automatic="on">node chap1</nodeup></node>
<printindex spaces=" " value="cp" line="cp"></printindex>
<section spaces=" "><sectiontitle>section1</sectiontitle>
</section>
</chapter>
';

1;
