use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_not_closed_on_center_line'} = '*document_root C1
 *before_node_section C2
  *@center C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C2
    {c }
    *@strong C1 l1
     *brace_container C1
      {\\n}
  *paragraph C1
   {st\\n}
';


$result_texis{'command_not_closed_on_center_line'} = '@center c @strong{
}st
';


$result_texts{'command_not_closed_on_center_line'} = 'c 
st
';

$result_errors{'command_not_closed_on_center_line'} = [
  {
    'error_line' => '@strong missing closing brace
',
    'line_nr' => 1,
    'text' => '@strong missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 2,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_nodes_list{'command_not_closed_on_center_line'} = '';

$result_sections_list{'command_not_closed_on_center_line'} = '';

$result_headings_list{'command_not_closed_on_center_line'} = '';


$result_converted{'plaintext'}->{'command_not_closed_on_center_line'} = '                                  c *
                                   *
   st
';


$result_converted{'html_text'}->{'command_not_closed_on_center_line'} = '<div class="center">c <strong class="strong">
</strong>
</div><p>st
</p>';


$result_converted{'latex'}->{'command_not_closed_on_center_line'} = '\\documentclass{book}
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

\\begin{center}
c \\textbf{
}
\\end{center}
st
\\end{document}
';


$result_converted{'docbook'}->{'command_not_closed_on_center_line'} = '<simpara role="center">c <emphasis role="bold">
</emphasis></simpara>
<para>st
</para>';

1;
