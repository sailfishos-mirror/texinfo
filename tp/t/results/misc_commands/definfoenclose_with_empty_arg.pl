use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'definfoenclose_with_empty_arg'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'headword, , :'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'definfoenclose',
          'extra' => {
            'misc_args' => [
              'headword',
              '',
              ':'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'My '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'something'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'headword',
              'contents' => [],
              'extra' => {
                'begin' => '',
                'end' => ':'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              },
              'type' => 'definfoenclose_command'
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0];
$result_trees{'definfoenclose_with_empty_arg'}{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_with_empty_arg'};

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
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];


$result_floats{'definfoenclose_with_empty_arg'} = {};



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
\\usepackage[T1]{fontenc}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}
\\usepackage[utf8]{inputenc}

\\makeatletter
\\newcommand{\\GNUTexinfosettitle}{No Title}%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
\\newenvironment{GNUTexinfopreformatted}{%
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing\\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{GNUTexinfoindented}{\\begin{list}{}{}\\item\\relax}{\\end{list}}
% used for substitutions in commands
\\newcommand{\\GNUTexinfoplaceholder}[1]{}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%



My something.

\\end{document}
';


$result_converted{'xml'}->{'definfoenclose_with_empty_arg'} = '
<definfoenclose command="headword" open="" close=":" line="headword, , :"></definfoenclose>

<para>My <infoenclose command="headword" begin="" end=":">something</infoenclose>.
</para>
';

1;
