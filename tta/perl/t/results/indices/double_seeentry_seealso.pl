use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_seeentry_seealso'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *@node C1 l1 {top}
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
    {top}
 *@top C2 l2 {top}
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
 *@node C1 l4 {node index}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{2}
 |normalized:{node-index}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {node index}
 *@chapter C8 l5 {Chapter Index}
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
    {Chapter Index}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l7
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{node-index}
  |index_entry:I{cp,1}
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {aaa}
    {spaces_at_end: }
    *@seeentry C1 l7
     *brace_arg C1
      {bbb}
    {spaces_at_end: }
    *@seeentry C1 l7
     *brace_arg C1
      {ccc}
  *index_entry_command@cindex C1 l8
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{node-index}
  |index_entry:I{cp,2}
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    *@seealso C1 l8
     *brace_arg C1
      {ccc}
    {spaces_after_close_brace: }
    {ddd}
    {spaces_at_end: }
    *@seealso C1 l8
     *brace_arg C1
      {eee}
  *index_entry_command@cindex C1 l9
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{node-index}
  |index_entry:I{cp,3}
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {ggg}
    {spaces_at_end: }
    *@seeentry C1 l9
     *brace_arg C1
      {hhh}
    {spaces_at_end: }
    *@seealso C1 l9
     *brace_arg C1
      {iii}
  *index_entry_command@cindex C1 l10
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{node-index}
  |index_entry:I{cp,4}
   *line_arg C3
    *@seealso C1 l10
     *brace_arg C1
      {fff}
    {ignorable_spaces_before_command: }
    *@subentry C1 l10
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {subggg}
      {spaces_at_end: }
      *@seeentry C1 l10
       *brace_arg C1
        {subhhh}
  {empty_line:\\n}
  *@printindex C1 l12
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


$result_texis{'double_seeentry_seealso'} = '@node top
@top top

@node node index
@chapter Chapter Index

@cindex aaa @seeentry{bbb} @seeentry{ccc}
@cindex @seealso{ccc} ddd @seealso{eee}
@cindex ggg @seeentry{hhh} @seealso{iii}
@cindex @seealso{fff} @subentry subggg @seeentry{subhhh}

@printindex cp
';


$result_texts{'double_seeentry_seealso'} = 'top
***

1 Chapter Index
***************


';

$result_errors{'double_seeentry_seealso'} = [
  {
    'error_line' => 'warning: empty index key in @cindex
',
    'line_nr' => 10,
    'text' => 'empty index key in @cindex',
    'type' => 'warning'
  }
];


$result_nodes_list{'double_seeentry_seealso'} = '1|top
 associated_section: top
 associated_title_command: top
 node_directions:
  next->node index
2|node index
 associated_section: 1 Chapter Index
 associated_title_command: 1 Chapter Index
 node_directions:
  prev->top
  up->top
';

$result_sections_list{'double_seeentry_seealso'} = '1|top
 associated_anchor_command: top
 associated_node: top
 toplevel_directions:
  next->Chapter Index
 section_children:
  1|Chapter Index
2|Chapter Index
 associated_anchor_command: node index
 associated_node: node index
 section_directions:
  up->top
 toplevel_directions:
  prev->top
  up->top
';

$result_sectioning_root{'double_seeentry_seealso'} = 'level: -1
list:
 1|top
';

$result_headings_list{'double_seeentry_seealso'} = '';

$result_indices_sort_strings{'double_seeentry_seealso'} = 'cp:
 , subggg
 aaa
 ddd
 ggg
';


$result_converted{'docbook'}->{'double_seeentry_seealso'} = '<chapter label="1" id="node-index">
<title>Chapter Index</title>

<indexterm role="cp"><primary>aaa</primary><see>bbb</see></indexterm>
<indexterm role="cp"><primary>ddd</primary><seealso>ccc</seealso></indexterm>
<indexterm role="cp"><primary>ggg</primary><see>hhh</see><seealso>iii</seealso></indexterm>
<indexterm role="cp"><primary></primary><secondary>subggg</secondary><see>subhhh</see><seealso>fff</seealso></indexterm>
<index role="cp"></index>
</chapter>
';


$result_converted{'info'}->{'double_seeentry_seealso'} = 'This is , produced from .


File: ,  Node: Top,  Next: node index,  Up: (dir)

top
***

* Menu:

* node index::


File: ,  Node: node index,  Prev: Top,  Up: Top

1 Chapter Index
***************

 [index ]
* Menu:

  , subggg, See subhhh.
  aaa, See bbb.
  ddd:                                   See also ccc.
  ggg, See hhh.


Tag Table:
Node: Top27
Node: node index114

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'double_seeentry_seealso'} = 'top
***

1 Chapter Index
***************

* Menu:

  , subggg, See subhhh.
  aaa, See bbb.
  ddd:                                   See also ccc.
  ggg, See hhh.

';


$result_converted{'html_text'}->{'double_seeentry_seealso'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#node-index" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#node-index">Chapter Index</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="node-index">
<div class="nav-panel">
<p>
[<a href="#node-index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chapter-Index"><span>1 Chapter Index<a class="copiable-link" href="#Chapter-Index"> &para;</a></span></h2>


<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#node-index_cp_symbol-1"><b></b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#node-index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-index_cp_letter-G"><b>G</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-index_cp_symbol-1"></th></tr>
<tr><td class="printindex-index-entry"></td><td></td></tr>
<tr><td class="printindex-index-see-entry printindex-index-subentry-level-1">subggg, <em class="emph">See</em> subhhh</td><td class="printindex-index-see-entry-section"></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-index_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-see-entry printindex-index-entry">aaa, <em class="emph">See</em> bbb</td><td class="printindex-index-see-entry-section"></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-index_cp_letter-D">D</th></tr>
<tr><td class="printindex-index-entry">ddd</td><td class="printindex-index-see-also"><em class="emph">See also</em> ccc</td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-index_cp_letter-G">G</th></tr>
<tr><td class="printindex-index-see-entry printindex-index-entry">ggg, <em class="emph">See</em> hhh</td><td class="printindex-index-see-entry-section"></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#node-index_cp_symbol-1"><b></b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#node-index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#node-index_cp_letter-G"><b>G</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'double_seeentry_seealso'} = '<node identifier="Top" spaces=" "><nodename>top</nodename><nodenext automatic="on">node index</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="node-index" spaces=" "><nodename>node index</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter Index</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">aaa <seeentry>bbb</seeentry> <seeentry>ccc</seeentry></indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2"><seealso>ccc</seealso> ddd <seealso>eee</seealso></indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">ggg <seeentry>hhh</seeentry> <seealso>iii</seealso></indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="4"><seealso>fff</seealso> <subentry spaces=" ">subggg <seeentry>subhhh</seeentry></subentry>
</indexterm></cindex>
<printindex spaces=" " value="cp" line="cp"></printindex>
</chapter>
';


$result_converted{'latex'}->{'double_seeentry_seealso'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{imakeidx}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}

\\makeatletter
\\newcommand{\\Texinfosettitle}{No Title}%

% no index headers
\\indexsetup{level=\\relax,toclevel=section}%
\\makeindex[name=cp,title=]%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
\\newenvironment{Texinfopreformatted}{%
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing\\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{Texinfoindented}{\\begin{list}{}{}\\item\\relax}{\\end{list}}

% used for substitutions in commands
\\newcommand{\\Texinfoplaceholder}[1]{}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% allow line breaking at underscore
\\let\\Texinfounderscore\\_
\\renewcommand{\\_}{\\Texinfounderscore\\discretionary{}{}{}}
\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\Texinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%

\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chapter Index}}
\\label{anchor:node-index}%

\\index[cp]{aaa@aaa|see{bbb}}%
\\index[cp]{ddd@ddd|seealso{ccc}}%
\\index[cp]{ggg@ggg|see{hhh}}%
\\index[cp]{@!subggg@subggg|see{subhhh}}%

\\printindex[cp]
\\end{document}
';

1;
