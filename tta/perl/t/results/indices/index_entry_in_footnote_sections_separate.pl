use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_entry_in_footnote_sections_separate'} = '*document_root C5
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
 *1 @top C4 l2 {index_entry_in_footnote}
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
        {index entry in footnote}
   {\\n}
  {empty_line:\\n}
 *2 @node C1 l10 {Index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{Index}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Index}
 *3 @appendix C3 l11 {index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index}
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


$result_texis{'index_entry_in_footnote_sections_separate'} = '@node Top
@top index_entry_in_footnote

Top node@footnote{in footnote

Another para in footnote.
@cindex index entry in footnote
}

@node Index
@appendix index

@printindex cp
';


$result_texts{'index_entry_in_footnote_sections_separate'} = 'index_entry_in_footnote
***********************

Top node

Appendix A index
****************

';

$result_errors{'index_entry_in_footnote_sections_separate'} = [];


$result_indices_sort_strings{'index_entry_in_footnote_sections_separate'} = 'cp:
 index entry in footnote
';


$result_converted{'info'}->{'index_entry_in_footnote_sections_separate'} = 'This is , produced from .


File: ,  Node: Top,  Next: Index,  Up: (dir)

index_entry_in_footnote
***********************

Top node(1) (*note Top-Footnote-1::)

* Menu:

Appendices

* Index::


File: ,  Node: Top-Footnotes,  Up: Top

   (1) in footnote

   Another para in footnote.


File: ,  Node: Index,  Prev: Top,  Up: Top

Appendix A index
****************

 [index ]
* Menu:

* index entry in footnote:               Top-Footnotes.         (line 5)


Tag Table:
Node: Top27
Node: Top-Footnotes194
Ref: Top-Footnote-1236
Node: Index286

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'index_entry_in_footnote_sections_separate'} = 'index_entry_in_footnote
***********************

Top node(1) (see Top-Footnote-1)

   (1) in footnote

   Another para in footnote.

Appendix A index
****************

* Menu:

* index entry in footnote:               Top-Footnotes.         (line 7)

';


$result_converted{'html_text'}->{'index_entry_in_footnote_sections_separate'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="index_005fentry_005fin_005ffootnote"><span>index_entry_in_footnote<a class="copiable-link" href="#index_005fentry_005fin_005ffootnote"> &para;</a></span></h1>

<p>Top node<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>
</p>
<ul class="mini-toc">
<li><a href="#Index" accesskey="1">index</a></li>
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
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Index_cp_letter-I">I</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-index-entry-in-footnote">index entry in footnote</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
</table>
</div>
<hr>
</div>
</div>
<div class="element-footnotes" id="SEC_Footnotes">
<div class="nav-panel">
<p>
[<a href="#Top" title="Cover (top) of document" rel="start">Top</a>][<a href="#Index" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>in footnote
</p>
<p>Another para in footnote.
<a class="index-entry-id" id="index-index-entry-in-footnote"></a>
</p>
</div>';


$result_converted{'xml'}->{'index_entry_in_footnote_sections_separate'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">Index</nodenext></node>
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
