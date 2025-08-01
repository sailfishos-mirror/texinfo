use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_entry_in_footnote_different_node_end'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content
 *@node C4 l1 {Top}
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
  {empty_line:\\n}
  *@menu C4 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap}
    |normalized:{chap}
     {chap}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{First}
    |normalized:{First}
     {First}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l6
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
 *@node C4 l8 {chap}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chap}
  {empty_line:\\n}
  *paragraph C3
   {chap node}
   *@footnote C1 l10
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C7
     *paragraph C2
      {in footnote\\n}
      *index_entry_command@cindex C1 l11
      |INFO
      |spaces_before_argument:
       |{spaces_before_argument: }
      |EXTRA
      |element_node:{chap}
      |index_entry:I{cp,1}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{spaces_after_argument:\\n}
        {index entry in footnote}
     {empty_line:\\n}
     *paragraph C1
      {Blah\\n}
     {empty_line:\\n}
     *paragraph C1
      {Blih\\n}
     {empty_line:\\n}
     *index_entry_command@cindex C1 l17
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
     |EXTRA
     |element_node:{chap}
     |index_entry:I{cp,2}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {counting entry}
   {\\n}
  {empty_line:\\n}
 *@node C3 l20 {First}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{3}
 |normalized:{First}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {First}
  {empty_line:\\n}
  *@printindex C1 l22
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


$result_texis{'index_entry_in_footnote_different_node_end'} = '@node Top

@menu
* chap::
* First::
@end menu

@node chap

chap node@footnote{in footnote
@cindex index entry in footnote

Blah

Blih

@cindex counting entry
}

@node First

@printindex cp
';


$result_texts{'index_entry_in_footnote_different_node_end'} = '
* chap::
* First::


chap node


';

$result_errors{'index_entry_in_footnote_different_node_end'} = [];


$result_nodes_list{'index_entry_in_footnote_different_node_end'} = '1|Top
 menus:
  chap
  First
 node_directions:
  next->chap
2|chap
 node_directions:
  next->First
  prev->Top
  up->Top
3|First
 node_directions:
  prev->chap
  up->Top
';

$result_sections_list{'index_entry_in_footnote_different_node_end'} = '';

$result_sectioning_root{'index_entry_in_footnote_different_node_end'} = '';

$result_headings_list{'index_entry_in_footnote_different_node_end'} = '';

$result_indices_sort_strings{'index_entry_in_footnote_different_node_end'} = 'cp:
 counting entry
 index entry in footnote
';


$result_converted{'info'}->{'index_entry_in_footnote_different_node_end'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)

* Menu:

* chap::
* First::


File: ,  Node: chap,  Next: First,  Prev: Top,  Up: Top

chap node(1)

   ---------- Footnotes ----------

   (1) in footnote

   Blah

   Blih


File: ,  Node: First,  Prev: chap,  Up: Top

 [index ]
* Menu:

* counting entry:                        chap.                 (line 12)
* index entry in footnote:               chap.                 (line  7)


Tag Table:
Node: Top27
Node: chap103
Ref: chap-Footnote-1212
Node: First250

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'index_entry_in_footnote_different_node_end'} = 'chap node(1)

   ---------- Footnotes ----------

   (1) in footnote

   Blah

   Blih

* Menu:

* counting entry:                        chap.                  (line 9)
* index entry in footnote:               chap.                  (line 4)

';


$result_converted{'html_text'}->{'index_entry_in_footnote_different_node_end'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
[<a href="#First" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>


<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
[<a href="#First" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<p>chap node<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>
</p>
<hr>
<a class="node-id" id="First"></a><div class="nav-panel">
<p>
[<a href="#First" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>First<a class="copiable-link" href="#First"> &para;</a></span></h4>

<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#First_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#First_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="First_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-counting-entry">counting entry</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="First_cp_letter-I">I</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-index-entry-in-footnote">index entry in footnote</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#First_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#First_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>in footnote
<a class="index-entry-id" id="index-index-entry-in-footnote"></a>
</p>
<p>Blah
</p>
<p>Blih
</p>
<a class="index-entry-id" id="index-counting-entry"></a>
</div>
';


$result_converted{'xml'}->{'index_entry_in_footnote_different_node_end'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chap</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>First</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="chap" spaces=" "><nodename>chap</nodename><nodenext automatic="on">First</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>

<para>chap node<footnote><para>in footnote
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index entry in footnote</indexterm></cindex>
</para>
<para>Blah
</para>
<para>Blih
</para>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">counting entry</indexterm></cindex>
</footnote>
</para>
<node identifier="First" spaces=" "><nodename>First</nodename><nodeprev automatic="on">chap</nodeprev><nodeup automatic="on">Top</nodeup></node>

<printindex spaces=" " value="cp" line="cp"></printindex>
';

1;
