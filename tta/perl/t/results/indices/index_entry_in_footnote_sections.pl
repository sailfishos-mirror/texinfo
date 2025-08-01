use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_entry_in_footnote_sections'} = '*document_root C5
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
 *@top C4 l2 {index_entry_in_footnote}
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
    {index_entry_in_footnote}
  {empty_line:\\n}
  *paragraph C3
   {Top node}
   *@footnote C1 l4
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C3
     *paragraph C1
      {in footnote\\n}
     {empty_line:\\n}
     *paragraph C2
      {Another para in footnote.\\n}
      *index_entry_command@cindex C1 l7
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
        {index entry in footnote}
   {\\n}
  {empty_line:\\n}
 *@node C1 l10 {Index}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{2}
 |normalized:{Index}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Index}
 *@appendix C3 l11 {index}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{A}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {index}
  {empty_line:\\n}
  *@printindex C1 l13
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
';


$result_texis{'index_entry_in_footnote_sections'} = '@node Top
@top index_entry_in_footnote

Top node@footnote{in footnote

Another para in footnote.
@cindex index entry in footnote
}

@node Index
@appendix index

@printindex cp
';


$result_texts{'index_entry_in_footnote_sections'} = 'index_entry_in_footnote
***********************

Top node

Appendix A index
****************

';

$result_errors{'index_entry_in_footnote_sections'} = [];


$result_nodes_list{'index_entry_in_footnote_sections'} = '1|Top
 associated_section: index_entry_in_footnote
 associated_title_command: index_entry_in_footnote
 node_directions:
  next->Index
2|Index
 associated_section: A index
 associated_title_command: A index
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'index_entry_in_footnote_sections'} = '1|index_entry_in_footnote
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->index
 section_children:
  1|index
2|index
 associated_anchor_command: Index
 associated_node: Index
 section_directions:
  up->index_entry_in_footnote
 toplevel_directions:
  prev->index_entry_in_footnote
  up->index_entry_in_footnote
';

$result_sectioning_root{'index_entry_in_footnote_sections'} = 'level: -1
list:
 1|index_entry_in_footnote
';

$result_headings_list{'index_entry_in_footnote_sections'} = '';

$result_indices_sort_strings{'index_entry_in_footnote_sections'} = 'cp:
 index entry in footnote
';


$result_converted{'info'}->{'index_entry_in_footnote_sections'} = 'This is , produced from .


File: ,  Node: Top,  Next: Index,  Up: (dir)

index_entry_in_footnote
***********************

Top node(1)

* Menu:

Appendices

* Index::

   ---------- Footnotes ----------

   (1) in footnote

   Another para in footnote.


File: ,  Node: Index,  Prev: Top,  Up: Top

Appendix A index
****************

 [index ]
* Menu:

* index entry in footnote:               Top.                  (line 18)


Tag Table:
Node: Top27
Ref: Top-Footnote-1205
Node: Index255

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'index_entry_in_footnote_sections'} = 'index_entry_in_footnote
***********************

Top node(1)

   ---------- Footnotes ----------

   (1) in footnote

   Another para in footnote.

Appendix A index
****************

* Menu:

* index entry in footnote:               Top.                   (line 9)

';


$result_converted{'html_text'}->{'index_entry_in_footnote_sections'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="index_005fentry_005fin_005ffootnote"><span>index_entry_in_footnote<a class="copiable-link" href="#index_005fentry_005fin_005ffootnote"> &para;</a></span></h1>

<p>Top node<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>
</p>
<ul class="mini-toc">
<li><a href="#Index">index</a></li>
</ul>
<hr>
<div class="appendix-level-extent" id="Index">
<div class="nav-panel">
<p>
[<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="appendix" id="index"><span>Appendix A index<a class="copiable-link" href="#index"> &para;</a></span></h2>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Index_cp_letter-I">I</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-index-entry-in-footnote">index entry in footnote</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
</div>
</div>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>in footnote
</p>
<p>Another para in footnote.
<a class="index-entry-id" id="index-index-entry-in-footnote"></a>
</p>
</div>
';


$result_converted{'xml'}->{'index_entry_in_footnote_sections'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">Index</nodenext></node>
<top spaces=" "><sectiontitle>index_entry_in_footnote</sectiontitle>

<para>Top node<footnote><para>in footnote
</para>
<para>Another para in footnote.
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index entry in footnote</indexterm></cindex>
</para></footnote>
</para>
</top>
<node identifier="Index" spaces=" "><nodename>Index</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<appendix spaces=" "><sectiontitle>index</sectiontitle>

<printindex spaces=" " value="cp" line="cp"></printindex>
</appendix>
';

1;
