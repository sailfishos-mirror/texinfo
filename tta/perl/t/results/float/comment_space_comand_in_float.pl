use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_space_comand_in_float'} = {
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
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Text '
                    },
                    {
                      'cmdname' => ' '
                    }
                  ],
                  'type' => 'block_line_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'label '
                    },
                    {
                      'cmdname' => ' '
                    }
                  ],
                  'info' => {
                    'comment_at_end' => {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' float
',
                          'type' => 'rawline_arg'
                        }
                      ]
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
                  'text' => 'Float
'
                }
              ],
              'type' => 'paragraph'
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
                'line_nr' => 6
              }
            }
          ],
          'extra' => {
            'float_type' => 'Text  ',
            'is_target' => 1,
            'normalized' => 'label-'
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
                  'text' => 'Text '
                },
                {
                  'cmdname' => ' '
                }
              ],
              'info' => {
                'comment_at_end' => {
                  'cmdname' => 'c',
                  'contents' => [
                    {
                      'text' => ' listoffloats
',
                      'type' => 'rawline_arg'
                    }
                  ]
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'float_type' => 'Text  '
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
        'is_target' => 1,
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

$result_texis{'comment_space_comand_in_float'} = '@node Top
@node chap

@float Text @ , label @ @c float
Float
@end float

@listoffloats Text @ @c listoffloats
';


$result_texts{'comment_space_comand_in_float'} = '
Text  , label  
Float

';

$result_nodes{'comment_space_comand_in_float'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
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
$result_nodes{'comment_space_comand_in_float'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'comment_space_comand_in_float'}[0];
$result_nodes{'comment_space_comand_in_float'}[1] = $result_nodes{'comment_space_comand_in_float'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'comment_space_comand_in_float'} = [
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

$result_errors{'comment_space_comand_in_float'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 2,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'comment_space_comand_in_float'} = {
  'Text  ' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'float_number' => '1',
        'float_type' => 'Text  ',
        'normalized' => 'label-'
      }
    }
  ]
};



$result_converted{'plaintext'}->{'comment_space_comand_in_float'} = 'Float

Text   1

* Menu:

* Text   1: label  .                     

';


$result_converted{'info'}->{'comment_space_comand_in_float'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

Float

Text   1

* Menu:

* Text   1: label  .                     


Tag Table:
Node: Top27
Node: chap74
Ref: label  109

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'comment_space_comand_in_float'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
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
<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<div class="float" id="label-">
<p>Float
</p><div class="type-number-float"><p><strong class="strong">Text &nbsp; 1</strong></p></div></div>
<dl class="listoffloats">
<dt><a href="#label-">Text &nbsp; 1</a></dt><dd></dd>
</dl>



</body>
</html>
';

$result_converted_errors{'html'}->{'comment_space_comand_in_float'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'comment_space_comand_in_float'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<float identifier="label-" type="Text  " number="1" spaces=" " endspaces=" "><floattype>Text <spacecmd type="spc"/></floattype><floatname spaces=" ">label <spacecmd type="spc"/></floatname><!-- c float -->
<para>Float
</para></float>

<listoffloats type="Text  " spaces=" ">Text <spacecmd type="spc"/></listoffloats><!-- c listoffloats -->
';


$result_converted{'latex'}->{'comment_space_comand_in_float'} = '\\documentclass{book}
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

% new float for type `Text  \'
\\newfloat{TexinfoFloatText}{htb}{tfl}[chapter]
\\floatname{TexinfoFloatText}{}
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
\\label{anchor:chap}%

\\begin{TexinfoFloatText}
Float
\\label{anchor:label-}%
\\end{TexinfoFloatText}

\\listof{TexinfoFloatText}{}
\\end{document}
';

1;
