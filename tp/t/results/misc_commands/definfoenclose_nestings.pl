use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'definfoenclose_nestings'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'phoo,//,\\'
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
              'phoo',
              '//',
              '\\'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in phoo in code'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'phoo',
                      'extra' => {
                        'begin' => '//',
                        'end' => '\\'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 3,
                        'macro' => ''
                      },
                      'type' => 'definfoenclose_command'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
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
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in code in phoo'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'phoo',
              'extra' => {
                'begin' => '//',
                'end' => '\\'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
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
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'phoo',
              'extra' => {
                'begin' => '//',
                'end' => '\\'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              },
              'type' => 'definfoenclose_command'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in center in phoo'
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
          'cmdname' => 'center',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[6];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[7];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'definfoenclose_nestings'}{'contents'}[0];
$result_trees{'definfoenclose_nestings'}{'contents'}[0]{'parent'} = $result_trees{'definfoenclose_nestings'};

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
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @phoo should not appear in @code
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@phoo should not appear in @code',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @center should not appear in @phoo
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => '@center should not appear in @phoo',
    'type' => 'warning'
  },
  {
    'error_line' => '@phoo missing closing brace
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => '@phoo missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'definfoenclose_nestings'} = {};



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
