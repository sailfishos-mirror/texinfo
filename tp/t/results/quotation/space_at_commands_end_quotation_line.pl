use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'space_at_commands_end_quotation_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' at the end of line '
                },
                {
                  'cmdname' => '
',
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'A '
                },
                {
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' at the end of the '
                },
                {
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'quotation line.
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
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
                'line_nr' => 3,
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
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'cmdname' => ' ',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' at the end of line '
                },
                {
                  'cmdname' => ' ',
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'A '
                },
                {
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'cmdname' => ' ',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' at the end of the '
                },
                {
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'quotation line.
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
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
                'line_nr' => 7,
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0];
$result_trees{'space_at_commands_end_quotation_line'}{'contents'}[0]{'parent'} = $result_trees{'space_at_commands_end_quotation_line'};

$result_texis{'space_at_commands_end_quotation_line'} = '@quotation @@ at the end of line @
A @@ at the end of the @@quotation line.
@end quotation

@quotation @@@  at the end of line @ 
A @@@  at the end of the @@quotation line.
@end quotation
';


$result_texts{'space_at_commands_end_quotation_line'} = '@ at the end of line  
A @ at the end of the @quotation line.

@  at the end of line  
A @  at the end of the @quotation line.
';

$result_errors{'space_at_commands_end_quotation_line'} = [];


$result_floats{'space_at_commands_end_quotation_line'} = {};



$result_converted{'plaintext'}->{'space_at_commands_end_quotation_line'} = '     @ at the end of line  : A @ at the end of the @quotation line.

     @  at the end of line  : A @  at the end of the @quotation line.
';


$result_converted{'html_text'}->{'space_at_commands_end_quotation_line'} = '<blockquote class="quotation">
<p><b class="b">@ at the end of line &nbsp;:</b> A @ at the end of the @quotation line.
</p></blockquote>

<blockquote class="quotation">
<p><b class="b">@&nbsp; at the end of line &nbsp;:</b> A @&nbsp; at the end of the @quotation line.
</p></blockquote>
';


$result_converted{'xml'}->{'space_at_commands_end_quotation_line'} = '<quotation spaces=" " endspaces=" "><quotationtype>&arobase; at the end of line <spacecmd type="nl"/></quotationtype><para>A &arobase; at the end of the &arobase;quotation line.
</para></quotation>

<quotation spaces=" " endspaces=" "><quotationtype>&arobase;<spacecmd type="spc"/> at the end of line <spacecmd type="spc"/></quotationtype>
<para>A &arobase;<spacecmd type="spc"/> at the end of the &arobase;quotation line.
</para></quotation>
';


$result_converted{'docbook'}->{'space_at_commands_end_quotation_line'} = '<blockquote><para><emphasis role="bold">@ at the end of line &#160;:</emphasis> A @ at the end of the @quotation line.
</para></blockquote>
<blockquote><para><emphasis role="bold">@&#160; at the end of line &#160;:</emphasis> A @&#160; at the end of the @quotation line.
</para></blockquote>';


$result_converted{'latex'}->{'space_at_commands_end_quotation_line'} = '\\documentclass{book}
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
  \\par\\obeylines\\obeyspaces\\frenchspacing
  \\parskip=\\z@\\parindent=\\z@}{}
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

% called when setting single headers
\\newcommand{\\GNUTexinfosetsingleheader}{\\pagestyle{single}}

% double header
\\newpagestyle{double}{\\sethead[\\thepage{}][][\\GNUTexinfosettitle]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% called when setting double headers
\\newcommand{\\GNUTexinfosetdoubleheader}{\\pagestyle{double}}


% avoid pagebreak and headings setting for a sectionning command
\\newcommand{\\GNUTexinfonopagebreakheading}[2]{{\\let\\clearpage\\relax \\let\\cleardoublepage\\relax \\let\\thispagestyle\\GNUTexinfoplaceholder #1{#2}}}

\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\GNUTexinfosetsingleheader{}%

\\begin{quote}
\\textbf{@ at the end of line \\ {}:} A @ at the end of the @quotation line.
\\end{quote}

\\begin{quote}
\\textbf{@\\ {} at the end of line \\ {}:} A @\\ {} at the end of the @quotation line.
\\end{quote}
\\end{document}
';

1;
