use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_and_node_same_name'} = '*document_root C5
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
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C6 l2 {Test index entry with node name clash}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
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
    {Test index entry with node name clash}
  {empty_line:\\n}
  *paragraph C1
   {Text.\\n}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l6
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
    {node}
  {empty_line:\\n}
 *2 @node C1 l8 {index node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{index-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index node}
 *3 @chapter C5 l9 {index node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
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
    {index node}
  {empty_line:\\n}
  *paragraph C1
   {in index node node, with the same name than index entry.\\n}
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


$result_texis{'index_and_node_same_name'} = '@node Top
@top Test index entry with node name clash

Text.

@cindex node

@node index node
@chapter index node

in index node node, with the same name than index entry.

@printindex cp
';


$result_texts{'index_and_node_same_name'} = 'Test index entry with node name clash
*************************************

Text.


1 index node
************

in index node node, with the same name than index entry.

';

$result_errors{'index_and_node_same_name'} = [];


$result_indices_sort_strings{'index_and_node_same_name'} = 'cp:
 node
';


$result_converted{'info'}->{'index_and_node_same_name'} = 'This is , produced from .


File: ,  Node: Top,  Next: index node,  Up: (dir)

Test index entry with node name clash
*************************************

Text.

* Menu:

* index node::


File: ,  Node: index node,  Prev: Top,  Up: Top

1 index node
************

in index node node, with the same name than index entry.

 [index ]
* Menu:

* node:                                  Top.                   (line 8)


Tag Table:
Node: Top27
Node: index node189

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'index_and_node_same_name'} = 'Test index entry with node name clash
*************************************

Text.

1 index node
************

in index node node, with the same name than index entry.

* Menu:

* node:                                  Top.                   (line 4)

';


$result_converted{'html_text'}->{'index_and_node_same_name'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#index-node" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="Test-index-entry-with-node-name-clash"><span>Test index entry with node name clash<a class="copiable-link" href="#Test-index-entry-with-node-name-clash"> &para;</a></span></h1>

<p>Text.
</p>
<a class="index-entry-id" id="index-node-2"></a>

<ul class="mini-toc">
<li><a href="#index-node" accesskey="1">index node</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="index-node">
<div class="nav-panel">
<p>
[<a href="#index-node" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="index-node-1"><span>1 index node<a class="copiable-link" href="#index-node-1"> &para;</a></span></h2>

<p>in index node node, with the same name than index entry.
</p>
<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="index-node_cp_letter-N">N</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-node-2">node</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
</table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'index_and_node_same_name'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">index node</nodenext></node>
<top spaces=" "><sectiontitle>Test index entry with node name clash</sectiontitle>

<para>Text.
</para>
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">node</indexterm></cindex>

</top>
<node identifier="index-node" spaces=" "><nodename>index node</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>index node</sectiontitle>

<para>in index node node, with the same name than index entry.
</para>
<printindex spaces=" " value="cp" line="cp"></printindex>
</chapter>
';

1;
