use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'setfilename'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'setfilename',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'file_comment'
                    }
                  ],
                  'info' => {
                    'comment_at_end' => {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' comment
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
                'text_arg' => 'file_comment'
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
              'cmdname' => 'setfilename',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'file_and_spaces'
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
                'text_arg' => 'file_and_spaces'
              },
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
              'cmdname' => 'setfilename',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'file_space_comment'
                    }
                  ],
                  'info' => {
                    'comment_at_end' => {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' comment
',
                          'type' => 'rawline_arg'
                        }
                      ]
                    },
                    'spaces_after_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'file_space_comment'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'cmdname' => 'setfilename',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => ' '
                    },
                    {
                      'cmdname' => 'verb',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => ' name ',
                              'type' => 'raw'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'info' => {
                        'delimiter' => ':'
                      },
                      'source_info' => {
                        'line_nr' => 4
                      }
                    },
                    {
                      'cmdname' => ' '
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
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'setfilename'} = '@setfilename file_comment@c comment
@setfilename file_and_spaces   
@setfilename file_space_comment @c comment
@setfilename @ @verb{: name :}@ 

';


$result_texts{'setfilename'} = '
';

$result_errors{'setfilename'} = [
  {
    'error_line' => 'warning: multiple @setfilename
',
    'line_nr' => 2,
    'text' => 'multiple @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @setfilename
',
    'line_nr' => 3,
    'text' => 'multiple @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @setfilename
',
    'line_nr' => 4,
    'text' => 'multiple @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear in @setfilename
',
    'line_nr' => 4,
    'text' => '@verb should not appear in @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @setfilename: @ @verb{: name :}@
',
    'line_nr' => 4,
    'text' => 'bad argument to @setfilename: @ @verb{: name :}@',
    'type' => 'error'
  }
];


$result_floats{'setfilename'} = {};



$result_converted{'plaintext'}->{'setfilename'} = '';


$result_converted{'html_text'}->{'setfilename'} = '
';


$result_converted{'latex'}->{'setfilename'} = '\\documentclass{book}
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
\\end{document}
';


$result_converted{'docbook'}->{'setfilename'} = '
';


$result_converted{'info'}->{'setfilename'} = 'This is file_comment, produced from .


Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'setfilename'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'setfilename'} = '<setfilename file="file_comment" spaces=" ">file_comment</setfilename><!-- c comment -->
<setfilename file="file_and_spaces" spaces=" ">file_and_spaces   </setfilename>
<setfilename file="file_space_comment" spaces=" ">file_space_comment </setfilename><!-- c comment -->
<setfilename spaces=" "><spacecmd type="spc"/><verb delimiter=":"> name </verb><spacecmd type="spc"/></setfilename>

';

1;
