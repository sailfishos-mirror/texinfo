use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'incorrect_allowcodebreaks_argument'} = '*document_root C1
 *before_node_section C2
  *@allowcodebreaks C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {_arg}
  *paragraph C2
   *0 @code C1 l2
    *brace_container C1
     {b a}
   {\\n}
';


$result_texis{'incorrect_allowcodebreaks_argument'} = '@allowcodebreaks _arg
@code{b a}
';


$result_texts{'incorrect_allowcodebreaks_argument'} = 'b a
';

$result_errors{'incorrect_allowcodebreaks_argument'} = [
  {
    'error_line' => '@allowcodebreaks arg must be `true\' or `false\', not `_arg\'
',
    'line_nr' => 1,
    'text' => '@allowcodebreaks arg must be `true\' or `false\', not `_arg\'',
    'type' => 'error'
  }
];


$result_floats{'incorrect_allowcodebreaks_argument'} = {};



$result_converted{'plaintext'}->{'incorrect_allowcodebreaks_argument'} = '‘b a’
';


$result_converted{'html_text'}->{'incorrect_allowcodebreaks_argument'} = '<p><code class="code">b a</code>
</p>';


$result_converted{'latex'}->{'incorrect_allowcodebreaks_argument'} = '\\documentclass{book}
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

\\texttt{b a}
\\end{document}
';

1;
