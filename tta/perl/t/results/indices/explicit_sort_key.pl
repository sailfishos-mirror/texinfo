use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'explicit_sort_key'} = '*document_root C4
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
 *@node C14 l4 {chap}
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
  {empty_line:\\n}
  *@defindex C1 l6
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |misc_args:A{SK}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {SK}
  {empty_line:\\n}
  *index_entry_command@SKindex C1 l8
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chap}
  |index_entry:I{SK,1}
  |sortas:{A}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    *@sortas C1 l8
     *brace_arg C1
      {A}
    {spaces_after_close_brace: }
    {bbbbbbb (first)}
  *index_entry_command@SKindex C1 l9
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chap}
  |index_entry:I{SK,2}
  |sortas:{B}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    *@sortas C1 l9
     *brace_arg C1
      {B}
    {spaces_after_close_brace: }
    {aaaaaaa (second)}
  *index_entry_command@SKindex C1 l10
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chap}
  |index_entry:I{SK,3}
  |sortas:{0}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    *@sortas C1 l10
     *brace_arg C1
      {0}
    {spaces_after_close_brace: }
    {zero sort key}
  *index_entry_command@SKindex C1 l11
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chap}
  |index_entry:I{SK,4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    *@b C1 l11
     *brace_container C2
      {aaa }
      *@sortas C1 l11
       *brace_arg C1
        {invalid nesting}
  {empty_line:\\n}
  *paragraph C5
   {in a reuglar para }
   *@sortas C1 l13
    *brace_arg C1
     {foo}
   {. }
   *@code C1 l13
    *brace_container C2
     {inside another }
     *@sortas C1 l13
      *brace_arg C1
       {command}
   {.\\n}
  {empty_line:\\n}
  *paragraph C4
   *@sortas C1 l15
    *brace_arg C2
     {and cmd }
     *@b C1 l15
      *brace_container C1
       {inside}
   {.\\n}
   *@url C1 l16
    *brace_arg C2
     {and cmd }
     *@sortas C1 l16
      *brace_arg C1
       {inside}
   {.\\n}
  {empty_line:\\n}
  *@printindex C1 l18
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{SK}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {SK}
';


$result_texis{'explicit_sort_key'} = '@node Top
@top

@node chap

@defindex SK

@SKindex @sortas{A} bbbbbbb (first)
@SKindex @sortas{B} aaaaaaa (second)
@SKindex @sortas{0} zero sort key
@SKindex @b{aaa @sortas{invalid nesting}}

in a reuglar para @sortas{foo}. @code{inside another @sortas{command}}.

@sortas{and cmd @b{inside}}.
@url{and cmd @sortas{inside}}.

@printindex SK
';


$result_texts{'explicit_sort_key'} = '



in a reuglar para . inside another .

.
and cmd .

';

$result_errors{'explicit_sort_key'} = [
  {
    'error_line' => 'warning: @sortas should only appear in an index entry
',
    'line_nr' => 11,
    'text' => '@sortas should only appear in an index entry',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @sortas should only appear in an index entry
',
    'line_nr' => 13,
    'text' => '@sortas should only appear in an index entry',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @sortas should only appear in an index entry
',
    'line_nr' => 13,
    'text' => '@sortas should only appear in an index entry',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @sortas should only appear in an index entry
',
    'line_nr' => 15,
    'text' => '@sortas should only appear in an index entry',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @b should not appear in @sortas
',
    'line_nr' => 15,
    'text' => '@b should not appear in @sortas',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @sortas should only appear in an index entry
',
    'line_nr' => 16,
    'text' => '@sortas should only appear in an index entry',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 4,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_indices{'explicit_sort_key'} = 'SK
cp
fn C
ky C
pg C
tp C
vr C
';

$result_nodes_list{'explicit_sort_key'} = '1|Top
 associated_section
 associated_title_command
 node_directions:
  next->chap
2|chap
 node_directions:
  prev->Top
';

$result_sections_list{'explicit_sort_key'} = '1
 associated_anchor_command: Top
 associated_node: Top
';

$result_sectioning_root{'explicit_sort_key'} = 'level: -1
list:
 1|
';

$result_headings_list{'explicit_sort_key'} = '';

$result_indices_sort_strings{'explicit_sort_key'} = 'SK:
 0
 A
 aaa 
 B
';


$result_converted{'info'}->{'explicit_sort_key'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

in a reuglar para .  ‘inside another ’.

   .  <and cmd >.

 [index ]
* Menu:

* zero sort key:                         chap.                  (line 3)
* bbbbbbb (first):                       chap.                  (line 3)
* aaa :                                  chap.                  (line 3)
* aaaaaaa (second):                      chap.                  (line 3)


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'explicit_sort_key'} = 'in a reuglar para .  ‘inside another ’.

   .  <and cmd >.

* Menu:

* zero sort key:                         chap.                  (line 0)
* bbbbbbb (first):                       chap.                  (line 0)
* aaa :                                  chap.                  (line 0)
* aaaaaaa (second):                      chap.                  (line 0)

';


$result_converted{'html_text'}->{'explicit_sort_key'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>


<a class="index-entry-id" id="index-bbbbbbb-_0028first_0029"></a>
<a class="index-entry-id" id="index-aaaaaaa-_0028second_0029"></a>
<a class="index-entry-id" id="index-zero-sort-key"></a>
<a class="index-entry-id" id="index-aaa-"></a>

<p>in a reuglar para . <code class="code">inside another </code>.
</p>
<p>.
<a class="url" href="and%20cmd%20">and cmd </a>.
</p>
<div class="printindex SK-printindex">
<table class="index-letters-header-printindex SK-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_SK_symbol-1"><b>0</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#chap_SK_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_SK_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex SK-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex SK-letter-header-printindex" colspan="2" id="chap_SK_symbol-1">0</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-zero-sort-key">zero sort key</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex SK-letter-header-printindex" colspan="2" id="chap_SK_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-bbbbbbb-_0028first_0029">bbbbbbb (first)</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-aaa-"><b class="b">aaa </b></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex SK-letter-header-printindex" colspan="2" id="chap_SK_letter-B">B</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-aaaaaaa-_0028second_0029">aaaaaaa (second)</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
<table class="index-letters-footer-printindex SK-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_SK_symbol-1"><b>0</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#chap_SK_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_SK_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
';


$result_converted{'xml'}->{'explicit_sort_key'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<defindex spaces=" " value="SK" line="SK"></defindex>

<indexcommand command="SKindex" index="SK" spaces=" "><indexterm index="SK" number="1" incode="0"><sortas>A</sortas> bbbbbbb (first)</indexterm></indexcommand>
<indexcommand command="SKindex" index="SK" spaces=" "><indexterm index="SK" number="2" incode="0"><sortas>B</sortas> aaaaaaa (second)</indexterm></indexcommand>
<indexcommand command="SKindex" index="SK" spaces=" "><indexterm index="SK" number="3" incode="0"><sortas>0</sortas> zero sort key</indexterm></indexcommand>
<indexcommand command="SKindex" index="SK" spaces=" "><indexterm index="SK" number="4" incode="0"><b>aaa <sortas>invalid nesting</sortas></b></indexterm></indexcommand>

<para>in a reuglar para <sortas>foo</sortas>. <code>inside another <sortas>command</sortas></code>.
</para>
<para><sortas>and cmd <b>inside</b></sortas>.
<url><urefurl>and cmd <sortas>inside</sortas></urefurl></url>.
</para>
<printindex spaces=" " value="SK" line="SK"></printindex>
';


$result_converted{'latex'}->{'explicit_sort_key'} = '\\documentclass{book}
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
\\makeindex[name=SK,title=]%

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
\\label{anchor:chap}%


\\index[SK]{A@bbbbbbb (first)}%
\\index[SK]{B@aaaaaaa (second)}%
\\index[SK]{0@zero sort key}%
\\index[SK]{aaa @\\textbf{aaa }}%

in a reuglar para . \\texttt{inside another }.

.
\\url{and cmd }.

\\printindex[SK]
\\end{document}
';

1;
