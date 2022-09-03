use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_index_entry'} = {
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
        }
      ],
      'extra' => {
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
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'node'
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
          'cmdname' => 'deffn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [],
                      'extra' => {
                        'def_role' => 'name',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn'
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
                'command_argument' => 'deffn',
                'spaces_before_argument' => ' ',
                'text_arg' => 'deffn'
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
            'end_command' => {},
            'spaces_before_argument' => ' '
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
                  'parent' => {},
                  'text' => 'fn'
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
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
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
            'normalized' => 'node'
          }
        ],
        'normalized' => 'node',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'empty_index_entry'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[0];
$result_trees{'empty_index_entry'}{'contents'}[0]{'parent'} = $result_trees{'empty_index_entry'};
$result_trees{'empty_index_entry'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[1]{'args'}[0];
$result_trees{'empty_index_entry'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[1];
$result_trees{'empty_index_entry'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[1];
$result_trees{'empty_index_entry'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'empty_index_entry'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_index_entry'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'empty_index_entry'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_index_entry'}{'contents'}[1]{'parent'} = $result_trees{'empty_index_entry'};
$result_trees{'empty_index_entry'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'args'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[3];
$result_trees{'empty_index_entry'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'empty_index_entry'}{'contents'}[2];
$result_trees{'empty_index_entry'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'empty_index_entry'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'empty_index_entry'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'empty_index_entry'}{'contents'}[2]{'parent'} = $result_trees{'empty_index_entry'};

$result_texis{'empty_index_entry'} = '@node Top

@node node

@deffn {} { }
@end deffn

@printindex fn
';


$result_texts{'empty_index_entry'} = '

: 

';

$result_nodes{'empty_index_entry'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'normalized' => 'node'
      },
      'structure' => {
        'node_prev' => {}
      }
    }
  }
};
$result_nodes{'empty_index_entry'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'empty_index_entry'};

$result_menus{'empty_index_entry'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'empty_index_entry'} = [
  {
    'error_line' => 'warning: missing name for @deffn
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'missing name for @deffn',
    'type' => 'warning'
  }
];


$result_floats{'empty_index_entry'} = {};



$result_converted{'info'}->{'empty_index_entry'} = 'This is , produced from .


File: ,  Node: Top,  Next: node,  Up: (dir)


File: ,  Node: node,  Prev: Top

 -- :



Tag Table:
Node: Top27
Node: node74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'empty_index_entry'} = ' -- :

';


$result_converted{'html_text'}->{'empty_index_entry'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
 &nbsp; [<a href="#node" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node">Top</h1>

<hr>
<a class="node-id" id="node"></a><div class="nav-panel">
<p>
 &nbsp; [<a href="#node" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node">node</h4>

<dl class="first-deffn">
<dt class="deffn"><span class="category-def">: </span><strong class="def-name"></strong></dt>
</dl>

';


$result_converted{'latex'}->{'empty_index_entry'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage[T1]{fontenc}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{tabularx}
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
\\label{anchor:node}%


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{}& []
\\end{tabularx}


\\end{document}
';

1;
