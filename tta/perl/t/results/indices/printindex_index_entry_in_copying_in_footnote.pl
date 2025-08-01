use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'printindex_index_entry_in_copying_in_footnote'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@copying C7 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
    {empty_line:\\n}
    *paragraph C3
     {Copying}
     *@footnote C1 l3
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument:\\n}
     |EXTRA
     |global_command_number:{1}
      *brace_command_context C2
       *paragraph C2
        {In footnote\\n}
        *index_entry_command@cindex C1 l5
        |INFO
        |spaces_before_argument:
         |{spaces_before_argument: }
        |EXTRA
        |element_region:{copying}
        |index_entry:I{cp,1}
         *line_arg C1
         |INFO
         |spaces_after_argument:
          |{spaces_after_argument:\\n}
          {Copying this document}
       {empty_line:\\n}
     {.\\n}
    {empty_line:\\n}
    *@printindex C1 l9
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
    {empty_line:\\n}
    *@end C1 l11
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {copying}
   {empty_line:\\n}
 *@node C1 l13 {Top}
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
 *@top C7 l14 {top}
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
  *paragraph C1
   {Top.\\n}
  *@insertcopying C1 l17
  |EXTRA
  |global_command_number:{1}
   *line_arg
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
  {empty_line:\\n}
  *@menu C3 l19
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *menu_entry C4 l20
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter}
    |normalized:{chapter}
     {chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l21
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {menu}
  {empty_line:\\n}
 *@node C1 l23 {chapter}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chapter}
 *@chapter C4 l24 {Chapter}
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
    {Chapter}
  {empty_line:\\n}
  *@insertcopying C1 l26
  |EXTRA
  |global_command_number:{2}
   *line_arg
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
  {empty_line:\\n}
';


$result_texis{'printindex_index_entry_in_copying_in_footnote'} = '@copying

Copying@footnote{
In footnote
@cindex Copying this document

}.

@printindex cp

@end copying

@node Top
@top top

Top.
@insertcopying

@menu
* chapter::
@end menu

@node chapter
@chapter Chapter

@insertcopying

';


$result_texts{'printindex_index_entry_in_copying_in_footnote'} = '
top
***

Top.

* chapter::

1 Chapter
*********


';

$result_errors{'printindex_index_entry_in_copying_in_footnote'} = [];


$result_nodes_list{'printindex_index_entry_in_copying_in_footnote'} = '1|Top
 associated_section: top
 associated_title_command: top
 menus:
  chapter
 node_directions:
  next->chapter
2|chapter
 associated_section: 1 Chapter
 associated_title_command: 1 Chapter
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'printindex_index_entry_in_copying_in_footnote'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->Chapter
 section_children:
  1|Chapter
2|Chapter
 associated_anchor_command: chapter
 associated_node: chapter
 section_directions:
  up->top
 toplevel_directions:
  prev->top
  up->top
';

$result_sectioning_root{'printindex_index_entry_in_copying_in_footnote'} = 'level: -1
list:
 1|top
';

$result_headings_list{'printindex_index_entry_in_copying_in_footnote'} = '';

$result_indices_sort_strings{'printindex_index_entry_in_copying_in_footnote'} = 'cp:
 Copying this document
';


$result_converted{'info'}->{'printindex_index_entry_in_copying_in_footnote'} = 'This is , produced from .

Copying(1).

   ---------- Footnotes ----------

   (1) In footnote


File: ,  Node: Top,  Next: chapter,  Up: (dir)

top
***

Top.

   Copying(1).

* Menu:

* chapter::

   ---------- Footnotes ----------

   (1) In footnote


File: ,  Node: chapter,  Prev: Top,  Up: Top

1 Chapter
*********

Copying(1).

 [index ]
* Menu:

* Copying this document:                 Top.                  (line 16)

   ---------- Footnotes ----------

   (1) In footnote


Tag Table:
Node: Top96
Ref: Top-Footnote-1235
Node: chapter255
Ref: chapter-Footnote-1468

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'printindex_index_entry_in_copying_in_footnote'} = 'top
***

Top.

   Copying(1).

   ---------- Footnotes ----------

   (1) In footnote

1 Chapter
*********

Copying(1).

* Menu:

* Copying this document:                 Top.                   (line 9)

   ---------- Footnotes ----------

   (1) In footnote

';


$result_converted{'html_text'}->{'printindex_index_entry_in_copying_in_footnote'} = '
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#Top" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<p>Top.
</p>
<p>Copying<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>.
</p>
<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Top_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-copying-Copying-this-document">Copying this document</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
</div>



<ul class="mini-toc">
<li><a href="#chapter">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
[<a href="#Top" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>


<p>Copying<a class="footnote" id="DOCF1_2" href="#FOOT1_2"><sup>2</sup></a>.
</p>
<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-copying-Copying-this-document">Copying this document</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
</div>


</div>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>In footnote
<a class="index-entry-id" id="index-copying-Copying-this-document"></a>
</p>
<h5 class="footnote-body-heading"><a id="FOOT1_2" href="#DOCF1_2">(2)</a></h5>
<p>In footnote
<a class="index-entry-id" id="index-copying-Copying-this-document"></a>
</p>
</div>
';


$result_converted{'xml'}->{'printindex_index_entry_in_copying_in_footnote'} = '<copying endspaces=" ">

<para>Copying<footnote spaces="\\n"><para>In footnote
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">Copying this document</indexterm></cindex>
</para>
</footnote>.
</para>
<printindex spaces=" " value="cp" line="cp"></printindex>

</copying>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<para>Top.
</para><insertcopying></insertcopying>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="chapter" spaces=" "><nodename>chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<insertcopying></insertcopying>

</chapter>
';

1;
