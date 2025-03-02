use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'sections_and_printindex'} = '*document_root C8
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2 {for example}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E8]
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
    {for example}
  {empty_line:\\n}
 *2 @node C1 l4 {node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node}
 *3 @chapter C3 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_childs:EC[E6]
 |section_directions:D[next->E8|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E8|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *4 index_entry_command@cindex C1 l7
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
    {entry1}
 *5 @node C1 l8 {sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[up->E2]
 |normalized:{sec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec}
 *6 @section C3 l9 {Sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |section_directions:D[up->E3]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Sec}
  {empty_line:\\n}
  *7 index_entry_command@cindex C1 l11
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E5]
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entry2}
 *8 @appendix C4 l12 {App}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {App}
  {empty_line:\\n}
  *@printindex C1 l14
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
';


$result_texis{'sections_and_printindex'} = '@node Top
@top for example

@node node
@chapter chap

@cindex entry1
@node sec
@section Sec

@cindex entry2
@appendix App

@printindex cp

';


$result_texts{'sections_and_printindex'} = 'for example
***********

1 chap
******

1.1 Sec
=======

Appendix A App
**************


';

$result_errors{'sections_and_printindex'} = [];


$result_floats{'sections_and_printindex'} = {};


$result_indices_sort_strings{'sections_and_printindex'} = {
  'cp' => [
    'entry1',
    'entry2'
  ]
};



$result_converted{'plaintext'}->{'sections_and_printindex'} = 'for example
***********

1 chap
******

1.1 Sec
=======

Appendix A App
**************

* Menu:

* entry1:                                node.                  (line 5)
* entry2:                                sec.                   (line 9)

';


$result_converted{'html_text'}->{'sections_and_printindex'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#sec" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="for-example"><span>for example<a class="copiable-link" href="#for-example"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#node" accesskey="1">chap</a></li>
<li><a href="#App" accesskey="2">App</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="node">
<div class="nav-panel">
<p>
[<a href="#sec" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="chap"><span>1 chap<a class="copiable-link" href="#chap"> &para;</a></span></h2>

<a class="index-entry-id" id="index-entry1"></a>
<ul class="mini-toc">
<li><a href="#sec" accesskey="1">Sec</a></li>
</ul>
<hr>
<div class="section-level-extent" id="sec">
<div class="nav-panel">
<p>
[<a href="#sec" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section" id="Sec"><span>1.1 Sec<a class="copiable-link" href="#Sec"> &para;</a></span></h3>

<a class="index-entry-id" id="index-entry2"></a>
</div>
</div>
<div class="appendix-level-extent" id="App">
<h2 class="appendix"><span>Appendix A App<a class="copiable-link" href="#App"> &para;</a></span></h2>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="sec_cp_letter-E">E</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-entry1">entry1</a></td><td class="printindex-index-section"><a href="#node">node</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-entry2">entry2</a></td><td class="printindex-index-section"><a href="#sec">sec</a></td></tr>
</table>
</div>

</div>
</div>
';


$result_converted{'xml'}->{'sections_and_printindex'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">node</nodenext></node>
<top spaces=" "><sectiontitle>for example</sectiontitle>

</top>
<node identifier="node" spaces=" "><nodename>node</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chap</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">entry1</indexterm></cindex>
<node identifier="sec" spaces=" "><nodename>sec</nodename><nodeup automatic="on">node</nodeup></node>
<section spaces=" "><sectiontitle>Sec</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="2">entry2</indexterm></cindex>
</section>
</chapter>
<appendix spaces=" "><sectiontitle>App</sectiontitle>

<printindex spaces=" " value="cp" line="cp"></printindex>

</appendix>
';


$result_converted{'docbook'}->{'sections_and_printindex'} = '<chapter label="1" id="node">
<title>chap</title>

<indexterm role="cp"><primary>entry1</primary></indexterm>
<sect1 label="1.1" id="sec">
<title>Sec</title>

<indexterm role="cp"><primary>entry2</primary></indexterm>
</sect1>
</chapter>
<appendix label="A">
<title>App</title>

<index role="cp"></index>

</appendix>
';


$result_converted{'latex_text'}->{'sections_and_printindex'} = '\\label{anchor:Top}%
\\chapter{{chap}}
\\label{anchor:node}%

\\index[cp]{entry1@entry1}%
\\section{{Sec}}
\\label{anchor:sec}%

\\index[cp]{entry2@entry2}%
\\appendix
\\chapter{{App}}

\\printindex[cp]

';

1;
