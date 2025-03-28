use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_xrefname'} = '*document_root C8
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
 |section_childs:EC[E3|E9]
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
 *2 @node C1 l4 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |menus:EC[E4]
 |node_directions:D[next->E8|prev->E0|up->E0]
 |normalized:{Chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
 *3 @chapter C4 l5 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[next->E9|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E9|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *4 @menu C3 l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{entiti}
    |normalized:{entiti}
     {entiti}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l9
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
 *5 @node C5 l11 {entiti}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E6]
 |is_target:{1}
 |menu_directions:D[up->E2]
 |node_directions:D[up->E2]
 |normalized:{entiti}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entiti}
  *6 @xrefname C1 l12
  |EXTRA
  |associated_anchor_command:[E5]
  |global_command_number:{1}
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
  *7 @heading C1 l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {after empty}
  {empty_line:\\n}
 *8 @node C1 l16 {chip}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |associated_title_command:[E9]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{chip}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chip}
 *9 @chapter C9 l17 {Chip}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E8]
 |associated_node:[E8]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chip}
  {empty_line:\\n}
  *@xrefautomaticsectiontitle C1 l19
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{off}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {off}
  {empty_line:\\n}
  *paragraph C2
   *@xref C1 l21
    *brace_arg C1
    |EXTRA
    |node_content:{entiti}
    |normalized:{entiti}
     {entiti}
   {\\n}
  {empty_line:\\n}
  *@xrefautomaticsectiontitle C1 l23
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{on}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on}
  {empty_line:\\n}
  *paragraph C3
   {xrefautomaticsectiontitle on }
   *@ref C1 l25
    *brace_arg C1
    |EXTRA
    |node_content:{entiti}
    |normalized:{entiti}
     {entiti}
   {.\\n}
';


$result_texis{'empty_xrefname'} = '@node Top
@top top

@node Chap
@chapter Chapter

@menu
* entiti::
@end menu

@node entiti
@xrefname

@heading after empty

@node chip
@chapter Chip

@xrefautomaticsectiontitle off

@xref{entiti}

@xrefautomaticsectiontitle on

xrefautomaticsectiontitle on @ref{entiti}.
';


$result_texts{'empty_xrefname'} = 'top
***

1 Chapter
*********

* entiti::


after empty
===========

2 Chip
******


entiti


xrefautomaticsectiontitle on entiti.
';

$result_errors{'empty_xrefname'} = [];



$result_converted{'plaintext'}->{'empty_xrefname'} = 'top
***

1 Chapter
*********

after empty
===========

2 Chip
******

See entiti

   xrefautomaticsectiontitle on entiti.
';


$result_converted{'html_text'}->{'empty_xrefname'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#Chap" accesskey="1">Chapter</a></li>
<li><a href="#chip" accesskey="2">Chip</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="Chap">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>


<hr>
<a class="node" id="entiti"></a>
<h3 class="heading" id="after-empty"><span>after empty<a class="copiable-link" href="#after-empty"> &para;</a></span></h3>

<hr>
</div>
<div class="chapter-level-extent" id="chip">
<h2 class="chapter" id="Chip"><span>2 Chip<a class="copiable-link" href="#Chip"> &para;</a></span></h2>


<p>See <a class="xref" href="#entiti">entiti</a>
</p>

<p>xrefautomaticsectiontitle on <a class="ref" href="#entiti"></a>.
</p></div>
</div>
';


$result_converted{'xml'}->{'empty_xrefname'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">Chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="Chap" spaces=" "><nodename>Chap</nodename><nodenext automatic="on">chip</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>entiti</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</chapter>
<node identifier="entiti" spaces=" "><nodename>entiti</nodename><nodeup automatic="on">Chap</nodeup></node>
<xrefname></xrefname>

<heading spaces=" ">after empty</heading>

<node identifier="chip" spaces=" "><nodename>chip</nodename><nodeprev automatic="on">Chap</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chip</sectiontitle>

<xrefautomaticsectiontitle spaces=" " value="off" line="off"></xrefautomaticsectiontitle>

<para><xref label="entiti"><xrefnodename>entiti</xrefnodename></xref>
</para>
<xrefautomaticsectiontitle spaces=" " value="on" line="on"></xrefautomaticsectiontitle>

<para>xrefautomaticsectiontitle on <ref label="entiti"><xrefnodename>entiti</xrefnodename></ref>.
</para></chapter>
';


$result_converted{'docbook'}->{'empty_xrefname'} = '<chapter label="1" id="Chap">
<title>Chapter</title>


</chapter>
<anchor id="entiti"/>

<bridgehead renderas="sect1">after empty</bridgehead>

<chapter label="2" id="chip">
<title>Chip</title>


<para>See <link linkend="entiti">entiti</link>
</para>

<para>xrefautomaticsectiontitle on <link linkend="entiti">entiti</link>.
</para></chapter>
';


$result_converted{'latex_text'}->{'empty_xrefname'} = '\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:Chap}%


\\label{anchor:entiti}%

\\section*{{after empty}}

\\chapter{{Chip}}
\\label{anchor:chip}%


See \\hyperref[anchor:entiti]{[entiti], page~\\pageref*{anchor:entiti}}


xrefautomaticsectiontitle on \\hyperref[anchor:entiti]{[entiti], page~\\pageref*{anchor:entiti}}.
';

1;
