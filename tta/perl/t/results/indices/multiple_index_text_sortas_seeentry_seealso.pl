use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'multiple_index_text_sortas_seeentry_seealso'} = '*document_root C5
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
 *@chapter C7 l5 {Index}
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
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {aaa}
    { }
    *@sortas C1 l7
     *brace_arg C1
      {A---S}
    {spaces_after_close_brace: }
    {continue}
    { }
    *@seeentry C1 l7
     *brace_arg C1
      {other second}
    {spaces_after_close_brace: }
    {aagain}
    {spaces_at_end: }
    *@seealso C1 l7
     *brace_arg C1
      {toto}
  *index_entry_command@cindex C1 l8
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chapter-index}
  |index_entry:I{cp,2}
  |sortas:{BB}
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {other}
    { }
    *@sortas C1 l8
     *brace_arg C1
      {BB}
    {spaces_after_close_brace: }
    {second}
  *index_entry_command@cindex C1 l9
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chapter-index}
  |index_entry:I{cp,3}
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {entry}
    { }
    *@seeentry C1 l9
     *brace_arg C1
      {something else}
    {spaces_after_close_brace: }
    {secret}
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
';


$result_texis{'multiple_index_text_sortas_seeentry_seealso'} = '@node Top
@top

@node chapter index
@chapter Index

@cindex aaa @sortas{A---S} continue @seeentry{other second} aagain @seealso{toto}
@cindex other @sortas{BB} second
@cindex entry @seeentry{something else} secret

@printindex cp
';


$result_texts{'multiple_index_text_sortas_seeentry_seealso'} = '
1 Index
*******


';

$result_errors{'multiple_index_text_sortas_seeentry_seealso'} = [];


$result_nodes_list{'multiple_index_text_sortas_seeentry_seealso'} = '1|Top
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

$result_sections_list{'multiple_index_text_sortas_seeentry_seealso'} = '1
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

$result_sectioning_root{'multiple_index_text_sortas_seeentry_seealso'} = 'level: -1
list:
 1|
';

$result_headings_list{'multiple_index_text_sortas_seeentry_seealso'} = '';

$result_indices_sort_strings{'multiple_index_text_sortas_seeentry_seealso'} = 'cp:
 A---S
 BB
 entry secret
';


$result_converted{'docbook'}->{'multiple_index_text_sortas_seeentry_seealso'} = '<chapter label="1" id="chapter-index">
<title>Index</title>

<indexterm role="cp"><primary>aaa continue aagain</primary><see>other second</see><seealso>toto</seealso></indexterm>
<indexterm role="cp"><primary>other second</primary></indexterm>
<indexterm role="cp"><primary>entry secret</primary><see>something else</see></indexterm>

<index role="cp"></index>
</chapter>
';


$result_converted{'info'}->{'multiple_index_text_sortas_seeentry_seealso'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter index,  Up: (dir)

* Menu:

* chapter index::


File: ,  Node: chapter index,  Prev: Top,  Up: Top

1 Index
*******

 [index ]
* Menu:

  aaa continue aagain, See other second.
* other second:                          chapter index.         (line 6)
  entry secret, See something else.


Tag Table:
Node: Top27
Node: chapter index111

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'multiple_index_text_sortas_seeentry_seealso'} = '1 Index
*******

* Menu:

  aaa continue aagain, See other second.
* other second:                          chapter index.         (line 3)
  entry secret, See something else.

';


$result_converted{'html_text'}->{'multiple_index_text_sortas_seeentry_seealso'} = '<div class="top-level-extent" id="Top">
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

<a class="index-entry-id" id="index-other-second"></a>

<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chapter-index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-index_cp_letter-E"><b>E</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-index_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-see-entry printindex-index-entry">aaa continue aagain, <em class="emph">See</em> other second</td><td class="printindex-index-see-entry-section"></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-index_cp_letter-B">B</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-other-second">other second</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-index_cp_letter-E">E</th></tr>
<tr><td class="printindex-index-see-entry printindex-index-entry">entry secret, <em class="emph">See</em> something else</td><td class="printindex-index-see-entry-section"></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chapter-index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-index_cp_letter-E"><b>E</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'multiple_index_text_sortas_seeentry_seealso'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter index</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chapter-index" spaces=" "><nodename>chapter index</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Index</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">aaa <sortas>A&textmdash;S</sortas> continue <seeentry>other second</seeentry> aagain <seealso>toto</seealso></indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">other <sortas>BB</sortas> second</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">entry <seeentry>something else</seeentry> secret</indexterm></cindex>

<printindex spaces=" " value="cp" line="cp"></printindex>
</chapter>
';


$result_converted{'latex'}->{'multiple_index_text_sortas_seeentry_seealso'} = '\\documentclass{book}
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

\\index[cp]{A---S@aaa continue aagain|see{other second}}%
\\index[cp]{BB@other second}%
\\index[cp]{entry secret@entry secret|see{something else}}%

\\printindex[cp]
\\end{document}
';

1;
