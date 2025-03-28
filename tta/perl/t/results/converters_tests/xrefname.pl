use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'xrefname'} = '*document_root C7
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
 *1 @top C3 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E6]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  {empty_line:\\n}
 *2 @node C3 l5 {ntiti}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{ntiti}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ntiti}
  *3 @xrefname C1 l6
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |associated_anchor_command:[E2]
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {titi}
  {empty_line:\\n}
 *4 @chapter C2 l8 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[next->E6|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
 *5 @node C1 l10 {chip}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{chip}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chip}
 *6 @appendix C9 l11 {app}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |associated_node:[E5]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {app}
  {empty_line:\\n}
  *@xrefautomaticsectiontitle C1 l13
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
   *@xref C1 l15
    *brace_arg C1
    |EXTRA
    |node_content:{ntiti}
    |normalized:{ntiti}
     {ntiti}
   {\\n}
  {empty_line:\\n}
  *@xrefautomaticsectiontitle C1 l17
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
   *@ref C1 l19
    *brace_arg C1
    |EXTRA
    |node_content:{ntiti}
    |normalized:{ntiti}
     {ntiti}
   {.\\n}
';


$result_texis{'xrefname'} = '@node Top
@top top


@node ntiti
@xrefname titi

@chapter chap

@node chip
@appendix app

@xrefautomaticsectiontitle off

@xref{ntiti}

@xrefautomaticsectiontitle on

xrefautomaticsectiontitle on @ref{ntiti}.
';


$result_texts{'xrefname'} = 'top
***



1 chap
******

Appendix A app
**************


ntiti


xrefautomaticsectiontitle on ntiti.
';

$result_errors{'xrefname'} = [];



$result_converted{'plaintext'}->{'xrefname'} = 'top
***

1 chap
******

Appendix A app
**************

See ntiti

   xrefautomaticsectiontitle on ntiti.
';


$result_converted{'html_text'}->{'xrefname'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<ul class="mini-toc">
<li><a href="#ntiti" accesskey="1">chap</a></li>
<li><a href="#chip" accesskey="2">app</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="ntiti">

<h2 class="chapter" id="chap"><span>1 chap<a class="copiable-link" href="#chap"> &para;</a></span></h2>

<hr>
</div>
<div class="appendix-level-extent" id="chip">
<h2 class="appendix" id="app"><span>Appendix A app<a class="copiable-link" href="#app"> &para;</a></span></h2>


<p>See <a class="xref" href="#ntiti">ntiti</a>
</p>

<p>xrefautomaticsectiontitle on <a class="ref" href="#ntiti">titi</a>.
</p></div>
</div>
';


$result_converted{'xml'}->{'xrefname'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">ntiti</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>


</top>
<node identifier="ntiti" spaces=" "><nodename>ntiti</nodename><nodenext automatic="on">chip</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<xrefname spaces=" ">titi</xrefname>

<chapter spaces=" "><sectiontitle>chap</sectiontitle>

</chapter>
<node identifier="chip" spaces=" "><nodename>chip</nodename><nodeprev automatic="on">ntiti</nodeprev><nodeup automatic="on">Top</nodeup></node>
<appendix spaces=" "><sectiontitle>app</sectiontitle>

<xrefautomaticsectiontitle spaces=" " value="off" line="off"></xrefautomaticsectiontitle>

<para><xref label="ntiti"><xrefnodename>ntiti</xrefnodename></xref>
</para>
<xrefautomaticsectiontitle spaces=" " value="on" line="on"></xrefautomaticsectiontitle>

<para>xrefautomaticsectiontitle on <ref label="ntiti"><xrefnodename>ntiti</xrefnodename></ref>.
</para></appendix>
';


$result_converted{'docbook'}->{'xrefname'} = '<chapter label="1" id="ntiti">
<title>chap</title>


</chapter>
<appendix label="A" id="chip">
<title>app</title>


<para>See <link linkend="ntiti">ntiti</link>
</para>

<para>xrefautomaticsectiontitle on <link linkend="ntiti">ntiti</link>.
</para></appendix>
';


$result_converted{'latex_text'}->{'xrefname'} = '\\label{anchor:Top}%

\\chapter{{chap}}
\\label{anchor:ntiti}%

\\appendix
\\chapter{{app}}
\\label{anchor:chip}%


See \\hyperref[anchor:ntiti]{[ntiti], page~\\pageref*{anchor:ntiti}}


xrefautomaticsectiontitle on \\hyperref[anchor:ntiti]{[titi], page~\\pageref*{anchor:ntiti}}.
';

1;
