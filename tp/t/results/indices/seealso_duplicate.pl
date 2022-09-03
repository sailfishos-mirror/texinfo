use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'seealso_duplicate'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'awk'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'command',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 3,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'POSIX and'
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
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {},
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
                          'text' => 'awk'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'command',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'node' => {},
              'number' => 2
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'POSIX and'
                    },
                    {
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'empty_spaces_before_argument'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'POSIX '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'awk'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'command',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 4,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'seealso',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 4,
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
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'seealso' => {},
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {},
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
            'line_nr' => 6,
            'macro' => ''
          }
        }
      ],
      'extra' => {
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'seealso_duplicate'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'};
$result_trees{'seealso_duplicate'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'seealso_duplicate'}{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'extra'}{'subentry'};
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'extra'}{'subentry'}{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[2] = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[1]{'extra'}{'subentry'};
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'seealso_duplicate'}{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'};
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'extra'}{'seealso'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'}{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[4] = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[3]{'extra'}{'subentry'};
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[6];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'seealso_duplicate'}{'contents'}[1];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'seealso_duplicate'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'seealso_duplicate'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'seealso_duplicate'}{'contents'}[1]{'parent'} = $result_trees{'seealso_duplicate'};

$result_texis{'seealso_duplicate'} = '@node Top

@cindex @command{awk} @subentry POSIX and
@cindex @command{awk} @subentry POSIX and @seealso{POSIX @command{awk}}

@printindex cp
';


$result_texts{'seealso_duplicate'} = '

';

$result_nodes{'seealso_duplicate'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'seealso_duplicate'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_errors{'seealso_duplicate'} = [];


$result_floats{'seealso_duplicate'} = {};


$result_indices_sort_strings{'seealso_duplicate'} = {
  'cp' => [
    'awk',
    'awk'
  ]
};



$result_converted{'info'}->{'seealso_duplicate'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

 [index ]
* Menu:

* awk, POSIX and:                        Top.                   (line 3)
* awk, POSIX and <1>:                    Top.                   (line 3)



Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'seealso_duplicate'} = '* Menu:

* awk, POSIX and:                        Top.                   (line 0)
* awk, POSIX and <1>:                    Top.                   (line 0)

';


$result_converted{'html_text'}->{'seealso_duplicate'} = '<h1 class="node" id="Top">Top</h1>

<a class="index-entry-id" id="index-awk"></a>
<a class="index-entry-id" id="index-awk-1"></a>

<div class="printindex cp-printindex">
<table class="cp-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_cp_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-awk"><code class="command">awk</code>, POSIX and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-awk-1"><code class="command">awk</code>, POSIX and</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
</div>
';


$result_converted{'latex'}->{'seealso_duplicate'} = '\\documentclass{book}
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
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}
\\usepackage[utf8]{inputenc}

\\makeatletter
\\newcommand{\\GNUTexinfosettitle}{No Title}%

\\makeindex[name=cp]%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
\\newenvironment{GNUTexinfopreformatted}{%
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing\\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{GNUTexinfoindented}{\\begin{list}{}{}\\item\\relax}{\\end{list}}
% command that does nothing used to help with substitutions in commands
\\newcommand{\\GNUTexinfoplaceholder}[1]{}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% avoid pagebreak and headings setting for a sectioning command
\\newcommand{\\GNUTexinfonopagebreakheading}[2]{{\\let\\clearpage\\relax \\let\\cleardoublepage\\relax \\let\\thispagestyle\\GNUTexinfoplaceholder #1{#2}}}

\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%

\\begin{document}
\\label{anchor:Top}%

(`Top\' node ignored)
\\end{document}
';

1;
