use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'quotation_author_in_example'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [],
                  'extra' => {
                    'spaces_after_argument' => ' 
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'quotation',
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'Some One'
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
                      'cmdname' => 'author',
                      'extra' => {
                        'quotation' => {},
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
                      'parent' => {},
                      'text' => 'A quot---ation
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'preformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'quotation'
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
                    'command_argument' => 'quotation',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'quotation'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'authors' => [
                  {}
                ],
                'end_command' => {}
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
                      'text' => 'example'
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
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
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
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'quotation'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'authors'}[0] = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_author_in_example'}{'contents'}[0];
$result_trees{'quotation_author_in_example'}{'contents'}[0]{'parent'} = $result_trees{'quotation_author_in_example'};

$result_texis{'quotation_author_in_example'} = '@example
@quotation 
@author Some One
A quot---ation
@end quotation
@end example
';


$result_texts{'quotation_author_in_example'} = 'Some One
A quot---ation
';

$result_errors{'quotation_author_in_example'} = [];


$result_floats{'quotation_author_in_example'} = {};



$result_converted{'plaintext'}->{'quotation_author_in_example'} = '          A quot---ation
                             — _Some One_
';


$result_converted{'html_text'}->{'quotation_author_in_example'} = '<div class="example">
<blockquote class="quotation">
<pre class="example-preformatted">A quot---ation
</pre></blockquote>
<div class="center">--- <em class="emph">Some One</em>
</div></div>
';


$result_converted{'xml'}->{'quotation_author_in_example'} = '<example endspaces=" ">
<quotation endspaces=" "> 
<pre xml:space="preserve"><author spaces=" ">Some One</author>
A quot---ation
</pre></quotation>
</example>
';


$result_converted{'docbook'}->{'quotation_author_in_example'} = '<blockquote><attribution>Some One</attribution>
<screen>A quot---ation
</screen></blockquote>';


$result_converted{'latex'}->{'quotation_author_in_example'} = '\\documentclass{book}
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

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
% add command aliases to use the same command in book and report
\\newcommand\\GNUTexinfomainmatter{\\mainmatter}
\\newcommand\\GNUTexinfofrontmatter{\\frontmatter}
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

% plain page style, for part and chapter, which call \\thispagestyle{plain}
\\renewpagestyle{plain}{\\sethead[\\thepage{}][][]
                             {}{}{\\thepage{}}}

% single header
\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% double header
\\newpagestyle{double}{\\sethead[\\thepage{}][][\\GNUTexinfosettitle]
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

\\begin{GNUTexinfoindented}
\\begin{quote}
\\begin{GNUTexinfopreformatted}%
\\ttfamily A quot{-}{-}{-}ation
\\end{GNUTexinfopreformatted}
\\end{quote}
\\begin{center}
--- \\emph{Some One}
\\end{center}
\\end{GNUTexinfoindented}
\\end{document}
';

1;
