use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'brace_in_index'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'cmdname' => '{',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
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
                      'cmdname' => '{',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'math',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
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
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'displaymath',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'cmdname' => '{',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'displaymath'
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
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'displaymath',
                'spaces_before_argument' => ' ',
                'text_arg' => 'displaymath'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => '{',
                  'parent' => {}
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_context'
                    }
                  ],
                  'cmdname' => 'math',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  }
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'number' => 2
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'samp',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 13,
                    'macro' => ''
                  }
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'number' => 3
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 15,
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
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[1];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[1];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'contents'}[3];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'extra'}{'index_entry'}{'command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'extra'}{'index_entry'}{'content'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'extra'}{'index_entry'}{'command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'extra'}{'index_entry'}{'content'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'extra'}{'index_entry'}{'command'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'extra'}{'index_entry'}{'content'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'};
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'args'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13];
$result_trees{'brace_in_index'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'brace_in_index'}{'contents'}[0];
$result_trees{'brace_in_index'}{'contents'}[0]{'parent'} = $result_trees{'brace_in_index'};

$result_texis{'brace_in_index'} = '@{

@math{@{}

@displaymath
@{
@end displaymath

@cindex @{

@cindex @math{@{}

@cindex @samp{@{}

@printindex cp
';


$result_texts{'brace_in_index'} = '{

{

{




';

$result_errors{'brace_in_index'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: printindex before document beginning: @printindex cp
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => 'printindex before document beginning: @printindex cp',
    'type' => 'warning'
  }
];


$result_floats{'brace_in_index'} = {};


$result_indices_sort_strings{'brace_in_index'} = {
  'cp' => [
    '{',
    '{',
    '{'
  ]
};



$result_converted{'latex'}->{'brace_in_index'} = '\\begin{document}
\\{

$\\{$

$$
\\{
$$

\\index[cp]{\\textbraceleft{}}%

\\index[cp]{$\\lbrace{}$}%

\\index[cp]{`\\texttt{\\textbraceleft{}}\'}%

\\printindex[cp]
';


$result_converted{'file_latex'}->{'brace_in_index'} = '\\documentclass{book}
\\usepackage{imakeidx}
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

\\makeindex[name=cp]%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
% add command aliases to use the same command in book and report
\\newcommand\\GNUTexinfomainmatter{\\mainmatter}
\\newcommand\\GNUTexinfofrontmatter{\\frontmatter}
\\newenvironment{GNUTexinfopreformatted}{%
  \\par\\obeylines\\obeyspaces\\frenchspacing
  \\parskip=\\z@\\parindent=\\z@}{}
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
\\newcommand{\\GNUTexinfonopagebreakheading}[2]{\\let\\clearpage\\relax \\let\\cleardoublepage\\relax \\let\\thispagestyle\\GNUTexinfoplaceholder #1{#2}}

\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\GNUTexinfosetsingleheader{}%

\\begin{document}
\\{

$\\{$

$$
\\{
$$

\\index[cp]{\\textbraceleft{}}%

\\index[cp]{$\\lbrace{}$}%

\\index[cp]{`\\texttt{\\textbraceleft{}}\'}%

\\printindex[cp]
\\end{document}
';

1;
