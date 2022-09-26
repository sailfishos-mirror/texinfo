use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'noindent_indent'} = {
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
          'cmdname' => 'indent',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'First para
'
            }
          ],
          'extra' => {
            'indent' => 1
          },
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
          'cmdname' => 'noindent',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'qsddsqkdsqkkmljsqjsqodmmdsqdsmqj dqs sdq sqd sdq dsq sdq sqd sqd sdq sdq 
'
            },
            {
              'parent' => {},
              'text' => 'qsd dsq sdq dsq dssdq sdq sdq sdq dsq sdq dsq dsq sdq dsq sdqsd q
'
            }
          ],
          'extra' => {
            'noindent' => 1
          },
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
          'cmdname' => 'noindent',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => ' ',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'noindent in para.
'
            }
          ],
          'extra' => {
            'noindent' => 1
          },
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
          'cmdname' => 'indent',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => ' ',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'unneeded indent
'
            }
          ],
          'extra' => {
            'indent' => 1
          },
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
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[3];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[7];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[7];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[11];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[15];
$result_trees{'noindent_indent'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'noindent_indent'}{'contents'}[0];
$result_trees{'noindent_indent'}{'contents'}[0]{'parent'} = $result_trees{'noindent_indent'};

$result_texis{'noindent_indent'} = '
@indent
First para

@noindent
qsddsqkdsqkkmljsqjsqodmmdsqdsmqj dqs sdq sqd sdq dsq sdq sqd sqd sdq sdq 
qsd dsq sdq dsq dssdq sdq sdq sdq dsq sdq dsq dsq sdq dsq sdqsd q

@noindent noindent in para.

@indent unneeded indent
';


$result_texts{'noindent_indent'} = '
First para

qsddsqkdsqkkmljsqjsqodmmdsqdsmqj dqs sdq sqd sdq dsq sdq sqd sqd sdq sdq 
qsd dsq sdq dsq dssdq sdq sdq sdq dsq sdq dsq dsq sdq dsq sdqsd q

noindent in para.

unneeded indent
';

$result_errors{'noindent_indent'} = [];


$result_floats{'noindent_indent'} = {};



$result_converted{'plaintext'}->{'noindent_indent'} = '   First para

qsddsqkdsqkkmljsqjsqodmmdsqdsmqj dqs sdq sqd sdq dsq sdq sqd sqd sdq sdq
qsd dsq sdq dsq dssdq sdq sdq sdq dsq sdq dsq dsq sdq dsq sdqsd q

noindent in para.

   unneeded indent
';


$result_converted{'html_text'}->{'noindent_indent'} = '
<p>First para
</p>
<p>qsddsqkdsqkkmljsqjsqodmmdsqdsmqj dqs sdq sqd sdq dsq sdq sqd sqd sdq sdq 
qsd dsq sdq dsq dssdq sdq sdq sdq dsq sdq dsq dsq sdq dsq sdqsd q
</p>
<p>noindent in para.
</p>
<p>unneeded indent
</p>';


$result_converted{'latex'}->{'noindent_indent'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage[T1]{fontenc}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{microtype}
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


First para

\\noindent{}qsddsqkdsqkkmljsqjsqodmmdsqdsmqj dqs sdq sqd sdq dsq sdq sqd sqd sdq sdq 
qsd dsq sdq dsq dssdq sdq sdq sdq dsq sdq dsq dsq sdq dsq sdqsd q

\\noindent{}noindent in para.

unneeded indent
\\end{document}
';


$result_converted{'docbook'}->{'noindent_indent'} = '
<para>First para
</para>
<para>qsddsqkdsqkkmljsqjsqodmmdsqdsmqj dqs sdq sqd sdq dsq sdq sqd sqd sdq sdq 
qsd dsq sdq dsq dssdq sdq sdq sdq dsq sdq dsq dsq sdq dsq sdqsd q
</para>
<para>noindent in para.
</para>
<para>unneeded indent
</para>';

1;
