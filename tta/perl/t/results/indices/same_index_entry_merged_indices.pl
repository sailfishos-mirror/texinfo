use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'same_index_entry_merged_indices'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@syncodeindex C1 l1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |misc_args:A{vr|fn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {vr fn}
   {empty_line:\\n}
 *@node C1 l3 {Top}
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
 *@top C2 l4
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
  {empty_line:\\n}
 *@node C1 l6 {chap}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chap}
 *@chapter C9 l7 {Chapter}
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
  *paragraph C1
   {Text.\\n}
  {empty_line:\\n}
  *@deffn C3 l11
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *def_line C1 l11
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |* C1
     |*def_line_arg C1
      |{mmm-mode}
   |element_node:{chap}
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C5
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *def_category C1
      *def_line_arg C1
       {Command}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {mmm-mode}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *@var C1 l11
        *brace_container C1
         {arg}
   *def_item C1
    *paragraph C1
     {Toggle the state of MMM Mode.\\n}
   *@end C1 l13
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {deffn}
  {empty_line:\\n}
  *@defvar C3 l15
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *def_line C1 l15
   |EXTRA
   |def_command:{defvar}
   |def_index_element:
    |* C1
     |*def_line_arg C1
      |{mmm-mode}
   |element_node:{chap}
   |index_entry:I{vr,1}
   |original_def_cmdname:{defvar}
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *def_category C1
     |INFO
     |inserted:{1}
      *def_line_arg C1
       {Variable}
     (i){spaces: }
     *def_name C1
      *def_line_arg C1
       {mmm-mode}
   *def_item C1
    *paragraph C1
     {This variable represents MMM Mode.\\n}
   *@end C1 l17
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{defvar}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {defvar}
  {empty_line:\\n}
  *@printindex C1 l19
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {fn}
';


$result_texis{'same_index_entry_merged_indices'} = '@syncodeindex vr fn

@node Top
@top

@node chap
@chapter Chapter

Text.

@deffn Command mmm-mode @var{arg}
Toggle the state of MMM Mode.
@end deffn

@defvar mmm-mode
This variable represents MMM Mode.
@end defvar

@printindex fn
';


$result_texts{'same_index_entry_merged_indices'} = '

1 Chapter
*********

Text.

Command: mmm-mode arg
Toggle the state of MMM Mode.

Variable: mmm-mode
This variable represents MMM Mode.

';

$result_errors{'same_index_entry_merged_indices'} = [];


$result_indices{'same_index_entry_merged_indices'} = 'cp
fn C
ky C
pg C
tp C
vr C ->fn
';

$result_nodes_list{'same_index_entry_merged_indices'} = '1|Top
 associated_section
 associated_title_command
 node_directions:
  next->chap
2|chap
 associated_section: 1 Chapter
 associated_title_command: 1 Chapter
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'same_index_entry_merged_indices'} = '1
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->Chapter
 section_children:
  1|Chapter
2|Chapter
 associated_anchor_command: chap
 associated_node: chap
 section_directions:
  up->
 toplevel_directions:
  prev->
  up->
';

$result_sectioning_root{'same_index_entry_merged_indices'} = 'level: -1
list:
 1|
';

$result_headings_list{'same_index_entry_merged_indices'} = '';

$result_indices_sort_strings{'same_index_entry_merged_indices'} = 'fn:
 mmm-mode
 mmm-mode
';


$result_converted{'info'}->{'same_index_entry_merged_indices'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 Chapter
*********

Text.

 -- Command: mmm-mode ARG
     Toggle the state of MMM Mode.

 -- Variable: mmm-mode
     This variable represents MMM Mode.

 [index ]
* Menu:

* mmm-mode:                              chap.                 (line  8)
* mmm-mode <1>:                          chap.                 (line 11)


Tag Table:
Node: Top27
Node: chap93

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'same_index_entry_merged_indices'} = '1 Chapter
*********

Text.

 -- Command: mmm-mode ARG
     Toggle the state of MMM Mode.

 -- Variable: mmm-mode
     This variable represents MMM Mode.

* Menu:

* mmm-mode:                              chap.                  (line 5)
* mmm-mode <1>:                          chap.                  (line 8)

';


$result_converted{'html_text'}->{'same_index_entry_merged_indices'} = '
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<ul class="mini-toc">
<li><a href="#chap">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>Text.
</p>
<dl class="first-deffn def-block">
<dt class="deffn def-line" id="index-mmm_002dmode"><span class="category-def">Command: </span><span><strong class="def-name">mmm-mode</strong> <var class="def-var-arguments"><var class="var">arg</var></var><a class="copiable-link" href="#index-mmm_002dmode"> &para;</a></span></dt>
<dd><p>Toggle the state of MMM Mode.
</p></dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr def-block">
<dt class="defvr defvar-alias-defvr def-line" id="index-mmm_002dmode-1"><span class="category-def">Variable: </span><span><strong class="def-name">mmm-mode</strong><a class="copiable-link" href="#index-mmm_002dmode-1"> &para;</a></span></dt>
<dd><p>This variable represents MMM Mode.
</p></dd></dl>

<div class="printindex fn-printindex">
<table class="index-entries-printindex fn-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-M">M</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-mmm_002dmode"><code>mmm-mode</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-mmm_002dmode-1"><code>mmm-mode</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'same_index_entry_merged_indices'} = '<syncodeindex spaces=" " from="vr" to="fn" line="vr fn"></syncodeindex>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para>Text.
</para>
<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="1">mmm-mode</indexterm><defcategory>Command</defcategory> <deffunction>mmm-mode</deffunction> <defparam><var>arg</var></defparam></definitionterm>
<definitionitem><para>Toggle the state of MMM Mode.
</para></definitionitem></deffn>

<defvar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="1" mergedindex="fn">mmm-mode</indexterm><defcategory automatic="on">Variable</defcategory> <defvariable>mmm-mode</defvariable></definitionterm>
<definitionitem><para>This variable represents MMM Mode.
</para></definitionitem></defvar>

<printindex spaces=" " value="fn" line="fn"></printindex>
</chapter>
';

1;
