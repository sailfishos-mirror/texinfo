use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_entry_in_footnote_separate'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content C1
   *@footnotestyle C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |misc_args:A{separate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {separate}
 *0 @node C4 l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @menu C4 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
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
   *menu_entry C4 l6
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
 *2 @node C4 l9 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E4|up->E0]
 |node_directions:D[next->E4|prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *paragraph C3
   {chap node}
   *3 @footnote C1 l11
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C7
     *paragraph C2
      {in footnote\\n}
      *index_entry_command@cindex C1 l12
      |INFO
      |command_name:{cindex}
      |spaces_before_argument:
       |{ }
      |EXTRA
      |element_node:[E2]
      |index_entry:I{cp,1}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {index entry in footnote}
     {empty_line:\\n}
     *paragraph C1
      {Blah\\n}
     {empty_line:\\n}
     *paragraph C1
      {Blih\\n}
     {empty_line:\\n}
     *index_entry_command@cindex C1 l18
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,2}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {counting entry}
   {\\n}
  {empty_line:\\n}
 *4 @node C3 l21 {First}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[prev->E2|up->E0]
 |node_directions:D[prev->E2|up->E0]
 |normalized:{First}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {First}
  {empty_line:\\n}
  *@printindex C1 l23
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


$result_texis{'index_entry_in_footnote_separate'} = '@footnotestyle separate
@node Top

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


$result_texts{'index_entry_in_footnote_separate'} = '
* chap::
* First::


chap node


';

$result_errors{'index_entry_in_footnote_separate'} = [];


$result_indices_sort_strings{'index_entry_in_footnote_separate'} = 'cp:
 counting entry
 index entry in footnote
';


$result_converted{'info'}->{'index_entry_in_footnote_separate'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)

* Menu:

* chap::
* First::


File: ,  Node: chap,  Next: First,  Prev: Top,  Up: Top

chap node(1) (*note chap-Footnote-1::)


File: ,  Node: chap-Footnotes,  Up: chap

   (1) in footnote

   Blah

   Blih


File: ,  Node: First,  Prev: chap,  Up: Top

 [index ]
* Menu:

* counting entry:                        chap-Footnotes.        (line 8)
* index entry in footnote:               chap-Footnotes.        (line 3)


Tag Table:
Node: Top27
Node: chap103
Node: chap-Footnotes202
Ref: chap-Footnote-1246
Node: First284

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'index_entry_in_footnote_separate'} = 'chap node(1) (see chap-Footnote-1)

   (1) in footnote

   Blah

   Blih

* Menu:

* counting entry:                        chap-Footnotes.        (line 7)
* index entry in footnote:               chap-Footnotes.        (line 2)

';


$result_converted{'html_text'}->{'index_entry_in_footnote_separate'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
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
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="First_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-counting-entry">counting entry</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="First_cp_letter-I">I</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-index-entry-in-footnote">index entry in footnote</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#First_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#First_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
</div>
<hr>
<div class="element-footnotes" id="SEC_Footnotes">
<div class="nav-panel">
<p>
[<a href="#Top" title="Cover (top) of document" rel="start">Top</a>][<a href="#First" title="Index" rel="index">Index</a>]</p>
</div>
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
</div>';


$result_converted{'xml'}->{'index_entry_in_footnote_separate'} = '<footnotestyle spaces=" " value="separate" line="separate"></footnotestyle>
<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>

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
