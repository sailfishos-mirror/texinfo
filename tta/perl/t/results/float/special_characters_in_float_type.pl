use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'special_characters_in_float_type'} = {
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
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'top'
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 2
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
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chap'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 4
      }
    },
    {
      'cmdname' => 'chapter',
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
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'A < " `` ` \' \' \\aaa '
                    },
                    {
                      'cmdname' => '.'
                    },
                    {
                      'text' => ' --- '
                    },
                    {
                      'cmdname' => 'var',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in var'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 7
                      }
                    }
                  ],
                  'type' => 'block_line_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'L < " `` ` \' \' \\aaa '
                    },
                    {
                      'cmdname' => '.'
                    },
                    {
                      'text' => ' --- '
                    },
                    {
                      'cmdname' => 'var',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in var'
                            }
                          ],
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
                    },
                    'spaces_before_argument' => {
                      'text' => ' '
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
                  'text' => 'F
'
                }
              ],
              'type' => 'paragraph'
            },
            {
              'cmdname' => 'caption',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'float A < " `` ` \' \' \\aaa '
                        },
                        {
                          'cmdname' => '.'
                        },
                        {
                          'text' => ' --- '
                        },
                        {
                          'cmdname' => 'var',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'in var'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 9
                          }
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {
                'float' => {}
              },
              'source_info' => {
                'line_nr' => 9
              }
            },
            {
              'text' => '
',
              'type' => 'spaces_after_close_brace'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'float'
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
                'text_arg' => 'float'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 10
              }
            }
          ],
          'extra' => {
            'caption' => {},
            'float_section' => {},
            'float_type' => 'A < " `` ` \' \' \\aaa . --- in var',
            'is_target' => 1,
            'normalized' => 'L-_003c-_0022-_0060_0060-_0060-_0027-_0027-_005caaa-_002e-_002d_002d_002d-in-var'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 7
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'listoffloats',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'A < " `` ` \' \' \\aaa '
                },
                {
                  'cmdname' => '.'
                },
                {
                  'text' => ' --- '
                },
                {
                  'cmdname' => 'var',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in var'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 12
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
            'float_type' => 'A < " `` ` \' \' \\aaa . --- in var'
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
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 5
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'special_characters_in_float_type'}{'contents'}[4]{'contents'}[2]{'contents'}[2]{'extra'}{'float'} = $result_trees{'special_characters_in_float_type'}{'contents'}[4]{'contents'}[2];
$result_trees{'special_characters_in_float_type'}{'contents'}[4]{'contents'}[2]{'extra'}{'caption'} = $result_trees{'special_characters_in_float_type'}{'contents'}[4]{'contents'}[2]{'contents'}[2];
$result_trees{'special_characters_in_float_type'}{'contents'}[4]{'contents'}[2]{'extra'}{'float_section'} = $result_trees{'special_characters_in_float_type'}{'contents'}[4];

$result_texis{'special_characters_in_float_type'} = '@node Top
@top top

@node chap
@chapter chap

@float A < " `` ` \' \' \\aaa @. --- @var{in var}, L < " `` ` \' \' \\aaa @. --- @var{in var}
F
@caption{float A < " `` ` \' \' \\aaa @. --- @var{in var}}
@end float

@listoffloats A < " `` ` \' \' \\aaa @. --- @var{in var}
';


$result_texts{'special_characters_in_float_type'} = 'top
***

1 chap
******

A < " " ` \' \' \\aaa . -- in var, L < " " ` \' \' \\aaa . -- in var
F

';

$result_sectioning{'special_characters_in_float_type'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'special_characters_in_float_type'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'special_characters_in_float_type'}{'extra'}{'section_childs'}[0];
$result_sectioning{'special_characters_in_float_type'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'special_characters_in_float_type'}{'extra'}{'section_childs'}[0];
$result_sectioning{'special_characters_in_float_type'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'special_characters_in_float_type'}{'extra'}{'section_childs'}[0];
$result_sectioning{'special_characters_in_float_type'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'special_characters_in_float_type'};

$result_nodes{'special_characters_in_float_type'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
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
$result_nodes{'special_characters_in_float_type'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'special_characters_in_float_type'}[0];
$result_nodes{'special_characters_in_float_type'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'special_characters_in_float_type'}[0];
$result_nodes{'special_characters_in_float_type'}[1] = $result_nodes{'special_characters_in_float_type'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'special_characters_in_float_type'} = [
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

$result_errors{'special_characters_in_float_type'} = [];


$result_floats{'special_characters_in_float_type'} = {
  'A < " `` ` \' \' \\aaa . --- in var' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_number' => '1.1',
        'float_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'section_number' => '1'
          }
        },
        'float_type' => 'A < " `` ` \' \' \\aaa . --- in var',
        'normalized' => 'L-_003c-_0022-_0060_0060-_0060-_0027-_0027-_005caaa-_002e-_002d_002d_002d-in-var'
      }
    }
  ]
};
$result_floats{'special_characters_in_float_type'}{'A < " `` ` \' \' \\aaa . --- in var'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'special_characters_in_float_type'}{'A < " `` ` \' \' \\aaa . --- in var'}[0];



$result_converted{'plaintext'}->{'special_characters_in_float_type'} = 'top
***

1 chap
******

F

A < " " \' \' \' \\aaa . -- IN VAR 1.1: float A < " " \' \' \' \\aaa .  -- IN
VAR

* Menu:

* A < " " \' \' \' \\aaa . -- IN VAR 1.1: L < " `` ` \' \' \\aaa . --- IN VAR.
                                         float A < " " \' \' \' \\aaa .  --
                                         IN VAR

';


$result_converted{'info'}->{'special_characters_in_float_type'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)

top
***

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 chap
******

F

A < " " \' \' \' \\aaa . -- IN VAR 1.1: float A < " " \' \' \' \\aaa .  -- IN
VAR

* Menu:

* A < " " \' \' \' \\aaa . -- IN VAR 1.1: L < " `` ` \' \' \\aaa . --- IN VAR.
                                         float A < " " \' \' \' \\aaa .  --
                                         IN VAR


Tag Table:
Node: Top27
Node: chap102
Ref: L < " `` ` \' \' \\aaa . --- IN VAR162

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'special_characters_in_float_type'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chap" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chap-1"><span>1 chap<a class="copiable-link" href="#chap-1"> &para;</a></span></h2>

<div class="float" id="L-_003c-_0022-_0060_0060-_0060-_0027-_0027-_005caaa-_002e-_002d_002d_002d-in-var">
<p>F
</p><div class="caption"><p><strong class="strong">A &lt; &quot; &ldquo; &lsquo; &rsquo; &rsquo; \\aaa . &mdash; <var class="var">in var</var> 1.1: </strong>float A &lt; &quot; &ldquo; &lsquo; &rsquo; &rsquo; \\aaa . &mdash; <var class="var">in var</var></p></div></div>
<dl class="listoffloats">
<dt><a href="#L-_003c-_0022-_0060_0060-_0060-_0027-_0027-_005caaa-_002e-_002d_002d_002d-in-var">A &lt; &quot; &ldquo; &lsquo; &rsquo; &rsquo; \\aaa . &mdash; <var class="var">in var</var> 1.1</a></dt><dd class="caption-in-listoffloats"><p>float A &lt; &quot; &ldquo; &lsquo; &rsquo; &rsquo; \\aaa . &mdash; <var class="var">in var</var></p></dd>
</dl>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'special_characters_in_float_type'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chap</sectiontitle>

<float identifier="L-_003c-_0022-_0060_0060-_0060-_0027-_0027-_005caaa-_002e-_002d_002d_002d-in-var" type="A &lt; &quot; `` ` \' \' \\\\aaa . --- in var" number="1.1" spaces=" " endspaces=" "><floattype>A &lt; &quot; `` ` \' \' \\aaa &eosperiod; --- <var>in var</var></floattype><floatname spaces=" ">L &lt; &quot; &textldquo; &textlsquo; &textrsquo; &textrsquo; \\aaa &eosperiod; &textmdash; <var>in var</var></floatname>
<para>F
</para><caption><para>float A &lt; &quot; &textldquo; &textlsquo; &textrsquo; &textrsquo; \\aaa &eosperiod; &textmdash; <var>in var</var></para></caption>
</float>

<listoffloats type="A &lt; &quot; `` ` \' \' \\\\aaa . --- in var" spaces=" ">A &lt; &quot; &textldquo; &textlsquo; &textrsquo; &textrsquo; \\aaa &eosperiod; &textmdash; <var>in var</var></listoffloats>
</chapter>
';


$result_converted{'latex'}->{'special_characters_in_float_type'} = '\\documentclass{book}
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

% new float for type `A < " `` ` \' \' \\aaa . --- in var\'
\\newfloat{TexinfoFloatAaaainvar}{htb}{tfl}[chapter]
\\floatname{TexinfoFloatAaaainvar}{}
% style command for var in \'cmd_text\' formatting context
\\newcommand\\Texinfocommandstyletextvar[1]{{\\normalfont{}\\textsl{#1}}}%

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

\\begin{document}
\\label{anchor:Top}%
\\chapter{{chap}}
\\label{anchor:chap}%

\\begin{TexinfoFloatAaaainvar}
F
\\caption{float A < " `` ` \' \' \\textbackslash{}aaa \\@. --- \\Texinfocommandstyletextvar{in var}}
\\label{anchor:L-_003c-_0022-_0060_0060-_0060-_0027-_0027-_005caaa-_002e-_002d_002d_002d-in-var}%
\\end{TexinfoFloatAaaainvar}

\\listof{TexinfoFloatAaaainvar}{}
\\end{document}
';

1;
