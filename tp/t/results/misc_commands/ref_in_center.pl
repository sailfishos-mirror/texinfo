use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ref_in_center'} = {
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
              'text' => 'top'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
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
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap'
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
            'normalized' => 'chap'
          }
        ],
        'normalized' => 'chap',
        'spaces_before_argument' => ' '
      },
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
              'text' => 'Chapter'
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
      'cmdname' => 'chapter',
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
                          'text' => 'Top'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'ref',
                  'contents' => [],
                  'extra' => {
                    'label' => {},
                    'node_argument' => {
                      'node_content' => [
                        {}
                      ],
                      'normalized' => 'Top'
                    }
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
            'line_nr' => 7,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Top'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [],
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'title
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'ref',
                  'contents' => [],
                  'extra' => {},
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  }
                }
              ],
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
            'line_nr' => 9,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'very long
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ref_in_center'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[0];
$result_trees{'ref_in_center'}{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'};
$result_trees{'ref_in_center'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[1]{'args'}[0];
$result_trees{'ref_in_center'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[1];
$result_trees{'ref_in_center'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'ref_in_center'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_center'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ref_in_center'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_center'}{'contents'}[1]{'parent'} = $result_trees{'ref_in_center'};
$result_trees{'ref_in_center'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[2]{'args'}[0];
$result_trees{'ref_in_center'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[2];
$result_trees{'ref_in_center'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[2];
$result_trees{'ref_in_center'}{'contents'}[2]{'parent'} = $result_trees{'ref_in_center'};
$result_trees{'ref_in_center'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[3]{'args'}[0];
$result_trees{'ref_in_center'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[3];
$result_trees{'ref_in_center'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'ref_in_center'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_center'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ref_in_center'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_center'}{'contents'}[3]{'parent'} = $result_trees{'ref_in_center'};
$result_trees{'ref_in_center'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'args'}[0];
$result_trees{'ref_in_center'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'extra'}{'label'} = $result_trees{'ref_in_center'}{'contents'}[1];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[2];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[4];
$result_trees{'ref_in_center'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'ref_in_center'}{'contents'}[4];
$result_trees{'ref_in_center'}{'contents'}[4]{'parent'} = $result_trees{'ref_in_center'};

$result_texis{'ref_in_center'} = '@node Top
@top top

@node chap
@chapter Chapter

@center @ref{Top}

@center @ref{Top, ,title
}very long
';


$result_texts{'ref_in_center'} = 'top
***

1 Chapter
*********

Top

Top
very long
';

$result_sectioning{'ref_in_center'} = {
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
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'ref_in_center'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'ref_in_center'}{'structure'}{'section_childs'}[0];
$result_sectioning{'ref_in_center'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'ref_in_center'}{'structure'}{'section_childs'}[0];
$result_sectioning{'ref_in_center'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'ref_in_center'}{'structure'}{'section_childs'}[0];
$result_sectioning{'ref_in_center'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'ref_in_center'};

$result_nodes{'ref_in_center'} = {
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
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'ref_in_center'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'ref_in_center'};
$result_nodes{'ref_in_center'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'ref_in_center'};

$result_menus{'ref_in_center'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'ref_in_center'} = [
  {
    'error_line' => '@ref missing closing brace
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => '@ref missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'ref_in_center'} = {};



$result_converted{'plaintext'}->{'ref_in_center'} = 'top
***

1 Chapter
*********

                              *note Top::

                              *note title
                                : Top.
   very long
';


$result_converted{'html_text'}->{'ref_in_center'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter">1 Chapter</h2>

<div class="center"><a class="ref" href="#Top">top</a>
</div>
<div class="center">&lsquo;title
&rsquo;
</div><p>very long
</p></div>
</div>
';


$result_converted{'latex'}->{'ref_in_center'} = '\\documentclass{book}
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
\\chapter{{Chapter}}
\\label{anchor:chap}%

\\begin{center}
\\hyperref[anchor:Top]{\\chaptername~\\ref*{anchor:Top} [Top], page~\\pageref*{anchor:Top}}
\\end{center}

\\begin{center}
title

\\end{center}
very long
\\end{document}
';


$result_converted{'docbook'}->{'ref_in_center'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<simpara role="center"><link linkend="Top">Top</link></simpara>

<simpara role="center"><link>title
</link></simpara>
<para>very long
</para></chapter>
';

1;
