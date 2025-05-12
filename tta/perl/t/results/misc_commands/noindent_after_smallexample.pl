use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'noindent_after_smallexample'} = '*document_root C1
 *before_node_section C5
  *paragraph C1
   {To obtain.\\n}
  *@smallexample C3 l2
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C2
    {$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.guess?rev=HEAD&content-type=text/plain\'\\n}
    {$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.sub?rev=HEAD&content-type=text/plain\'\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{smallexample}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {smallexample}
  *@noindent l6
  {ignorable_spaces_after_command:\\n}
  *paragraph C1
  |EXTRA
  |noindent:{1}
   {Less recent versions are also present.\\n}
';


$result_texis{'noindent_after_smallexample'} = 'To obtain.
@smallexample
$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.guess?rev=HEAD&content-type=text/plain\'
$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.sub?rev=HEAD&content-type=text/plain\'
@end smallexample
@noindent
Less recent versions are also present.
';


$result_texts{'noindent_after_smallexample'} = 'To obtain.
$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.guess?rev=HEAD&content-type=text/plain\'
$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.sub?rev=HEAD&content-type=text/plain\'
Less recent versions are also present.
';

$result_errors{'noindent_after_smallexample'} = [];


$result_nodes_list{'noindent_after_smallexample'} = '';

$result_sections_list{'noindent_after_smallexample'} = '';


$result_converted{'plaintext'}->{'noindent_after_smallexample'} = 'To obtain.
     $ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.guess?rev=HEAD&content-type=text/plain\'
     $ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.sub?rev=HEAD&content-type=text/plain\'
Less recent versions are also present.
';


$result_converted{'html_text'}->{'noindent_after_smallexample'} = '<p>To obtain.
</p><div class="example smallexample">
<pre class="example-preformatted">$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.guess?rev=HEAD&amp;content-type=text/plain\'
$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.sub?rev=HEAD&amp;content-type=text/plain\'
</pre></div>
<p>Less recent versions are also present.
</p>';


$result_converted{'latex'}->{'noindent_after_smallexample'} = '\\documentclass{book}
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

To obtain.
\\begin{Texinfopreformatted}%
\\ttfamily \\footnotesize \\$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.guess?rev=HEAD\\&content-type=text/plain\'
\\$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.sub?rev=HEAD\\&content-type=text/plain\'
\\end{Texinfopreformatted}
\\noindent{}Less recent versions are also present.
\\end{document}
';

1;
