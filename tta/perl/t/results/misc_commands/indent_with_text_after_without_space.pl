use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'indent_with_text_after_without_space'} = '*document_root C1
 *before_node_section C4
  *@set C2
  |INFO
  |arg_line:{ myvalue a\\n}
   {rawline_arg:myvalue}
   {rawline_arg:a}
  {empty_line:\\n}
  *@indent l3
  *paragraph C1
  |EXTRA
  |indent:{1}
   {a b\\n}
   >SOURCEMARKS
   >value_expansion<start;1>{a}
    >*@value C1
     >*brace_container C1
      >{myvalue}
   >value_expansion<end;1><p:1>
';


$result_texis{'indent_with_text_after_without_space'} = '@set myvalue a

@indenta b
';


$result_texts{'indent_with_text_after_without_space'} = '
a b
';

$result_errors{'indent_with_text_after_without_space'} = [];


$result_nodes_list{'indent_with_text_after_without_space'} = '';

$result_sections_list{'indent_with_text_after_without_space'} = '';

$result_sectioning_root{'indent_with_text_after_without_space'} = '';

$result_headings_list{'indent_with_text_after_without_space'} = '';


$result_converted{'plaintext'}->{'indent_with_text_after_without_space'} = '   a b
';


$result_converted{'html_text'}->{'indent_with_text_after_without_space'} = '
<p>a b
</p>';


$result_converted{'latex'}->{'indent_with_text_after_without_space'} = '\\documentclass{book}
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


a b
\\end{document}
';

1;
