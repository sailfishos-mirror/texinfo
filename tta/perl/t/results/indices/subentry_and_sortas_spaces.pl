use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'subentry_and_sortas_spaces'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1
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
 *2 @node C1 l4
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
 *3 @chapter C14 l5
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
  |sortas:{A---S}
  |subentry:[E6]
   *line_arg C3
    {aaa}
    {spaces_at_end: }
    *5 @sortas C1 l7
     *brace_arg C1
      {A---S}
  *6 @subentry C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |sortas:{C---S1}
  |subentry_level:{1}
  |subentry_parent:[E4]
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *7 @sortas C1 l7
     *brace_arg C1
      {C---S1}
    {bbb sort as c}
  *8 index_entry_command@cindex C1 l8
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,2}
  |subentry:[E9]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {aaa}
  *9 @subentry C1 l8
  |EXTRA
  |sortas:{B---S1}
  |subentry_level:{1}
  |subentry_parent:[E8]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    *10 @sortas C1 l8
     *brace_arg C1
      {B---S1}
  *11 index_entry_command@cindex C1 l9
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,3}
  |subentry:[E12]
   *line_arg C1
    {aaa}
  *12 @subentry C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E13]
  |subentry_level:{1}
  |subentry_parent:[E11]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {bbb}
  *13 @subentry C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |sortas:{D}
  |subentry_level:{2}
  |subentry_parent:[E12]
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ccc}
    *14 @sortas C1 l9
     *brace_arg C1
      {D}
  *15 index_entry_command@cindex C1 l10
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,4}
  |subentry:[E16]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {aaa}
  *16 @subentry C1 l10
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry:[E17]
  |subentry_level:{1}
  |subentry_parent:[E15]
   *line_arg C1
    {bbb}
  *17 @subentry C1 l10
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |subentry_level:{2}
  |subentry_parent:[E16]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ccc}
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

$result_sectioning{'subentry_and_sortas_spaces'} = {
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
                    'normalized' => 'chapter-index'
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
$result_sectioning{'subentry_and_sortas_spaces'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'subentry_and_sortas_spaces'}{'extra'}{'section_childs'}[0];
$result_sectioning{'subentry_and_sortas_spaces'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'subentry_and_sortas_spaces'}{'extra'}{'section_childs'}[0];
$result_sectioning{'subentry_and_sortas_spaces'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'subentry_and_sortas_spaces'}{'extra'}{'section_childs'}[0];
$result_sectioning{'subentry_and_sortas_spaces'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'subentry_and_sortas_spaces'};

$result_nodes{'subentry_and_sortas_spaces'} = [
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
            'normalized' => 'chapter-index'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'subentry_and_sortas_spaces'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'subentry_and_sortas_spaces'}[0];
$result_nodes{'subentry_and_sortas_spaces'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'subentry_and_sortas_spaces'}[0];
$result_nodes{'subentry_and_sortas_spaces'}[1] = $result_nodes{'subentry_and_sortas_spaces'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'subentry_and_sortas_spaces'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chapter-index'
    }
  }
];

$result_errors{'subentry_and_sortas_spaces'} = [];


$result_floats{'subentry_and_sortas_spaces'} = {};


$result_indices_sort_strings{'subentry_and_sortas_spaces'} = {
  'cp' => [
    'A---S, C---S1',
    'aaa, B---S1',
    'aaa, bbb, ccc',
    'aaa, bbb, D'
  ]
};



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
<li><a href="#chapter-index" accesskey="1">Index</a></li>
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
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-index_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry">aaa</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-aaa-bbb-sort-as-c">bbb sort as c</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-aaa-"></a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1">bbb</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-aaa-bbb-ccc-1">ccc</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-aaa-bbb-ccc">ccc</a></td><td class="printindex-index-section"><a href="#chapter-index">chapter index</a></td></tr>
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

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">aaa <sortas>A&textmdash;S</sortas></indexterm></cindex><subentry spaces=" "><sortas>C&textmdash;S1</sortas>bbb sort as c</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">aaa</indexterm></cindex> <subentry><sortas>B&textmdash;S1</sortas> </subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">aaa</indexterm></cindex><subentry spaces=" ">bbb </subentry><subentry spaces=" ">ccc<sortas>D</sortas></subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="4">aaa</indexterm></cindex> <subentry spaces=" ">bbb</subentry><subentry spaces=" ">ccc</subentry>

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
