use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_string_index_entry'} = {
  'contents' => [
    {
      'contents' => [
        {
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'chap'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'findex',
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'w',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 4
                  }
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'fn',
              1
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 4
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'ftable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'code',
                      'source_info' => {
                        'line_nr' => 6
                      }
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'w',
                              'contents' => [
                                {
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 7
                              }
                            }
                          ],
                          'info' => {
                            'spaces_after_argument' => {
                              'text' => '
'
                            }
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'extra' => {
                        'element_node' => {},
                        'index_entry' => [
                          'fn',
                          2
                        ]
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 7
                      }
                    }
                  ],
                  'type' => 'table_term'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ftable'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'ftable'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 8
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 6
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'defun',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'Function'
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'info' => {
                        'inserted' => 1
                      },
                      'type' => 'def_category'
                    },
                    {
                      'info' => {
                        'inserted' => 1
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'w',
                              'contents' => [
                                {
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 10
                              }
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 10
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_name'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'source_info' => {
                            'line_nr' => 10
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'source_info' => {
                            'line_nr' => 10
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'defun',
                'def_index_element' => {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'w',
                          'contents' => [
                            {
                              'type' => 'brace_container'
                            }
                          ]
                        }
                      ],
                      'type' => 'bracketed_arg'
                    }
                  ],
                  'type' => 'def_name'
                },
                'element_node' => {},
                'index_entry' => [
                  'fn',
                  3
                ],
                'original_def_cmdname' => 'defun'
              },
              'source_info' => {
                'line_nr' => 10
              },
              'type' => 'def_line'
            },
            {
              'cmdname' => 'defunx',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'Function'
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'info' => {
                        'inserted' => 1
                      },
                      'type' => 'def_category'
                    },
                    {
                      'info' => {
                        'inserted' => 1
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'w',
                              'contents' => [
                                {
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 11
                              }
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 11
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_name'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'source_info' => {
                            'line_nr' => 11
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'source_info' => {
                            'line_nr' => 11
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'defun',
                'def_index_element' => {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'w',
                          'contents' => [
                            {
                              'type' => 'brace_container'
                            }
                          ]
                        }
                      ],
                      'type' => 'bracketed_arg'
                    }
                  ],
                  'type' => 'def_name'
                },
                'element_node' => {},
                'index_entry' => [
                  'fn',
                  4
                ],
                'original_def_cmdname' => 'defunx'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 11
              }
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'defun'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'defun'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 12
              }
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 10
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'fn'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'misc_args' => [
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 14
          }
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
        'normalized' => 'chap'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 2
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[4]{'extra'}{'command_as_argument'} = $result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];
$result_trees{'empty_string_index_entry'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'empty_string_index_entry'}{'contents'}[2];

$result_texis{'empty_string_index_entry'} = '@node Top
@node chap

@findex @w{}

@ftable @code
@item @w{}
@end ftable

@defun {@w{}} {} {}
@defunx {@w{}} {} {}
@end defun

@printindex fn
';


$result_texts{'empty_string_index_entry'} = '



Function:   
Function:   

';

$result_nodes{'empty_string_index_entry'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'empty_string_index_entry'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'empty_string_index_entry'}[0];
$result_nodes{'empty_string_index_entry'}[1] = $result_nodes{'empty_string_index_entry'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'empty_string_index_entry'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'empty_string_index_entry'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 2,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @findex
',
    'line_nr' => 4,
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @item
',
    'line_nr' => 7,
    'text' => 'empty index key in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @defun
',
    'line_nr' => 10,
    'text' => 'empty index key in @defun',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @defunx
',
    'line_nr' => 11,
    'text' => 'empty index key in @defunx',
    'type' => 'warning'
  }
];


$result_floats{'empty_string_index_entry'} = {};


$result_indices_sort_strings{'empty_string_index_entry'} = {};



$result_converted{'info'}->{'empty_string_index_entry'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

‘’

 -- Function: 
 -- Function: 


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'empty_string_index_entry'} = '‘’

 -- Function: 
 -- Function: 

';


$result_converted{'html_text'}->{'empty_string_index_entry'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<a class="index-entry-id" id="index-"></a>

<dl class="ftable">
<dt><a id="index--1"></a><span><code class="code"><!-- /@w --></code><a class="copiable-link" href="#index--1"> &para;</a></span></dt>
</dl>

<dl class="first-deffn first-defun-alias-first-deffn def-block">
<dt class="deffn defun-alias-deffn def-line" id="index--2"><span class="category-def">Function: </span><span><strong class="def-name"><!-- /@w --></strong><a class="copiable-link" href="#index--2"> &para;</a></span></dt>
<dt class="deffnx defunx-alias-deffnx def-cmd-deffn def-line" id="index--3"><span class="category-def">Function: </span><span><strong class="def-name"><!-- /@w --></strong><a class="copiable-link" href="#index--3"> &para;</a></span></dt>
</dl>

';


$result_converted{'xml'}->{'empty_string_index_entry'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<findex index="fn" spaces=" "><indexterm index="fn" number="1"><w></w></indexterm></findex>

<ftable commandarg="code" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="code"><indexterm index="fn" number="2"><w></w></indexterm><w></w></itemformat></item>
</tableterm></tableentry></ftable>

<defun spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="3"><w></w></indexterm><defcategory automatic="on">Function</defcategory> <deffunction bracketed="on"><w></w></deffunction> <defparam bracketed="on"></defparam> <defparam bracketed="on"></defparam></definitionterm>
<defunx spaces=" "><definitionterm><indexterm index="fn" number="4"><w></w></indexterm><defcategory automatic="on">Function</defcategory> <deffunction bracketed="on"><w></w></deffunction> <defparam bracketed="on"></defparam> <defparam bracketed="on"></defparam></definitionterm></defunx>
</defun>

<printindex spaces=" " value="fn" line="fn"></printindex>
';


$result_converted{'latex'}->{'empty_string_index_entry'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{imakeidx}
\\usepackage{embrac}
\\usepackage{expl3}
\\usepackage{tabularx}
\\usepackage{enumitem}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}

\\makeatletter
\\newcommand{\\Texinfosettitle}{No Title}%

% no index headers
\\indexsetup{level=\\relax,toclevel=section}%
\\makeindex[name=fn,title=]%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
\\newenvironment{Texinfopreformatted}{%
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing\\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{Texinfoindented}{\\begin{list}{}{}\\item\\relax}{\\end{list}}

% set defaults for lists that match Texinfo TeX formatting
\\setlist[description]{style=nextline, font=\\normalfont}

% used for substitutions in commands
\\newcommand{\\Texinfoplaceholder}[1]{}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% braces are upright in italic and slanted only in @def*
% so it is turned off here, and turned on @def* lines
\\EmbracOff{}%

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

\\begin{document}
\\label{anchor:Top}%
\\label{anchor:chap}%

\\index[fn]{@\\texttt{\\hbox{}}}%

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{\\hbox{}}
\\index[fn]{@\\texttt{\\hbox{}}}%
}}]
\\end{description}


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill \\hangindent=2em \\hyphenpenalty=10000
\\texttt{\\hbox{} \\EmbracOn{}\\textnormal{\\textsl{ }}\\EmbracOff{}}& [Function]
\\end{tabularx}

\\index[fn]{@\\texttt{\\hbox{}}}%

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill \\hangindent=2em \\hyphenpenalty=10000
\\texttt{\\hbox{} \\EmbracOn{}\\textnormal{\\textsl{ }}\\EmbracOff{}}& [Function]
\\end{tabularx}

\\index[fn]{@\\texttt{\\hbox{}}}%

\\printindex[fn]
\\end{document}
';

1;
