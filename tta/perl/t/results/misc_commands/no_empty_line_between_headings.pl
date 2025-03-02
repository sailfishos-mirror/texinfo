use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_empty_line_between_headings'} = '*document_root C4
 *before_node_section
 *0 @top C2 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  *1 @subheading C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subheading}
 *2 @chapter C1 l3 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_directions:D[up->E0]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *3 @section C1 l4 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E2]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
';


$result_texis{'no_empty_line_between_headings'} = '@top Top
@subheading Subheading
@chapter Chapter
@section Section
';


$result_texts{'no_empty_line_between_headings'} = 'Top
***
Subheading
----------
1 Chapter
*********
1.1 Section
===========
';

$result_sectioning{'no_empty_line_between_headings'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
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
$result_sectioning{'no_empty_line_between_headings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'no_empty_line_between_headings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_between_headings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'no_empty_line_between_headings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_between_headings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'no_empty_line_between_headings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_between_headings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'no_empty_line_between_headings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_between_headings'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'no_empty_line_between_headings'};

$result_errors{'no_empty_line_between_headings'} = [];


$result_floats{'no_empty_line_between_headings'} = {};



$result_converted{'plaintext'}->{'no_empty_line_between_headings'} = 'Top
***

Subheading
----------

1 Chapter
*********

1.1 Section
===========

';


$result_converted{'html_text'}->{'no_empty_line_between_headings'} = '<div class="top-level-extent" id="Top">
<h1 class="top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<h4 class="subheading" id="Subheading"><span>Subheading<a class="copiable-link" href="#Subheading"> &para;</a></span></h4>
<ul class="mini-toc">
<li><a href="#Chapter" accesskey="1">Chapter</a></li>
</ul>
<div class="chapter-level-extent" id="Chapter">
<h2 class="chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>
<ul class="mini-toc">
<li><a href="#Section" accesskey="1">Section</a></li>
</ul>
<div class="section-level-extent" id="Section">
<h3 class="section"><span>1.1 Section<a class="copiable-link" href="#Section"> &para;</a></span></h3>
</div>
</div>
</div>
';


$result_converted{'latex'}->{'no_empty_line_between_headings'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}

\\makeatletter
\\newcommand{\\Texinfosettitle}{No Title}%

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

\\part*{{Top}}
\\subsection*{{Subheading}}
\\chapter{{Chapter}}
\\section{{Section}}
\\end{document}
';


$result_converted{'docbook'}->{'no_empty_line_between_headings'} = '<chapter label="">
<title>Top</title>
<bridgehead renderas="sect2">Subheading</bridgehead>
</chapter>
<chapter label="1">
<title>Chapter</title>
<sect1 label="1.1">
<title>Section</title>
</sect1>
</chapter>
';

1;
