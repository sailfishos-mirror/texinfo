use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'various_itemize_command_as_argument'} = '*document_root C5
 *before_node_section
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
 *1 @top C2 l2 {top}
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
    {top}
  {empty_line:\\n}
 *2 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C16 l5 {Chap}
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
    {Chap}
  {empty_line:\\n}
  *@itemize C3 l7
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@inlineraw l7
   *@item C2 l8
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {Inlineraw\\n}
   *@end C1 l9
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
  *@itemize C4 l11
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@image l11
   *@item C2 l12
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {Image\\n}
   *@item C2 l13
   |EXTRA
   |item_number:{2}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {Second\\n}
   *@end C1 l14
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
  *@itemize C4 l16
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@footnote l16
   *@item C2 l17
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {aa\\n}
   *@item C5 l18
   |EXTRA
   |item_number:{2}
    {ignorable_spaces_after_command: }
    *paragraph C2
     {F2\\n}
     {aa\\n}
    {empty_line:\\n}
    *paragraph C1
     {T\\n}
    {empty_line:\\n}
   *@end C1 l23
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
  *@itemize C3 l25
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *4 @caption l25
   *@item C2 l26
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {Caption\\n}
   *@end C1 l27
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
  *@itemize C4 l29
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@math l29
   *@item C2 l30
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {a + b\\n}
   *@item C5 l31
   |EXTRA
   |item_number:{2}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {a}
     *@sup C1 l31
      *brace_container C1
       {c}
     {\\n}
    {empty_line:\\n}
    *paragraph C1
     {2\\n}
    {empty_line:\\n}
   *@end C1 l35
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
  *@itemize C4 l37
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *5 @anchor l37
   *@item C2 l38
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {anchor 1\\n}
   *@item C2 l39
   |EXTRA
   |item_number:{2}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {anchor 2\\n}
   *@end C1 l40
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
  *@itemize C3 l42
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@verb l42
   *@item C2 l43
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {:uu:\\n}
   *@end C1 l44
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
';


$result_texis{'various_itemize_command_as_argument'} = '@node Top
@top top

@node chap
@chapter Chap

@itemize @inlineraw
@item Inlineraw
@end itemize

@itemize @image
@item Image
@item Second
@end itemize

@itemize @footnote
@item aa
@item F2
aa

T

@end itemize

@itemize @caption
@item Caption
@end itemize

@itemize @math
@item a + b
@item a@sup{c}

2

@end itemize

@itemize @anchor
@item anchor 1
@item anchor 2
@end itemize

@itemize @verb
@item :uu:
@end itemize

';


$result_texts{'various_itemize_command_as_argument'} = 'top
***

1 Chap
******

Inlineraw

Image
Second

aa
F2
aa

T


Caption

a + b
ac

2


anchor 1
anchor 2

:uu:

';

$result_errors{'various_itemize_command_as_argument'} = [
  {
    'error_line' => 'warning: @inlineraw expected braces
',
    'line_nr' => 7,
    'text' => '@inlineraw expected braces',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image expected braces
',
    'line_nr' => 11,
    'text' => '@image expected braces',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnote should not appear on @itemize line
',
    'line_nr' => 16,
    'text' => '@footnote should not appear on @itemize line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnote expected braces
',
    'line_nr' => 16,
    'text' => '@footnote expected braces',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @caption should not appear on @itemize line
',
    'line_nr' => 25,
    'text' => '@caption should not appear on @itemize line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @caption expected braces
',
    'line_nr' => 25,
    'text' => '@caption expected braces',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @math expected braces
',
    'line_nr' => 29,
    'text' => '@math expected braces',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear on @itemize line
',
    'line_nr' => 37,
    'text' => '@anchor should not appear on @itemize line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor expected braces
',
    'line_nr' => 37,
    'text' => '@anchor expected braces',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear on @itemize line
',
    'line_nr' => 42,
    'text' => '@verb should not appear on @itemize line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb expected braces
',
    'line_nr' => 42,
    'text' => '@verb expected braces',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'various_itemize_command_as_argument'} = 'top
***

1 Chap
******

     Inlineraw

     Image
     Second

   (1) aa
   (2) F2 aa

     T

     Caption

     a + b
     a^{c}

     2

     anchor 1
     anchor 2

     :uu:

   ---------- Footnotes ----------

   (1) 
   (2) 
';


$result_converted{'html_text'}->{'various_itemize_command_as_argument'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="Chap"><span>1 Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h2>

<ul class="itemize">
<li>Inlineraw
</li></ul>

<ul class="itemize">
<li>Image
</li><li>Second
</li></ul>

<ul class="itemize" style="list-style-type: \'(1)\'">
<li>aa
</li><li>F2
aa

<p>T
</p>
</li></ul>

<ul class="itemize">
<li>Caption
</li></ul>

<ul class="itemize">
<li>a + b
</li><li>a<sup class="sup">c</sup>

<p>2
</p>
</li></ul>

<ul class="itemize">
<li>anchor 1
</li><li>anchor 2
</li></ul>

<ul class="itemize">
<li>:uu:
</li></ul>

</div>
</div>
';


$result_converted{'xml'}->{'various_itemize_command_as_argument'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chap</sectiontitle>

<itemize commandarg="inlineraw" spaces=" " endspaces=" ">
<listitem><prepend></prepend> <para>Inlineraw
</para></listitem></itemize>

<itemize commandarg="image" spaces=" " endspaces=" ">
<listitem><prepend></prepend> <para>Image
</para></listitem><listitem><prepend></prepend> <para>Second
</para></listitem></itemize>

<itemize commandarg="footnote" spaces=" " endspaces=" ">
<listitem><prepend></prepend> <para>aa
</para></listitem><listitem><prepend></prepend> <para>F2
aa
</para>
<para>T
</para>
</listitem></itemize>

<itemize commandarg="caption" spaces=" " endspaces=" ">
<listitem><prepend></prepend> <para>Caption
</para></listitem></itemize>

<itemize commandarg="math" spaces=" " endspaces=" ">
<listitem><prepend></prepend> <para>a + b
</para></listitem><listitem><prepend></prepend> <para>a<sup>c</sup>
</para>
<para>2
</para>
</listitem></itemize>

<itemize commandarg="anchor" spaces=" " endspaces=" ">
<listitem><prepend></prepend> <para>anchor 1
</para></listitem><listitem><prepend></prepend> <para>anchor 2
</para></listitem></itemize>

<itemize commandarg="verb" spaces=" " endspaces=" ">
<listitem><prepend></prepend> <para>:uu:
</para></listitem></itemize>

</chapter>
';


$result_converted{'docbook'}->{'various_itemize_command_as_argument'} = '<chapter label="1" id="chap">
<title>Chap</title>

<itemizedlist><listitem><para> Inlineraw
</para></listitem></itemizedlist>
<itemizedlist><listitem><para> Image
</para></listitem><listitem><para> Second
</para></listitem></itemizedlist>
<itemizedlist><listitem><para> aa
</para></listitem><listitem><para> F2
aa
</para>
<para>T
</para>
</listitem></itemizedlist>
<itemizedlist><listitem><para> Caption
</para></listitem></itemizedlist>
<itemizedlist><listitem><para> a + b
</para></listitem><listitem><para> a<superscript>c</superscript>
</para>
<para>2
</para>
</listitem></itemizedlist>
<itemizedlist><listitem><para> anchor 1
</para></listitem><listitem><para> anchor 2
</para></listitem></itemizedlist>
<itemizedlist><listitem><para> :uu:
</para></listitem></itemizedlist>
</chapter>
';


$result_converted{'latex_text'}->{'various_itemize_command_as_argument'} = '\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:chap}%

\\begin{itemize}
\\item Inlineraw
\\end{itemize}

\\begin{itemize}
\\item Image
\\item Second
\\end{itemize}

\\begin{itemize}[label=\\footnote{}]
\\item aa
\\item F2
aa

T

\\end{itemize}

\\begin{itemize}
\\item Caption
\\end{itemize}

\\begin{itemize}
\\item a + b
\\item a\\textsuperscript{c}

2

\\end{itemize}

\\begin{itemize}
\\item anchor 1
\\item anchor 2
\\end{itemize}

\\begin{itemize}
\\item :uu:
\\end{itemize}

';

1;
