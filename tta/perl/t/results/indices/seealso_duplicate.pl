use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'seealso_duplicate'} = '*document_root C3
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
 *@node C12 l2 {chap}
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
  *index_entry_command@cindex C1 l4
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chap}
  |index_entry:I{cp,1}
   *line_arg C3
    *@command C1 l4
     *brace_container C1
      {awk}
    {ignorable_spaces_before_command: }
    *@subentry C1 l4
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {POSIX and}
  *index_entry_command@cindex C1 l5
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chap}
  |index_entry:I{cp,2}
   *line_arg C3
    *@command C1 l5
     *brace_container C1
      {awk}
    {ignorable_spaces_before_command: }
    *@subentry C1 l5
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {POSIX and}
      {spaces_at_end: }
      *@seealso C1 l5
       *brace_arg C2
        {POSIX }
        *@command C1 l5
         *brace_container C1
          {awk}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {c\\n}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l11
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chap}
  |index_entry:I{cp,3}
   *line_arg C3
    *@command C1 l11
     *brace_container C1
      {awk}
    {ignorable_spaces_before_command: }
    *@subentry C1 l11
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {POSIX and}
      {spaces_at_end: }
      *@seeentry C1 l11
       *brace_arg C1
        {Another entry}
  {empty_line:\\n}
  *@printindex C1 l13
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


$result_texis{'seealso_duplicate'} = '@node Top
@node chap

@cindex @command{awk} @subentry POSIX and
@cindex @command{awk} @subentry POSIX and @seealso{POSIX @command{awk}}

b

c

@cindex @command{awk} @subentry POSIX and @seeentry{Another entry}

@printindex cp
';


$result_texts{'seealso_duplicate'} = '

b

c


';

$result_errors{'seealso_duplicate'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 2,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_nodes_list{'seealso_duplicate'} = '1|Top
 node_directions:
  next->chap
2|chap
 node_directions:
  prev->Top
';

$result_sections_list{'seealso_duplicate'} = '';

$result_sectioning_root{'seealso_duplicate'} = '';

$result_headings_list{'seealso_duplicate'} = '';

$result_indices_sort_strings{'seealso_duplicate'} = 'cp:
 awk, POSIX and
 awk, POSIX and
 awk, POSIX and
';


$result_converted{'info'}->{'seealso_duplicate'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

b

   c

 [index ]
* Menu:

* awk, POSIX and:                        chap.                  (line 3)
  awk, POSIX and:                        See also POSIX awk.
  awk, POSIX and, See Another entry.


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'seealso_duplicate'} = 'b

   c

* Menu:

* awk, POSIX and:                        chap.                  (line 0)
  awk, POSIX and:                        See also POSIX awk.
  awk, POSIX and, See Another entry.

';


$result_converted{'html_text'}->{'seealso_duplicate'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<a class="index-entry-id" id="index-awk-POSIX-and"></a>

<p>b
</p>
<p>c
</p>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chap_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><code class="command">awk</code></td><td></td></tr>
<tr><td class="printindex-index-subentry-level-1"><a href="#index-awk-POSIX-and">POSIX and</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-subentry-level-1">POSIX and</td><td class="printindex-index-see-also"><em class="emph">See also</em> POSIX <code class="command">awk</code></td></tr>
<tr><td class="printindex-index-see-entry printindex-index-subentry-level-1">POSIX and, <em class="emph">See</em> Another entry</td><td class="printindex-index-see-entry-section"></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
</div>
';


$result_converted{'xml'}->{'seealso_duplicate'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1"><command>awk</command> <subentry spaces=" ">POSIX and</subentry>
</indexterm></cindex><cindex index="cp" spaces=" "><indexterm index="cp" number="2"><command>awk</command> <subentry spaces=" ">POSIX and <seealso>POSIX <command>awk</command></seealso></subentry>
</indexterm></cindex>
<para>b
</para>
<para>c
</para>
<cindex index="cp" spaces=" "><indexterm index="cp" number="3"><command>awk</command> <subentry spaces=" ">POSIX and <seeentry>Another entry</seeentry></subentry>
</indexterm></cindex>
<printindex spaces=" " value="cp" line="cp"></printindex>
';


$result_converted{'latex'}->{'seealso_duplicate'} = '\\documentclass{book}
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
\\label{anchor:chap}%

\\index[cp]{awk@\\texttt{awk}!POSIX and@POSIX and}%
\\index[cp]{awk@\\texttt{awk}!POSIX and@POSIX and|seealso{POSIX \\texttt{awk}}}%

b

c

\\index[cp]{awk@\\texttt{awk}!POSIX and@POSIX and|see{Another entry}}%

\\printindex[cp]
\\end{document}
';

1;
