use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'subentry_and_sortas'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *@node C1 l1 {Top}
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
 *@top C2 l2
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
  {empty_line:\\n}
 *@node C1 l4 {chapter index}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{2}
 |normalized:{chapter-index}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chapter index}
 *@chapter C8 l5 {Index}
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
    {Index}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l7
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chapter-index}
  |index_entry:I{cp,1}
  |sortas:{A---S}
   *line_arg C5
    {aaa}
    {spaces_at_end: }
    *@sortas C1 l7
     *brace_arg C1
      {A---S}
    {ignorable_spaces_before_command: }
    *@subentry C1 l7
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |sortas:{B---S1}
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      *@sortas C1 l7
       *brace_arg C1
        {B---S1}
      {spaces_after_close_brace: }
      {bbb}
  {empty_line:\\n}
  *index_entry_command@findex C1 l9
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chapter-index}
  |index_entry:I{fn,1}
  |sortas:{X---S}
   *line_arg C5
    {xxx}
    {spaces_at_end: }
    *@sortas C1 l9
     *brace_arg C1
      {X---S}
    {ignorable_spaces_before_command: }
    *@subentry C1 l9
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |sortas:{X---S1}
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      *@sortas C1 l9
       *brace_arg C1
        {X---S1}
      {spaces_after_close_brace: }
      {zzz}
  {empty_line:\\n}
  *@printindex C1 l11
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
  *@printindex C1 l12
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {fn}
';


$result_texis{'subentry_and_sortas'} = '@node Top
@top

@node chapter index
@chapter Index

@cindex aaa @sortas{A---S} @subentry @sortas{B---S1} bbb

@findex xxx @sortas{X---S} @subentry @sortas{X---S1} zzz

@printindex cp
@printindex fn
';


$result_texts{'subentry_and_sortas'} = '
1 Index
*******



';

$result_errors{'subentry_and_sortas'} = [];


$result_nodes_list{'subentry_and_sortas'} = '1|Top
 associated_section
 associated_title_command
 node_directions:
  next->chapter index
2|chapter index
 associated_section: 1 Index
 associated_title_command: 1 Index
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'subentry_and_sortas'} = '1
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->Index
 section_children:
  1|Index
2|Index
 associated_anchor_command: chapter index
 associated_node: chapter index
 section_directions:
  up->
 toplevel_directions:
  prev->
  up->
';

$result_sectioning_root{'subentry_and_sortas'} = 'level: -1
list:
 1|
';

$result_headings_list{'subentry_and_sortas'} = '';

$result_indices_sort_strings{'subentry_and_sortas'} = 'cp:
 A---S, B---S1
fn:
 X---S, X---S1
';


$result_converted{'docbook'}->{'subentry_and_sortas'} = '<chapter label="1" id="chapter-index">
<title>Index</title>

<indexterm role="cp"><primary>aaa</primary><secondary>bbb</secondary></indexterm>
<indexterm role="fn"><primary>xxx</primary><secondary>zzz</secondary></indexterm>
<index role="cp"></index>
<index role="fn"></index>
</chapter>
';


$result_converted{'info'}->{'subentry_and_sortas'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter index,  Up: (dir)

* Menu:

* chapter index::


File: ,  Node: chapter index,  Prev: Top,  Up: Top

1 Index
*******

 [index ]
* Menu:

* aaa, bbb:                              chapter index.         (line 6)

 [index ]
* Menu:

* xxx, zzz:                              chapter index.         (line 6)


Tag Table:
Node: Top27
Node: chapter index111

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'subentry_and_sortas'} = '1 Index
*******

* Menu:

* aaa, bbb:                              chapter index.         (line 3)

* Menu:

* xxx, zzz:                              chapter index.         (line 3)

';


$result_converted{'html_text'}->{'subentry_and_sortas'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<ul class="mini-toc">
<li><a href="#chapter-index">Index</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-index">
<div class="nav-panel">
<p>
[<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Index"><span>1 Index<a class="copiable-link" href="#Index"> &para;</a></span></h2>

<a class="index-entry-id" id="index-aaa-bbb"></a>

<a class="index-entry-id" id="index-xxx-zzz"></a>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-index_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry">aaa</td><td></td></tr>
<tr><td class="printindex-index-subentry-level-1"><a href="#index-aaa-bbb">bbb</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
</div>
<div class="printindex fn-printindex">
<table class="index-entries-printindex fn-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chapter-index_fn_letter-X">X</th></tr>
<tr><td class="printindex-index-entry"><code>xxx</code></td><td></td></tr>
<tr><td class="printindex-index-subentry-level-1"><a href="#index-xxx-zzz"><code>zzz</code></a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'subentry_and_sortas'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter index</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chapter-index" spaces=" "><nodename>chapter index</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Index</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">aaa <sortas>A&textmdash;S</sortas> <subentry spaces=" "><sortas>B&textmdash;S1</sortas> bbb</subentry>
</indexterm></cindex>
<findex index="fn" spaces=" "><indexterm index="fn" number="1">xxx <sortas>X---S</sortas> <subentry spaces=" "><sortas>X---S1</sortas> zzz</subentry>
</indexterm></findex>
<printindex spaces=" " value="cp" line="cp"></printindex>
<printindex spaces=" " value="fn" line="fn"></printindex>
</chapter>
';


$result_converted{'latex'}->{'subentry_and_sortas'} = '\\documentclass{book}
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
\\makeindex[name=fn,title=]%

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
\\chapter{{Index}}
\\label{anchor:chapter-index}%

\\index[cp]{A---S@aaa!B---S1@bbb}%

\\index[fn]{X---S@\\texttt{xxx}!X---S1@\\texttt{zzz}}%

\\printindex[cp]
\\printindex[fn]
\\end{document}
';

1;
