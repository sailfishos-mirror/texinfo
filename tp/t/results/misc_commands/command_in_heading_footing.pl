use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'command_in_heading_footing'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'something '
                },
                {
                  'cmdname' => 'thispage',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => 'thischapternum',
                  'parent' => {}
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
          'cmdname' => 'everyheading',
          'extra' => {
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'In text '
            },
            {
              'cmdname' => 'thispage',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => 'thischapternum',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' text.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'In code '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'thissection',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'command_in_heading_footing'}{'contents'}[0];
$result_trees{'command_in_heading_footing'}{'contents'}[0]{'parent'} = $result_trees{'command_in_heading_footing'};

$result_texis{'command_in_heading_footing'} = '@everyheading something @thispage @thischapternum

In text @thispage @thischapternum text.

In code @code{@thissection}.
';


$result_texts{'command_in_heading_footing'} = '
In text   text.

In code .
';

$result_errors{'command_in_heading_footing'} = [
  {
    'error_line' => '@thispage should only appear in heading or footing
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@thispage should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => '@thischapternum should only appear in heading or footing
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@thischapternum should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => '@thissection should only appear in heading or footing
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@thissection should only appear in heading or footing',
    'type' => 'error'
  }
];


$result_floats{'command_in_heading_footing'} = {};



$result_converted{'plaintext'}->{'command_in_heading_footing'} = 'In text text.

   In code ‘’.
';


$result_converted{'html_text'}->{'command_in_heading_footing'} = '
<p>In text   text.
</p>
<p>In code <code class="code"></code>.
</p>';


$result_converted{'latex'}->{'command_in_heading_footing'} = '\\documentclass{book}
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

% used for substitutions in commands
\\newcommand{\\GNUTexinfoplaceholder}[1]{}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%

\\newpagestyle{custom}{%
\\sethead[something \\thepage{} \\thechapter{}][][]%
{something \\thepage{} \\thechapter{}}{}{}%
}%
\\pagestyle{custom}%

In text \\thepage{} \\thechapter{} text.

In code \\texttt{Section \\thesection{} \\sectiontitle{}}.
\\end{document}
';


$result_converted{'docbook'}->{'command_in_heading_footing'} = '
<para>In text   text.
</para>
<para>In code <literal></literal>.
</para>';

1;
