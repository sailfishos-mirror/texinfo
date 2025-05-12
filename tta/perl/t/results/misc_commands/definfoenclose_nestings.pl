use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'definfoenclose_nestings'} = '*document_root C1
 *before_node_section C9
  *@definfoenclose C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phoo|//|\\}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phoo,//,\\}
  {empty_line:\\n}
  *paragraph C2
   *@code C1 l3
    *brace_container C1
     *definfoenclose_command@phoo C1 l3
     |INFO
     |command_name:{phoo}
     |EXTRA
     |begin:{//}
     |end:{\\}
      *brace_container C1
       {in phoo in code}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *definfoenclose_command@phoo C1 l5
   |INFO
   |command_name:{phoo}
   |EXTRA
   |begin:{//}
   |end:{\\}
    *brace_container C1
     *@code C1 l5
      *brace_container C1
       {in code in phoo}
   {.\\n}
  {empty_line:\\n}
  *paragraph C1
   *definfoenclose_command@phoo C1 l7
   |INFO
   |command_name:{phoo}
   |EXTRA
   |begin:{//}
   |end:{\\}
    *brace_container C1
     {\\n}
  *@center C1 l8
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {in center in phoo}
  {empty_line:\\n}
';


$result_texis{'definfoenclose_nestings'} = '@definfoenclose phoo,//,\\

@code{@phoo{in phoo in code}}.

@phoo{@code{in code in phoo}}.

@phoo{
}@center in center in phoo

';


$result_texts{'definfoenclose_nestings'} = '
in phoo in code.

in code in phoo.


in center in phoo

';

$result_errors{'definfoenclose_nestings'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 1,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @phoo should not appear in @code
',
    'line_nr' => 3,
    'text' => '@phoo should not appear in @code',
    'type' => 'warning'
  },
  {
    'error_line' => '@phoo missing closing brace
',
    'line_nr' => 7,
    'text' => '@phoo missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 9,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_nodes_list{'definfoenclose_nestings'} = '';

$result_sections_list{'definfoenclose_nestings'} = '';


$result_converted{'plaintext'}->{'definfoenclose_nestings'} = '‘//in phoo in code\\’.

   //‘in code in phoo’\\.

   // \\
                           in center in phoo

';


$result_converted{'html_text'}->{'definfoenclose_nestings'} = '
<p><code class="code">//in phoo in code\\</code>.
</p>
<p>//<code class="code">in code in phoo</code>\\.
</p>
<p>//
\\</p><div class="center">in center in phoo
</div>
';


$result_converted{'latex'}->{'definfoenclose_nestings'} = '\\documentclass{book}
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


\\texttt{in phoo in code}.

\\texttt{in code in phoo}.


\\begin{center}
in center in phoo
\\end{center}

\\end{document}
';

1;
