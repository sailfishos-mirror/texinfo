use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'printindex_merged_indices_code_style'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
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
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C25 l5 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
    {Chapter}
  {empty_line:\\n}
  *@synindex C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{cp|fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp fn}
  {empty_line:\\n}
  *@synindex C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{vr|fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {vr fn}
  {empty_line:\\n}
  *4 index_entry_command@cindex C1 l11
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
    {c``b}
  {empty_line:\\n}
  *5 index_entry_command@vindex C1 l13
  |INFO
  |command_name:{vindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{vr,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {v``j}
  {empty_line:\\n}
  *6 index_entry_command@findex C1 l15
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {f``g}
  {empty_line:\\n}
  *@defcodeindex C1 l17
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{cdi}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cdi}
  {empty_line:\\n}
  *@synindex C1 l19
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{cdi|fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cdi fn}
  {empty_line:\\n}
  *7 index_entry_command@cdiindex C1 l21
  |INFO
  |command_name:{cdiindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cdi,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cdi``h}
  {empty_line:\\n}
  *@defindex C1 l23
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{ddi}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ddi}
  {empty_line:\\n}
  *@syncodeindex C1 l25
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{ddi|cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ddi cp}
  {empty_line:\\n}
  *8 index_entry_command@ddiindex C1 l27
  |INFO
  |command_name:{ddiindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{ddi,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ddi``g}
  {empty_line:\\n}
  *@printindex C1 l29
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
';


$result_texis{'printindex_merged_indices_code_style'} = '@node Top
@top top

@node chap
@chapter Chapter

@synindex cp fn

@synindex vr fn

@cindex c``b

@vindex v``j

@findex f``g

@defcodeindex cdi

@synindex cdi fn

@cdiindex cdi``h

@defindex ddi

@syncodeindex ddi cp

@ddiindex ddi``g

@printindex fn
';


$result_texts{'printindex_merged_indices_code_style'} = 'top
***

1 Chapter
*********












';

$result_errors{'printindex_merged_indices_code_style'} = [];


$result_indices{'printindex_merged_indices_code_style'} = {
  'index_names' => {
    'cdi' => {
      'in_code' => 0,
      'merged_in' => 'fn',
      'name' => 'cdi'
    },
    'cp' => {
      'in_code' => 0,
      'merged_in' => 'fn',
      'name' => 'cp'
    },
    'ddi' => {
      'in_code' => 1,
      'merged_in' => 'fn',
      'name' => 'ddi'
    },
    'fn' => {
      'in_code' => 1,
      'name' => 'fn'
    },
    'ky' => {
      'in_code' => 1,
      'name' => 'ky'
    },
    'pg' => {
      'in_code' => 1,
      'name' => 'pg'
    },
    'tp' => {
      'in_code' => 1,
      'name' => 'tp'
    },
    'vr' => {
      'in_code' => 0,
      'merged_in' => 'fn',
      'name' => 'vr'
    }
  }
};


$result_floats{'printindex_merged_indices_code_style'} = {};


$result_indices_sort_strings{'printindex_merged_indices_code_style'} = {
  'fn' => [
    'c"b',
    'cdi"h',
    'ddi``g',
    'f``g',
    'v"j'
  ]
};



$result_converted{'plaintext'}->{'printindex_merged_indices_code_style'} = 'top
***

1 Chapter
*********

* Menu:

* c"b:                                   chap.                  (line 6)
* cdi"h:                                 chap.                  (line 6)
* ddi``g:                                chap.                  (line 6)
* f``g:                                  chap.                  (line 6)
* v"j:                                   chap.                  (line 6)

';


$result_converted{'html_text'}->{'printindex_merged_indices_code_style'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>



<a class="index-entry-id" id="index-c_0060_0060b"></a>

<a class="index-entry-id" id="index-v_0060_0060j"></a>

<a class="index-entry-id" id="index-f_0060_0060g"></a>



<a class="index-entry-id" id="index-cdi_0060_0060h"></a>



<a class="index-entry-id" id="index-ddi_0060_0060g"></a>

<div class="printindex fn-printindex">
<table class="index-letters-header-printindex fn-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-V"><b>V</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex fn-entries-printindex">
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-c_0060_0060b">c&ldquo;b</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-cdi_0060_0060h">cdi&ldquo;h</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-D">D</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-ddi_0060_0060g"><code>ddi``g</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-F">F</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-f_0060_0060g"><code>f``g</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-V">V</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-v_0060_0060j">v&ldquo;j</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
<table class="index-letters-footer-printindex fn-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-V"><b>V</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'printindex_merged_indices_code_style'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<synindex spaces=" " from="cp" to="fn" line="cp fn"></synindex>

<synindex spaces=" " from="vr" to="fn" line="vr fn"></synindex>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1" mergedindex="fn">c&textldquo;b</indexterm></cindex>

<vindex index="vr" spaces=" "><indexterm index="vr" number="1" incode="0" mergedindex="fn">v&textldquo;j</indexterm></vindex>

<findex index="fn" spaces=" "><indexterm index="fn" number="1">f``g</indexterm></findex>

<defcodeindex spaces=" " value="cdi" line="cdi"></defcodeindex>

<synindex spaces=" " from="cdi" to="fn" line="cdi fn"></synindex>

<indexcommand command="cdiindex" index="cdi" spaces=" "><indexterm index="cdi" number="1" incode="0" mergedindex="fn">cdi&textldquo;h</indexterm></indexcommand>

<defindex spaces=" " value="ddi" line="ddi"></defindex>

<syncodeindex spaces=" " from="ddi" to="cp" line="ddi cp"></syncodeindex>

<indexcommand command="ddiindex" index="ddi" spaces=" "><indexterm index="ddi" number="1" incode="1" mergedindex="fn">ddi``g</indexterm></indexcommand>

<printindex spaces=" " value="fn" line="fn"></printindex>
</chapter>
';


$result_converted{'docbook'}->{'printindex_merged_indices_code_style'} = '<chapter label="1" id="chap">
<title>Chapter</title>



<indexterm role="cp"><primary>c&#8220;b</primary></indexterm>

<indexterm role="vr"><primary>v&#8220;j</primary></indexterm>

<indexterm role="fn"><primary>f``g</primary></indexterm>



<indexterm role="cdi"><primary>cdi&#8220;h</primary></indexterm>



<indexterm role="ddi"><primary>ddi``g</primary></indexterm>

<index role="fn"></index>
</chapter>
';

1;
