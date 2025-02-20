use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'footnote_in_center'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'center',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Centered text with a footnote'
                },
                {
                  'cmdname' => 'footnote',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'This footnote
'
                            },
                            {
                              'text' => 'shows an important feature of the centered text.
'
                            }
                          ],
                          'type' => 'paragraph'
                        },
                        {
                          'text' => '
',
                          'type' => 'empty_line'
                        },
                        {
                          'cmdname' => 'example',
                          'contents' => [
                            {
                              'contents' => [
                                {
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
                              'cmdname' => 'table',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'cmdname' => 'asis',
                                          'source_info' => {
                                            'line_nr' => 5
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
                                                  'text' => 'item'
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
                                            'line_nr' => 6
                                          }
                                        }
                                      ],
                                      'type' => 'table_term'
                                    },
                                    {
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => 'line
'
                                            }
                                          ],
                                          'type' => 'preformatted'
                                        }
                                      ],
                                      'type' => 'table_definition'
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
                                          'text' => 'table'
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
                                    'text_arg' => 'table'
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
                                'line_nr' => 5
                              }
                            },
                            {
                              'cmdname' => 'end',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'example'
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
                                'text_arg' => 'example'
                              },
                              'info' => {
                                'spaces_before_argument' => {
                                  'text' => ' '
                                }
                              },
                              'source_info' => {
                                'line_nr' => 9
                              }
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 4
                          }
                        }
                      ],
                      'type' => 'brace_command_context'
                    }
                  ],
                  'extra' => {},
                  'source_info' => {
                    'line_nr' => 1
                  }
                },
                {
                  'text' => ' and text after the footnote.'
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
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'footnote_in_center'} = '@center Centered text with a footnote@footnote{This footnote
shows an important feature of the centered text.

@example
@table @asis
@item item
line
@end table 
@end example
} and text after the footnote.
';


$result_texts{'footnote_in_center'} = 'Centered text with a footnote and text after the footnote.
';

$result_errors{'footnote_in_center'} = [];


$result_floats{'footnote_in_center'} = {};



$result_converted{'plaintext'}->{'footnote_in_center'} = '     Centered text with a footnote(1) and text after the footnote.

   ---------- Footnotes ----------

   (1) This footnote shows an important feature of the centered text.

     item
          line

';


$result_converted{'html_text'}->{'footnote_in_center'} = '<div class="center">Centered text with a footnote<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a> and text after the footnote.
</div><div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>This footnote
shows an important feature of the centered text.
</p>
<div class="example">
<dl class="table">
<dt><code class="table-term-preformatted-code">item</code></dt>
<dd><pre class="example-preformatted">line
</pre></dd>
</dl>
</div>
</div>
';


$result_converted{'latex'}->{'footnote_in_center'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{enumitem}
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


% set defaults for lists that match Texinfo TeX formatting
\\setlist[description]{style=nextline, font=\\normalfont}

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

\\begin{center}
Centered text with a footnote\\footnote{This footnote
shows an important feature of the centered text.

\\begin{Texinfoindented}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
item}}]
\\begin{Texinfopreformatted}%
\\ttfamily line
\\end{Texinfopreformatted}
\\end{description}
\\end{Texinfoindented}
} and text after the footnote.
\\end{center}
\\end{document}
';


$result_converted{'docbook'}->{'footnote_in_center'} = '<simpara role="center">Centered text with a footnote<footnote><para>This footnote
shows an important feature of the centered text.
</para>
<variablelist><varlistentry><term>item
</term><listitem><screen>line
</screen></listitem></varlistentry></variablelist></footnote> and text after the footnote.</simpara>
';

1;
