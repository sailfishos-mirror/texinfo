use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'subentries'} = '*document_root C5
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
 *1 @top C2 l2
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
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *2 @node C1 l4 {chapter index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter-index}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter index}
 *3 @chapter C26 l5 {Index}
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
    {Index}
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
    {a---a}
  *5 index_entry_command@cindex C1 l8
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,2}
  |subentry:[E6]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {b---b}
  *6 @subentry C1 l8
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E5]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c---c}
  *7 index_entry_command@cindex C1 l9
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,3}
  |subentry:[E8]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {d---dd}
  *8 @subentry C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E9]
  |subentry_level:{1}
  |subentry_parent:[E7]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {e---ee}
  *9 @subentry C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{2}
  |subentry_parent:[E8]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {f---ff}
  *10 index_entry_command@cindex C1 l10
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,4}
  |subentry:[E11]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {g---gg}
  *11 @subentry C1 l10
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E12]
  |subentry_level:{1}
  |subentry_parent:[E10]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {h---hh jjj}
  *12 @subentry C1 l10
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E13]
  |subentry_level:{2}
  |subentry_parent:[E11]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {k---kk}
  *13 @subentry C1 l10
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{3}
  |subentry_parent:[E12]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {l---ll}
  {empty_line:\\n}
  *14 index_entry_command@findex C1 l12
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
    {f---aa}
  *15 index_entry_command@findex C1 l13
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,2}
  |subentry:[E16]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {f---bb}
  *16 @subentry C1 l13
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E15]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {f---cc}
  *17 index_entry_command@findex C1 l14
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,3}
  |subentry:[E18]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {f---ddd}
  *18 @subentry C1 l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E19]
  |subentry_level:{1}
  |subentry_parent:[E17]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {f---eee}
  *19 @subentry C1 l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{2}
  |subentry_parent:[E18]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ffff}
  *20 index_entry_command@findex C1 l15
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,4}
  |subentry:[E21]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {f---ggg}
  *21 @subentry C1 l15
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E22]
  |subentry_level:{1}
  |subentry_parent:[E20]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {f---hhh fjjj}
  *22 @subentry C1 l15
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E23]
  |subentry_level:{2}
  |subentry_parent:[E21]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {f---kkk}
  *23 @subentry C1 l15
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{3}
  |subentry_parent:[E22]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {f---lll}
  {empty_line:\\n}
  *@printindex C1 l17
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
  *@printindex C1 l18
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
';


$result_texis{'subentries'} = '@node Top
@top

@node chapter index
@chapter Index

@cindex a---a
@cindex b---b @subentry c---c
@cindex d---dd @subentry e---ee @subentry f---ff
@cindex g---gg @subentry h---hh jjj @subentry k---kk @subentry l---ll

@findex f---aa
@findex f---bb @subentry f---cc
@findex f---ddd @subentry f---eee @subentry ffff
@findex f---ggg @subentry f---hhh fjjj @subentry f---kkk @subentry f---lll

@printindex cp
@printindex fn
';


$result_texts{'subentries'} = '
1 Index
*******



';

$result_errors{'subentries'} = [
  {
    'error_line' => 'no more than two levels of index subentry are allowed
',
    'line_nr' => 10,
    'text' => 'no more than two levels of index subentry are allowed',
    'type' => 'error'
  },
  {
    'error_line' => 'no more than two levels of index subentry are allowed
',
    'line_nr' => 15,
    'text' => 'no more than two levels of index subentry are allowed',
    'type' => 'error'
  }
];


$result_floats{'subentries'} = {};


$result_indices_sort_strings{'subentries'} = {
  'cp' => [
    'a--a',
    'b--b, c--c',
    'd--dd, e--ee, f--ff',
    'g--gg, h--hh jjj, k--kk, l--ll'
  ],
  'fn' => [
    'f---aa',
    'f---bb, f---cc',
    'f---ddd, f---eee, ffff',
    'f---ggg, f---hhh fjjj, f---kkk, f---lll'
  ]
};



$result_converted{'docbook'}->{'subentries'} = '<chapter label="1" id="chapter-index">
<title>Index</title>

<indexterm role="cp"><primary>a&#8212;a</primary></indexterm>
<indexterm role="cp"><primary>b&#8212;b</primary><secondary>c&#8212;c</secondary></indexterm><indexterm role="cp"><primary>d&#8212;dd</primary><secondary>e&#8212;ee</secondary><tertiary>f&#8212;ff</tertiary></indexterm><indexterm role="cp"><primary>g&#8212;gg</primary><secondary>h&#8212;hh jjj</secondary><tertiary>k&#8212;kk</tertiary><tertiary>l&#8212;ll</tertiary></indexterm>
<indexterm role="fn"><primary>f---aa</primary></indexterm>
<indexterm role="fn"><primary>f---bb</primary><secondary>f---cc</secondary></indexterm><indexterm role="fn"><primary>f---ddd</primary><secondary>f---eee</secondary><tertiary>ffff</tertiary></indexterm><indexterm role="fn"><primary>f---ggg</primary><secondary>f---hhh fjjj</secondary><tertiary>f---kkk</tertiary><tertiary>f---lll</tertiary></indexterm>
<index role="cp"></index>
<index role="fn"></index>
</chapter>
';


$result_converted{'info'}->{'subentries'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter index,  Up: (dir)

* Menu:

* chapter index::


File: ,  Node: chapter index,  Prev: Top,  Up: Top

1 Index
*******

 [index ]
* Menu:

* a--a:                                  chapter index.         (line 6)
* b--b, c--c:                            chapter index.         (line 6)
* d--dd, e--ee, f--ff:                   chapter index.         (line 6)
* g--gg, h--hh jjj, k--kk, l--ll:        chapter index.         (line 6)

 [index ]
* Menu:

* f---aa:                                chapter index.         (line 6)
* f---bb, f---cc:                        chapter index.         (line 6)
* f---ddd, f---eee, ffff:                chapter index.         (line 6)
* f---ggg, f---hhh fjjj, f---kkk, f---lll: chapter index.       (line 6)


Tag Table:
Node: Top27
Node: chapter index111

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'subentries'} = '1 Index
*******

* Menu:

* a--a:                                  chapter index.         (line 3)
* b--b, c--c:                            chapter index.         (line 3)
* d--dd, e--ee, f--ff:                   chapter index.         (line 3)
* g--gg, h--hh jjj, k--kk, l--ll:        chapter index.         (line 3)

* Menu:

* f---aa:                                chapter index.         (line 3)
* f---bb, f---cc:                        chapter index.         (line 3)
* f---ddd, f---eee, ffff:                chapter index.         (line 3)
* f---ggg, f---hhh fjjj, f---kkk, f---lll: chapter index.       (line 3)

';


$result_converted{'html_text'}->{'subentries'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<ul class="mini-toc">
<li><a href="#chapter-index" accesskey="1">Index</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-index">
<div class="nav-panel">
<p>
[<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Index"><span>1 Index<a class="copiable-link" href="#Index"> &para;</a></span></h2>

<a class="index-entry-id" id="index-a_002d_002d_002da"></a>
<a class="index-entry-id" id="index-b_002d_002d_002db-c_002d_002d_002dc"></a>
<a class="index-entry-id" id="index-d_002d_002d_002ddd-e_002d_002d_002dee-f_002d_002d_002dff"></a>
<a class="index-entry-id" id="index-g_002d_002d_002dgg-h_002d_002d_002dhh-jjj-k_002d_002d_002dkk-l_002d_002d_002dll"></a>

<a class="index-entry-id" id="index-f_002d_002d_002daa"></a>
<a class="index-entry-id" id="index-f_002d_002d_002dbb-f_002d_002d_002dcc"></a>
<a class="index-entry-id" id="index-f_002d_002d_002dddd-f_002d_002d_002deee-ffff"></a>
<a class="index-entry-id" id="index-f_002d_002d_002dggg-f_002d_002d_002dhhh-fjjj-f_002d_002d_002dkkk-f_002d_002d_002dlll"></a>

<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chapter-index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-index_cp_letter-G"><b>G</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-index_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-a_002d_002d_002da">a&mdash;a</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-index_cp_letter-B">B</th></tr>
<tr><td class="printindex-index-entry">b&mdash;b</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-b_002d_002d_002db-c_002d_002d_002dc">c&mdash;c</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-index_cp_letter-D">D</th></tr>
<tr><td class="printindex-index-entry">d&mdash;dd</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1">e&mdash;ee</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-d_002d_002d_002ddd-e_002d_002d_002dee-f_002d_002d_002dff">f&mdash;ff</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-index_cp_letter-G">G</th></tr>
<tr><td class="printindex-index-entry">g&mdash;gg</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1">h&mdash;hh jjj</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-g_002d_002d_002dgg-h_002d_002d_002dhh-jjj-k_002d_002d_002dkk-l_002d_002d_002dll">k&mdash;kk, l&mdash;ll</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chapter-index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-index_cp_letter-G"><b>G</b></a>
 &nbsp; 
</td></tr></table>
</div>
<div class="printindex fn-printindex">
<table class="index-entries-printindex fn-entries-printindex">
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chapter-index_fn_letter-F">F</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-f_002d_002d_002daa"><code>f---aa</code></a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td class="printindex-index-entry"><code>f---bb</code></td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-f_002d_002d_002dbb-f_002d_002d_002dcc"><code>f---cc</code></a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td class="printindex-index-entry"><code>f---ddd</code></td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><code>f---eee</code></td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-f_002d_002d_002dddd-f_002d_002d_002deee-ffff"><code>ffff</code></a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td class="printindex-index-entry"><code>f---ggg</code></td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><code>f---hhh fjjj</code></td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-f_002d_002d_002dggg-f_002d_002d_002dhhh-fjjj-f_002d_002d_002dkkk-f_002d_002d_002dlll"><code>f---kkk, f---lll</code></a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
</table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'subentries'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter index</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chapter-index" spaces=" "><nodename>chapter index</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Index</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">a&textmdash;a</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">b&textmdash;b</indexterm></cindex> <subentry spaces=" ">c&textmdash;c</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">d&textmdash;dd</indexterm></cindex> <subentry spaces=" ">e&textmdash;ee </subentry><subentry spaces=" ">f&textmdash;ff</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="4">g&textmdash;gg</indexterm></cindex> <subentry spaces=" ">h&textmdash;hh jjj </subentry><subentry spaces=" ">k&textmdash;kk </subentry><subentry spaces=" ">l&textmdash;ll</subentry>

<findex index="fn" spaces=" "><indexterm index="fn" number="1">f---aa</indexterm></findex>
<findex index="fn" spaces=" "><indexterm index="fn" number="2">f---bb</indexterm></findex> <subentry spaces=" ">f&textmdash;cc</subentry>
<findex index="fn" spaces=" "><indexterm index="fn" number="3">f---ddd</indexterm></findex> <subentry spaces=" ">f&textmdash;eee </subentry><subentry spaces=" ">ffff</subentry>
<findex index="fn" spaces=" "><indexterm index="fn" number="4">f---ggg</indexterm></findex> <subentry spaces=" ">f&textmdash;hhh fjjj </subentry><subentry spaces=" ">f&textmdash;kkk </subentry><subentry spaces=" ">f&textmdash;lll</subentry>

<printindex spaces=" " value="cp" line="cp"></printindex>
<printindex spaces=" " value="fn" line="fn"></printindex>
</chapter>
';


$result_converted{'latex'}->{'subentries'} = '\\documentclass{book}
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

\\index[cp]{a--a@a---a}%
\\index[cp]{b--b@b---b!c--c@c---c}%
\\index[cp]{d--dd@d---dd!e--ee@e---ee!f--ff@f---ff}%
\\index[cp]{g--gg@g---gg!h--hh jjj@h---hh jjj!k--kk@k---kk!l--ll@l---ll}%

\\index[fn]{f---aa@\\texttt{f{-}{-}{-}aa}}%
\\index[fn]{f---bb@\\texttt{f{-}{-}{-}bb}!f---cc@\\texttt{f{-}{-}{-}cc}}%
\\index[fn]{f---ddd@\\texttt{f{-}{-}{-}ddd}!f---eee@\\texttt{f{-}{-}{-}eee}!ffff@\\texttt{ffff}}%
\\index[fn]{f---ggg@\\texttt{f{-}{-}{-}ggg}!f---hhh fjjj@\\texttt{f{-}{-}{-}hhh fjjj}!f---kkk@\\texttt{f{-}{-}{-}kkk}!f---lll@\\texttt{f{-}{-}{-}lll}}%

\\printindex[cp]
\\printindex[fn]
\\end{document}
';

1;
