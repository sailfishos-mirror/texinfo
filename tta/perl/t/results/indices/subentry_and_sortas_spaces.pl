use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'subentry_and_sortas_spaces'} = '*document_root C5
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
   *line_arg C4
    {aaa}
    {spaces_at_end: }
    *@sortas C1 l7
     *brace_arg C1
      {A---S}
    *@subentry C1 l7
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |sortas:{C---S1}
     *line_arg C2
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      *@sortas C1 l7
       *brace_arg C1
        {C---S1}
      {bbb sort as c}
  *index_entry_command@cindex C1 l8
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chapter-index}
  |index_entry:I{cp,2}
   *line_arg C3
    {aaa}
    {ignorable_spaces_before_command: }
    *@subentry C1 l8
    |EXTRA
    |sortas:{B---S1}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument: \\n}
      *@sortas C1 l8
       *brace_arg C1
        {B---S1}
  *index_entry_command@cindex C1 l9
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chapter-index}
  |index_entry:I{cp,3}
   *line_arg C2
    {aaa}
    *@subentry C1 l9
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C3
      {bbb}
      {ignorable_spaces_before_command: }
      *@subentry C1 l9
      |INFO
      |spaces_before_argument:
       |{spaces_before_argument: }
      |EXTRA
      |sortas:{D}
       *line_arg C2
       |INFO
       |spaces_after_argument:
        |{spaces_after_argument:\\n}
        {ccc}
        *@sortas C1 l9
         *brace_arg C1
          {D}
  *index_entry_command@cindex C1 l10
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chapter-index}
  |index_entry:I{cp,4}
   *line_arg C3
    {aaa}
    {ignorable_spaces_before_command: }
    *@subentry C1 l10
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C2
      {bbb}
      *@subentry C1 l10
      |INFO
      |spaces_before_argument:
       |{spaces_before_argument: }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{spaces_after_argument:\\n}
        {ccc}
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


$result_texis{'subentry_and_sortas_spaces'} = '@node Top
@top

@node chapter index
@chapter Index

@cindex aaa @sortas{A---S}@subentry @sortas{C---S1}bbb sort as c
@cindex aaa @subentry@sortas{B---S1} 
@cindex aaa@subentry bbb @subentry ccc@sortas{D}
@cindex aaa @subentry bbb@subentry ccc

@printindex cp
';


$result_texts{'subentry_and_sortas_spaces'} = '
1 Index
*******


';

$result_errors{'subentry_and_sortas_spaces'} = [];


$result_nodes_list{'subentry_and_sortas_spaces'} = '1|Top
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

$result_sections_list{'subentry_and_sortas_spaces'} = '1
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

$result_sectioning_root{'subentry_and_sortas_spaces'} = 'level: -1
list:
 1|
';

$result_headings_list{'subentry_and_sortas_spaces'} = '';

$result_indices_sort_strings{'subentry_and_sortas_spaces'} = 'cp:
 A---S, C---S1
 aaa, B---S1
 aaa, bbb, ccc
 aaa, bbb, D
';


$result_converted{'docbook'}->{'subentry_and_sortas_spaces'} = '<chapter label="1" id="chapter-index">
<title>Index</title>

<indexterm role="cp"><primary>aaa</primary><secondary>bbb sort as c</secondary></indexterm><indexterm role="cp"><primary>aaa</primary><secondary></secondary></indexterm><indexterm role="cp"><primary>aaa</primary><secondary>bbb</secondary><tertiary>ccc</tertiary></indexterm><indexterm role="cp"><primary>aaa</primary><secondary>bbb</secondary><tertiary>ccc</tertiary></indexterm>
<index role="cp"></index>
</chapter>
';


$result_converted{'info'}->{'subentry_and_sortas_spaces'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter index,  Up: (dir)

* Menu:

* chapter index::


File: ,  Node: chapter index,  Prev: Top,  Up: Top

1 Index
*******

 [index ]
* Menu:

* aaa, bbb sort as c:                    chapter index.         (line 6)
* aaa, :                                 chapter index.         (line 6)
* aaa, bbb, ccc:                         chapter index.         (line 6)
* aaa, bbb, ccc <1>:                     chapter index.         (line 6)


Tag Table:
Node: Top27
Node: chapter index111

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'subentry_and_sortas_spaces'} = '1 Index
*******

* Menu:

* aaa, bbb sort as c:                    chapter index.         (line 3)
* aaa, :                                 chapter index.         (line 3)
* aaa, bbb, ccc:                         chapter index.         (line 3)
* aaa, bbb, ccc <1>:                     chapter index.         (line 3)

';


$result_converted{'html_text'}->{'subentry_and_sortas_spaces'} = '<div class="top-level-extent" id="Top">
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

<a class="index-entry-id" id="index-aaa-bbb-sort-as-c"></a>
<a class="index-entry-id" id="index-aaa-"></a>
<a class="index-entry-id" id="index-aaa-bbb-ccc"></a>
<a class="index-entry-id" id="index-aaa-bbb-ccc-1"></a>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-index_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry">aaa</td><td></td></tr>
<tr><td class="printindex-index-subentry-level-1"><a href="#index-aaa-bbb-sort-as-c">bbb sort as c</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td class="printindex-index-subentry-level-1"><a href="#index-aaa-"></a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td class="printindex-index-subentry-level-1">bbb</td><td></td></tr>
<tr><td class="printindex-index-subentry-level-2"><a href="#index-aaa-bbb-ccc-1">ccc</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td class="printindex-index-subentry-level-2"><a href="#index-aaa-bbb-ccc">ccc</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'subentry_and_sortas_spaces'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter index</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chapter-index" spaces=" "><nodename>chapter index</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Index</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">aaa <sortas>A&textmdash;S</sortas><subentry spaces=" "><sortas>C&textmdash;S1</sortas>bbb sort as c</subentry>
</indexterm></cindex><cindex index="cp" spaces=" "><indexterm index="cp" number="2">aaa <subentry><sortas>B&textmdash;S1</sortas> </subentry>
</indexterm></cindex><cindex index="cp" spaces=" "><indexterm index="cp" number="3">aaa<subentry spaces=" ">bbb <subentry spaces=" ">ccc<sortas>D</sortas></subentry>
</subentry></indexterm></cindex><cindex index="cp" spaces=" "><indexterm index="cp" number="4">aaa <subentry spaces=" ">bbb<subentry spaces=" ">ccc</subentry>
</subentry></indexterm></cindex>
<printindex spaces=" " value="cp" line="cp"></printindex>
</chapter>
';


$result_converted{'latex'}->{'subentry_and_sortas_spaces'} = '\\documentclass{book}
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
\\chapter{{Index}}
\\label{anchor:chapter-index}%

\\index[cp]{A---S@aaa!C---S1@bbb sort as c}%
\\index[cp]{aaa@aaa!B---S1@}%
\\index[cp]{aaa@aaa!bbb@bbb!D@ccc}%
\\index[cp]{aaa@aaa!bbb@bbb!ccc@ccc}%

\\printindex[cp]
\\end{document}
';

1;
