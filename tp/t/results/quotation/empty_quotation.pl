use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_quotation'} = {
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
          'cmdname' => 'quotation',
          'contents' => [
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
                'line_nr' => 2,
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
                  'text' => 'Empty'
                }
              ],
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
            'end_command' => {},
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'asis',
                  'contents' => [],
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
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'quotation',
          'contents' => [
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
                'line_nr' => 8,
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
                  'cmdname' => '*',
                  'parent' => {}
                }
              ],
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
                'line_nr' => 11,
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
            'line_nr' => 10,
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
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'empty_quotation'}{'contents'}[0];
$result_trees{'empty_quotation'}{'contents'}[0]{'parent'} = $result_trees{'empty_quotation'};

$result_texis{'empty_quotation'} = '@quotation
@end quotation

@quotation Empty
@end quotation

@quotation @asis{}
@end quotation

@quotation @*
@end quotation
';


$result_texts{'empty_quotation'} = '
Empty


';

$result_errors{'empty_quotation'} = [];


$result_floats{'empty_quotation'} = {};



$result_converted{'plaintext'}->{'empty_quotation'} = '     Empty: 
     : 

     : ';


$result_converted{'html_text'}->{'empty_quotation'} = '<blockquote class="quotation">
</blockquote>

<blockquote class="quotation">
</blockquote>

<blockquote class="quotation">
</blockquote>

<blockquote class="quotation">
</blockquote>
';


$result_converted{'xml'}->{'empty_quotation'} = '<quotation endspaces=" ">
</quotation>

<quotation spaces=" " endspaces=" "><quotationtype>Empty</quotationtype>
</quotation>

<quotation spaces=" " endspaces=" "><quotationtype><asis></asis></quotationtype>
</quotation>

<quotation spaces=" " endspaces=" "><quotationtype>&linebreak;</quotationtype>
</quotation>
';


$result_converted{'docbook'}->{'empty_quotation'} = '<blockquote></blockquote>
<blockquote></blockquote>
<blockquote></blockquote>
<blockquote></blockquote>';


$result_converted{'latex'}->{'empty_quotation'} = '\\documentclass{book}
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

\\begin{quote}
\\end{quote}

\\begin{quote}
\\textbf{Empty:} \\end{quote}

\\begin{quote}
\\textbf{:} \\end{quote}

\\begin{quote}
\\textbf{\\leavevmode{}\\\\:} \\end{quote}
\\end{document}
';

1;
