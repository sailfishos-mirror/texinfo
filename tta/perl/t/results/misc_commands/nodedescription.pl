use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodedescription'} = '*document_root C5
 *before_node_section C2
  *0 @nodedescription C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {out of any node}
  {empty_line:\\n}
 *1 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E2]
 |is_target:{1}
 |node_directions:D[next->E3]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C2 l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E1]
 |section_childs:EC[E4]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *3 @node C1 l6 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E4]
 |is_target:{1}
 |node_description:[E5]
 |node_directions:D[prev->E1|up->E1]
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *4 @chapter C7 l7 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |section_directions:D[up->E2]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E2|up->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *5 @nodedescription C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E3]
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@emph C1 l9
     *brace_container C1
      {first description}
    { of chapter}
  {empty_line:\\n}
  *6 @nodedescription C1 l11
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E3]
   *line_arg C2
    {second description }
    *@\\n
  {spaces_before_paragraph:  }
  *paragraph C1
   {of chapter\\n}
';


$result_texis{'nodedescription'} = '@nodedescription out of any node

@node Top
@top top

@node chap
@chapter Chapter

@nodedescription @emph{first description} of chapter

@nodedescription second description @
  of chapter
';


$result_texts{'nodedescription'} = '
top
***

1 Chapter
*********


of chapter
';

$result_errors{'nodedescription'} = [
  {
    'error_line' => 'warning: @nodedescription outside of any node
',
    'line_nr' => 1,
    'text' => '@nodedescription outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple node @nodedescription
',
    'line_nr' => 11,
    'text' => 'multiple node @nodedescription',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ should not occur at end of argument to line command
',
    'line_nr' => 11,
    'text' => '@ should not occur at end of argument to line command',
    'type' => 'warning'
  }
];


$result_nodes_list{'nodedescription'} = '1|Top
 associated_section: top
2|chap
 associated_section: 1 Chapter
';

$result_sections_list{'nodedescription'} = '1|top
 associated_node: Top
2|Chapter
 associated_node: chap
';


$result_converted{'plaintext'}->{'nodedescription'} = 'top
***

1 Chapter
*********

of chapter
';


$result_converted{'html_text'}->{'nodedescription'} = '
<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>


<p>of chapter
</p></div>
</div>
';


$result_converted{'latex'}->{'nodedescription'} = '\\documentclass{book}
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


\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%


  of chapter
\\end{document}
';

1;
