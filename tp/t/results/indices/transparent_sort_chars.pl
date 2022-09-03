use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'transparent_sort_chars'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'txiindexhyphenignore',
                  'type' => 'misc_arg'
                },
                {
                  'parent' => {},
                  'text' => '',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'set',
              'extra' => {
                'arg_line' => ' txiindexhyphenignore
',
                'misc_args' => [
                  'txiindexhyphenignore',
                  ''
                ]
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
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
      'contents' => [],
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
        'line_nr' => 3,
        'macro' => ''
      }
    },
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
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
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
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '--version'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ', for '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'install-info'
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
                    'line_nr' => 8,
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
              'index_ignore_chars' => {
                '-' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Source file format'
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
              'index_ignore_chars' => {
                '-' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 2
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Semantic markup'
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
              'index_ignore_chars' => {
                '-' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 3
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
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
            'line_nr' => 12,
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
        'line_nr' => 6,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'transparent_sort_chars'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[0]{'contents'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[0]{'contents'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'};
$result_trees{'transparent_sort_chars'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[1]{'args'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[1];
$result_trees{'transparent_sort_chars'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'transparent_sort_chars'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'transparent_sort_chars'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[1]{'parent'} = $result_trees{'transparent_sort_chars'};
$result_trees{'transparent_sort_chars'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[2];
$result_trees{'transparent_sort_chars'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[2];
$result_trees{'transparent_sort_chars'}{'contents'}[2]{'parent'} = $result_trees{'transparent_sort_chars'};
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'args'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'transparent_sort_chars'}{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'transparent_sort_chars'}{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'transparent_sort_chars'}{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[5]{'args'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[5];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'transparent_sort_chars'}{'contents'}[3];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'transparent_sort_chars'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'transparent_sort_chars'}{'contents'}[3]{'parent'} = $result_trees{'transparent_sort_chars'};

$result_texis{'transparent_sort_chars'} = '@set txiindexhyphenignore

@node Top
@top

@node node

@cindex @code{--version}, for @command{install-info}
@cindex Source file format
@cindex Semantic markup

@printindex cp
';


$result_texts{'transparent_sort_chars'} = '



';

$result_sectioning{'transparent_sort_chars'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'transparent_sort_chars'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'transparent_sort_chars'};

$result_nodes{'transparent_sort_chars'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
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
$result_nodes{'transparent_sort_chars'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'transparent_sort_chars'};

$result_menus{'transparent_sort_chars'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'transparent_sort_chars'} = [];


$result_floats{'transparent_sort_chars'} = {};


$result_indices_sort_strings{'transparent_sort_chars'} = {
  'cp' => [
    'Semantic markup',
    'Source file format',
    'version, for installinfo'
  ]
};



$result_converted{'info'}->{'transparent_sort_chars'} = 'This is , produced from .


File: ,  Node: Top,  Next: node,  Up: (dir)


File: ,  Node: node,  Prev: Top

 [index ]
* Menu:

* Semantic markup:                       node.                  (line 3)
* Source file format:                    node.                  (line 3)
* --version, for install-info:           node.                  (line 3)



Tag Table:
Node: Top27
Node: node74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'transparent_sort_chars'} = '* Menu:

* Semantic markup:                       node.                  (line 0)
* Source file format:                    node.                  (line 0)
* --version, for install-info:           node.                  (line 0)

';


$result_converted{'html_text'}->{'transparent_sort_chars'} = '
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; [<a href="#node" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<hr>
<a class="node-id" id="node"></a><div class="nav-panel">
<p>
 &nbsp; [<a href="#node" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node">node</h4>

<a class="index-entry-id" id="index-_002d_002dversion_002c-for-install_002dinfo"></a>
<a class="index-entry-id" id="index-Source-file-format"></a>
<a class="index-entry-id" id="index-Semantic-markup"></a>

<div class="printindex cp-printindex">
<table class="cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#t_i_cp_letter-V"><b>V</b></a>
 &nbsp; 
</td></tr></table>
<table class="cp-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_cp_letter-S">S</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Semantic-markup">Semantic markup</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#node">node</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Source-file-format">Source file format</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#node">node</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_cp_letter-V">V</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-_002d_002dversion_002c-for-install_002dinfo"><code class="code">--version</code>, for <code class="command">install-info</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#node">node</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table class="cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#t_i_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#t_i_cp_letter-V"><b>V</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
';


$result_converted{'latex'}->{'transparent_sort_chars'} = '\\documentclass{book}
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
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing
  \\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{GNUTexinfoindented}
  {\\begin{list}{}{}
  \\item\\relax}
  {\\end{list}}
% command that does nothing used to help with substitutions in commands
\\newcommand{\\GNUTexinfoplaceholder}[1]{}

% plain page style for part and chapter, which call \\thispagestyle{plain}
\\renewpagestyle{plain}{\\sethead[\\thepage{}][][]
                             {}{}{\\thepage{}}}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% avoid pagebreak and headings setting for a sectionning command
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

\\index[cp]{version, for installinfo@\\texttt{{-}{-}version}, for \\texttt{install-info}}%
\\index[cp]{Source file format@Source file format}%
\\index[cp]{Semantic markup@Semantic markup}%

\\printindex[cp]
\\end{document}
';

1;
