use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'printindex_between_part_chapter'} = '*document_root C8
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C7 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_directions:D[next->E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E2]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l4
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E0]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top1}
  *index_entry_command@cindex C1 l5
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E0]
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top1}
  *index_entry_command@cindex C1 l6
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E0]
  |index_entry:I{cp,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aop1}
  *index_entry_command@cindex C1 l7
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E0]
  |index_entry:I{cp,4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aop1}
  {empty_line:\\n}
 *2 @part C4 l9 {Part 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E4]
 |part_following_node:[E3]
 |section_childs:EC[E4|E6]
 |section_directions:D[prev->E1]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part 1}
  {empty_line:\\n}
  *@printindex C1 l11
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
 *3 @node C1 l13 {node chap1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |node_directions:D[next->E5|prev->E0|up->E0]
 |node_preceding_part:[E2]
 |normalized:{node-chap1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node chap1}
 *4 @chapter C2 l14 {chapter 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |associated_part:[E2]
 |section_directions:D[next->E6|up->E2]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 1}
  {empty_line:\\n}
 *5 @node C1 l16 {node chap2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
 |is_target:{1}
 |node_directions:D[prev->E3|up->E0]
 |normalized:{node-chap2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node chap2}
 *6 @chapter C5 l17 {chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |associated_node:[E5]
 |section_directions:D[prev->E4|up->E2]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l19
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E5]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap2}
  *index_entry_command@cindex C1 l20
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E5]
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap2}
  {empty_line:\\n}
';


$result_texis{'printindex_between_part_chapter'} = '@node Top
@top top

@cindex top1
@cindex top1
@cindex aop1
@cindex aop1

@part Part 1

@printindex cp

@node node chap1
@chapter chapter 1

@node node chap2
@chapter chapter 2

@cindex chap2
@cindex chap2

';


$result_texts{'printindex_between_part_chapter'} = 'top
***


Part 1
******


1 chapter 1
***********

2 chapter 2
***********


';

$result_errors{'printindex_between_part_chapter'} = [
  {
    'error_line' => 'warning: @part not empty
',
    'line_nr' => 9,
    'text' => '@part not empty',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'printindex_between_part_chapter'} = 'cp:
 aop1
 aop1
 chap2
 chap2
 top1
 top1
';


$result_converted{'info'}->{'printindex_between_part_chapter'} = 'This is , produced from .


File: ,  Node: Top,  Next: node chap1,  Up: (dir)

top
***

* Menu:

Part: Part 1

* node chap1::
* node chap2::

 [index ]
* Menu:

* aop1:                                  Top.                   (line 6)
* aop1 <1>:                              Top.                   (line 6)
* chap2:                                 node chap2.            (line 4)
* chap2 <1>:                             node chap2.            (line 4)
* top1:                                  Top.                   (line 6)
* top1 <1>:                              Top.                   (line 6)


File: ,  Node: node chap1,  Next: node chap2,  Prev: Top,  Up: Top

1 chapter 1
***********


File: ,  Node: node chap2,  Prev: node chap1,  Up: Top

2 chapter 2
***********


Tag Table:
Node: Top27
Node: node chap1603
Node: node chap2698

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'printindex_between_part_chapter'} = 'top
***

* Menu:

* aop1:                                  Top.                   (line 2)
* aop1 <1>:                              Top.                   (line 2)
* chap2:                                 node chap2.            (line 0)
* chap2 <1>:                             node chap2.            (line 0)
* top1:                                  Top.                   (line 2)
* top1 <1>:                              Top.                   (line 2)

1 chapter 1
***********

2 chapter 2
***********

';


$result_converted{'html_text'}->{'printindex_between_part_chapter'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#node-chap1" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<a class="index-entry-id" id="index-top1"></a>
<a class="index-entry-id" id="index-top1-1"></a>
<a class="index-entry-id" id="index-aop1"></a>
<a class="index-entry-id" id="index-aop1-1"></a>

<hr>
</div>
<div class="part-level-extent" id="Part-1">
<div class="nav-panel">
<p>
[<a href="#node-chap1" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="part"><span>Part 1<a class="copiable-link" href="#Part-1"> &para;</a></span></h1>
<hr>

<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#node-chap1_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-chap1_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-chap1_cp_letter-T"><b>T</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-chap1_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-aop1">aop1</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-aop1-1">aop1</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-chap1_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-chap2">chap2</a></td><td class="printindex-index-section"><a href="#node-chap2">node chap2</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-chap2-1">chap2</a></td><td class="printindex-index-section"><a href="#node-chap2">node chap2</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-chap1_cp_letter-T">T</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-top1">top1</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top1-1">top1</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#node-chap1_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-chap1_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-chap1_cp_letter-T"><b>T</b></a>
 &nbsp; 
</td></tr></table>
</div>

<ul class="mini-toc">
<li><a href="#node-chap1" accesskey="1">chapter 1</a></li>
<li><a href="#node-chap2" accesskey="2">chapter 2</a></li>
</ul>
<div class="chapter-level-extent" id="node-chap1">
<h2 class="chapter" id="chapter-1"><span>1 chapter 1<a class="copiable-link" href="#chapter-1"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="node-chap2">
<div class="nav-panel">
<p>
[<a href="#node-chap1" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="chapter-2"><span>2 chapter 2<a class="copiable-link" href="#chapter-2"> &para;</a></span></h2>

<a class="index-entry-id" id="index-chap2"></a>
<a class="index-entry-id" id="index-chap2-1"></a>

</div>
</div>
';


$result_converted{'xml'}->{'printindex_between_part_chapter'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">node chap1</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">top1</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">top1</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">aop1</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="4">aop1</indexterm></cindex>

</top>
<part spaces=" "><sectiontitle>Part 1</sectiontitle>

<printindex spaces=" " value="cp" line="cp"></printindex>

<node identifier="node-chap1" spaces=" "><nodename>node chap1</nodename><nodenext automatic="on">node chap2</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter 1</sectiontitle>

</chapter>
<node identifier="node-chap2" spaces=" "><nodename>node chap2</nodename><nodeprev automatic="on">node chap1</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter 2</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="5">chap2</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="6">chap2</indexterm></cindex>

</chapter>
</part>
';

1;
