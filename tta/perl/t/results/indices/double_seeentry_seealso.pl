use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_seeentry_seealso'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {top}
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
    {top}
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
 *2 @node C1 l4 {node index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{node-index}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node index}
 *3 @chapter C9 l5 {Chapter Index}
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
    {Chapter Index}
  {empty_line:\\n}
  *4 index_entry_command@cindex C1 l7
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
  |seeentry:[E6]
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aaa}
    {spaces_at_end: }
    *5 @seeentry C1 l7
     *brace_arg C1
      {bbb}
    {spaces_at_end: }
    *6 @seeentry C1 l7
     *brace_arg C1
      {ccc}
  *7 index_entry_command@cindex C1 l8
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,2}
  |seealso:[E9]
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *8 @seealso C1 l8
     *brace_arg C1
      {ccc}
    {spaces_after_close_brace: }
    {ddd}
    {spaces_at_end: }
    *9 @seealso C1 l8
     *brace_arg C1
      {eee}
  *10 index_entry_command@cindex C1 l9
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,3}
  |seealso:[E12]
  |seeentry:[E11]
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ggg}
    {spaces_at_end: }
    *11 @seeentry C1 l9
     *brace_arg C1
      {hhh}
    {spaces_at_end: }
    *12 @seealso C1 l9
     *brace_arg C1
      {iii}
  *13 index_entry_command@cindex C1 l10
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,4}
  |seealso:[E14]
  |seeentry:[E16]
  |subentry:[E15]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    *14 @seealso C1 l10
     *brace_arg C1
      {fff}
  *15 @subentry C1 l10
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{1}
  |subentry_parent:[E13]
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subggg}
    {spaces_at_end: }
    *16 @seeentry C1 l10
     *brace_arg C1
      {subhhh}
  {empty_line:\\n}
  *@printindex C1 l12
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

$result_sectioning{'double_seeentry_seealso'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'node-index'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'double_seeentry_seealso'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'double_seeentry_seealso'}{'extra'}{'section_childs'}[0];
$result_sectioning{'double_seeentry_seealso'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'double_seeentry_seealso'}{'extra'}{'section_childs'}[0];
$result_sectioning{'double_seeentry_seealso'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'double_seeentry_seealso'}{'extra'}{'section_childs'}[0];
$result_sectioning{'double_seeentry_seealso'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'double_seeentry_seealso'};

$result_nodes{'double_seeentry_seealso'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'isindex' => 1,
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'node-index'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'double_seeentry_seealso'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'double_seeentry_seealso'}[0];
$result_nodes{'double_seeentry_seealso'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'double_seeentry_seealso'}[0];
$result_nodes{'double_seeentry_seealso'}[1] = $result_nodes{'double_seeentry_seealso'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'double_seeentry_seealso'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'node-index'
    }
  }
];

$result_errors{'double_seeentry_seealso'} = [
  {
    'error_line' => 'warning: empty index key in @cindex
',
    'line_nr' => 10,
    'text' => 'empty index key in @cindex',
    'type' => 'warning'
  }
];


$result_floats{'double_seeentry_seealso'} = {};


$result_indices_sort_strings{'double_seeentry_seealso'} = {
  'cp' => [
    ', subggg',
    'aaa',
    'ddd',
    'ggg'
  ]
};



$result_converted{'docbook'}->{'double_seeentry_seealso'} = '<chapter label="1" id="node-index">
<title>Chapter Index</title>

<indexterm role="cp"><primary>aaa</primary><see>ccc</see></indexterm>
<indexterm role="cp"><primary>ddd</primary><seealso>eee</seealso></indexterm>
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
  aaa, See ccc.
  ddd:                                   See also eee.
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
  aaa, See ccc.
  ddd:                                   See also eee.
  ggg, See hhh.

';


$result_converted{'html_text'}->{'double_seeentry_seealso'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#node-index" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#node-index" accesskey="1">Chapter Index</a></li>
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
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-index_cp_symbol-1"></th></tr>
<tr><td class="printindex-index-entry"></td><td></td></tr>
<tr><td class="printindex-index-see-entry index-entry-level-1">subggg, <em class="emph">See</em> subhhh</td><td class="printindex-index-see-entry-section"></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-index_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-see-entry">aaa, <em class="emph">See</em> ccc</td><td class="printindex-index-see-entry-section"></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-index_cp_letter-D">D</th></tr>
<tr><td class="printindex-index-entry">ddd</td><td class="printindex-index-see-also"><em class="emph">See also</em> eee</td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="node-index_cp_letter-G">G</th></tr>
<tr><td class="printindex-index-see-entry">ggg, <em class="emph">See</em> hhh</td><td class="printindex-index-see-entry-section"></td></tr>
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
<cindex index="cp" spaces=" "><indexterm index="cp" number="4"><seealso>fff</seealso></indexterm></cindex> <subentry spaces=" ">subggg <seeentry>subhhh</seeentry></subentry>

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

\\index[cp]{aaa@aaa|see{ccc}}%
\\index[cp]{ddd@ddd|seealso{eee}}%
\\index[cp]{ggg@ggg|see{hhh}}%
\\index[cp]{@!subggg@subggg|see{subhhh}}%

\\printindex[cp]
\\end{document}
';

1;
