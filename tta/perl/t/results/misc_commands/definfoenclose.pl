use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'definfoenclose'} = '*document_root C1
 *before_node_section C14
  {empty_line:\\n}
  *paragraph C2
   {definfoenclose phoo,//,\\  }
   *@definfoenclose C1 l2
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |misc_args:A{phoo|//|\\}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {phoo,//,\\}
  {empty_line:\\n}
  *paragraph C2
   *definfoenclose_command@phoo C1 l4
   |INFO
   |command_name:{phoo}
   |EXTRA
   |begin:{//}
   |end:{\\}
    *brace_container C1
     {bar}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   {definfoenclose phi,:,:  }
   *@definfoenclose C1 l6
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |misc_args:A{phi|:|:}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {phi,:,:}
  {empty_line:\\n}
  *paragraph C2
   *definfoenclose_command@phi C1 l8
   |INFO
   |command_name:{phi}
   |EXTRA
   |begin:{:}
   |end:{:}
    *brace_container C1
     {bar}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@strong C1 l10
    *brace_container C1
     {very strong}
   {\\n}
  {empty_line:\\n}
  *@definfoenclose C1 l12
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |misc_args:A{strong|(strong:|:)}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {strong,(strong:,:)}
  {empty_line:\\n}
  *paragraph C2
   *definfoenclose_command@strong C1 l14
   |INFO
   |command_name:{strong}
   |EXTRA
   |begin:{(strong:}
   |end:{:)}
    *brace_container C1
     { is it really strong? }
   {\\n}
';


$result_texis{'definfoenclose'} = '
definfoenclose phoo,//,\\  @definfoenclose phoo,//,\\

@phoo{bar}

definfoenclose phi,:,:  @definfoenclose phi,:,:

@phi{bar}

@strong{very strong}

@definfoenclose strong,(strong:,:)

@strong{ is it really strong? }
';


$result_texts{'definfoenclose'} = '
definfoenclose phoo,//,\\  
bar

definfoenclose phi,:,:  
bar

very strong


 is it really strong? 
';

$result_errors{'definfoenclose'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 2,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose should only appear at the beginning of a line
',
    'line_nr' => 2,
    'text' => '@definfoenclose should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 6,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose should only appear at the beginning of a line
',
    'line_nr' => 6,
    'text' => '@definfoenclose should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 12,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];


$result_nodes_list{'definfoenclose'} = '';

$result_sections_list{'definfoenclose'} = '';

$result_sectioning_root{'definfoenclose'} = '';

$result_headings_list{'definfoenclose'} = '';


$result_converted{'plaintext'}->{'definfoenclose'} = 'definfoenclose phoo,//,\\

   //bar\\

   definfoenclose phi,:,:

   :bar:

   *very strong*

   (strong: is it really strong?  :)
';


$result_converted{'html_text'}->{'definfoenclose'} = '
<p>definfoenclose phoo,//,\\  </p>
<p>//bar\\
</p>
<p>definfoenclose phi,:,:  </p>
<p>:bar:
</p>
<p><strong class="strong">very strong</strong>
</p>

<p>(strong: is it really strong? :)
</p>';


$result_converted{'latex'}->{'definfoenclose'} = '\\documentclass{book}
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


definfoenclose phoo,//,\\textbackslash{}  
bar

definfoenclose phi,:,:  
bar

\\textbf{very strong}


\\textbf{ is it really strong? }
\\end{document}
';


$result_converted{'docbook'}->{'definfoenclose'} = '
<para>definfoenclose phoo,//,\\  </para>
<para>bar
</para>
<para>definfoenclose phi,:,:  </para>
<para>bar
</para>
<para><emphasis role="bold">very strong</emphasis>
</para>

<para> is it really strong? 
</para>';

1;
