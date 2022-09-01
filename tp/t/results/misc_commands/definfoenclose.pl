use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'definfoenclose'} = {
  'contents' => [
    {
      'contents' => [
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
              'text' => 'definfoenclose phoo,//,\\  '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'phoo,//,\\'
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
              'cmdname' => 'definfoenclose',
              'extra' => {
                'misc_args' => [
                  'phoo',
                  '//',
                  '\\'
                ],
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'bar'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'phoo',
              'contents' => [],
              'extra' => {
                'begin' => '//',
                'end' => '\\'
              },
              'parent' => {},
              'type' => 'definfoenclose_command'
            },
            {
              'parent' => {},
              'text' => '
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
              'text' => 'definfoenclose phi,:,:  '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'phi,:,:'
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
              'cmdname' => 'definfoenclose',
              'extra' => {
                'misc_args' => [
                  'phi',
                  ':',
                  ':'
                ],
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'bar'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'phi',
              'contents' => [],
              'extra' => {
                'begin' => ':',
                'end' => ':'
              },
              'parent' => {},
              'type' => 'definfoenclose_command'
            },
            {
              'parent' => {},
              'text' => '
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'very strong'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'strong,(strong:,:)'
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
          'cmdname' => 'definfoenclose',
          'extra' => {
            'misc_args' => [
              'strong',
              '(strong:',
              ':)'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => ' is it really strong? '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'contents' => [],
              'extra' => {
                'begin' => '(strong:',
                'end' => ':)'
              },
              'parent' => {},
              'type' => 'definfoenclose_command'
            },
            {
              'parent' => {},
              'text' => '
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
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[1];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[1];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[3];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[3];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[5];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[5];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[7];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[7];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[9];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[9];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[11];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[13]{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[13];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[13];
$result_trees{'definfoenclose'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'definfoenclose'}{'contents'}[0];
$result_trees{'definfoenclose'}{'contents'}[0]{'parent'} = $result_trees{'definfoenclose'};

$result_texis{'definfoenclose'} = '
definfoenclose phoo,//,\\  @definfoenclose phoo,//,\\

@phoo{bar}

definfoenclose phi,:,:  @definfoenclose phi,:,:

@phi{bar}

@strong{very strong}

@definfoenclose strong,(strong:,:)

@strong{ is it really strong? }
';


$result_texts{'definfoenclose'} = '
definfoenclose phoo,//,\\  
bar

definfoenclose phi,:,:  
bar

very strong


 is it really strong? 
';

$result_errors{'definfoenclose'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@definfoenclose should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => '@definfoenclose should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];


$result_floats{'definfoenclose'} = {};



$result_converted{'plaintext'}->{'definfoenclose'} = 'definfoenclose phoo,//,\\

   //bar\\

   definfoenclose phi,:,:

   :bar:

   *very strong*

   (strong: is it really strong?  :)
';


$result_converted{'html_text'}->{'definfoenclose'} = '
<p>definfoenclose phoo,//,\\  </p>
<p>//bar\\
</p>
<p>definfoenclose phi,:,:  </p>
<p>:bar:
</p>
<p><strong class="strong">very strong</strong>
</p>

<p>(strong: is it really strong? :)
</p>';


$result_converted{'latex'}->{'definfoenclose'} = '\\documentclass{book}
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


definfoenclose phoo,//,\\textbackslash{}  
bar

definfoenclose phi,:,:  
bar

\\textbf{very strong}


\\textbf{ is it really strong? }
\\end{document}
';


$result_converted{'docbook'}->{'definfoenclose'} = '
<para>definfoenclose phoo,//,\\  </para>
<para>bar
</para>
<para>definfoenclose phi,:,:  </para>
<para>bar
</para>
<para><emphasis role="bold">very strong</emphasis>
</para>

<para> is it really strong? 
</para>';

1;
