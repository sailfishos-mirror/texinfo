use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'definfoenclose_with_empty_arg'} = '*document_root C1
 *before_node_section C5
  {empty_line:\\n}
  *@definfoenclose C1 l2
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |misc_args:A{headword||:}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {headword, , :}
  {empty_line:\\n}
  *paragraph C3
   {My }
   *definfoenclose_command@headword C1 l4
   |INFO
   |command_name:{headword}
   |EXTRA
   |begin:{}
   |end:{:}
    *brace_container C1
     {something}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'definfoenclose_with_empty_arg'} = '
@definfoenclose headword, , :

My @headword{something}.

';


$result_texts{'definfoenclose_with_empty_arg'} = '

My something.

';

$result_errors{'definfoenclose_with_empty_arg'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 2,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];


$result_nodes_list{'definfoenclose_with_empty_arg'} = '';

$result_sections_list{'definfoenclose_with_empty_arg'} = '';

$result_sectioning_root{'definfoenclose_with_empty_arg'} = '';

$result_headings_list{'definfoenclose_with_empty_arg'} = '';


$result_converted{'plaintext'}->{'definfoenclose_with_empty_arg'} = 'My something:.

';


$result_converted{'html_text'}->{'definfoenclose_with_empty_arg'} = '

<p>My something:.
</p>
';


$result_converted{'latex'}->{'definfoenclose_with_empty_arg'} = '\\documentclass{book}
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



My something.

\\end{document}
';


$result_converted{'xml'}->{'definfoenclose_with_empty_arg'} = '
<definfoenclose spaces=" " command="headword" open="" close=":" line="headword, , :"></definfoenclose>

<para>My <infoenclose command="headword" begin="" end=":">something</infoenclose>.
</para>
';

1;
