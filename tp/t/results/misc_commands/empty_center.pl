use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_center'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => ' 
'
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'center',
          'extra' => {
            'missing_argument' => 1
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'empty_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_center'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_center'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_center'}{'contents'}[0];
$result_trees{'empty_center'}{'contents'}[0]{'parent'} = $result_trees{'empty_center'};

$result_texis{'empty_center'} = '@center 
';


$result_texts{'empty_center'} = '
';

$result_errors{'empty_center'} = [
  {
    'error_line' => 'warning: @center missing argument
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@center missing argument',
    'type' => 'warning'
  }
];


$result_floats{'empty_center'} = {};



$result_converted{'plaintext'}->{'empty_center'} = '';


$result_converted{'html_text'}->{'empty_center'} = '';


$result_converted{'latex'}->{'empty_center'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage[T1]{fontenc}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar with Texinfo TeX
\\usepackage[hidelinks]{hyperref}
\\usepackage[utf8]{inputenc}

\\makeatletter
\\newcommand{\\GNUTexinfosettitle}{No Title}%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
% add command aliases to use the same command in book and report
\\newcommand\\GNUTexinfomainmatter{\\mainmatter}
\\newcommand\\GNUTexinfofrontmatter{\\frontmatter}
\\newenvironment{GNUTexinfopreformatted}{%
  \\par\\obeylines\\obeyspaces\\frenchspacing
  \\parskip=\\z@\\parindent=\\z@}{}
\\newenvironment{GNUTexinfoindented}
  {\\begin{list}{}{}
  \\item\\relax}
  {\\end{list}}
% command that does nothing used to help with substitutions in commands
\\newcommand{\\GNUTexinfoplaceholder}[1]{}

% plain page style, for part and chapter, which call \\thispagestyle{plain}
\\renewpagestyle{plain}{\\sethead[\\thepage{}][][]
                             {}{}{\\thepage{}}}

% single header
\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% called when setting single headers
\\newcommand{\\GNUTexinfosetsingleheader}{\\pagestyle{single}}

% double header
\\newpagestyle{double}{\\sethead[\\thepage{}][][\\GNUTexinfosettitle]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% called when setting double headers
\\newcommand{\\GNUTexinfosetdoubleheader}{\\pagestyle{double}}


% avoid pagebreak and headings setting for a sectionning command
\\newcommand{\\GNUTexinfonopagebreakheading}[2]{{\\let\\clearpage\\relax \\let\\cleardoublepage\\relax \\let\\thispagestyle\\GNUTexinfoplaceholder #1{#2}}}

\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\GNUTexinfosetsingleheader{}%

\\end{document}
';


$result_converted{'docbook'}->{'empty_center'} = '<simpara role="center"></simpara>
';

1;
