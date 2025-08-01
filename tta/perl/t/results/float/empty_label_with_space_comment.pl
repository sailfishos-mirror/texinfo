use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_label_with_space_comment'} = '*document_root C1
 *before_node_section C2
  *preamble_before_content
  *@float C2 l1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |float_type:{Type}
  |global_command_number:{1}
   *arguments_line C2
    *block_line_arg C1
     {Type}
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@c C1
     ||INFO
     ||spaces_before_argument:
      ||{spaces_before_argument: }
      |*line_arg C1
      ||INFO
      ||spaces_after_argument:
       ||{spaces_after_argument:\\n}
       |{rawline_text:comment}
    |spaces_before_argument:
     |{spaces_before_argument: }
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {float}
';


$result_texis{'empty_label_with_space_comment'} = '@float Type, @c comment
@end float
';


$result_texts{'empty_label_with_space_comment'} = 'Type
';

$result_errors{'empty_label_with_space_comment'} = [];


$result_floats{'empty_label_with_space_comment'} = 'Type: 1
 F
';

$result_nodes_list{'empty_label_with_space_comment'} = '';

$result_sections_list{'empty_label_with_space_comment'} = '';

$result_sectioning_root{'empty_label_with_space_comment'} = '';

$result_headings_list{'empty_label_with_space_comment'} = '';


$result_converted{'plaintext'}->{'empty_label_with_space_comment'} = 'Type
';


$result_converted{'html'}->{'empty_label_with_space_comment'} = '<!DOCTYPE html>
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



</head>

<body lang="">
<div class="float">
<div class="type-number-float"><p><strong class="strong">Type</strong></p></div></div>


</body>
</html>
';

$result_converted_errors{'html'}->{'empty_label_with_space_comment'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'empty_label_with_space_comment'} = '<float type="Type" spaces=" " endspaces=" "><floattype>Type</floattype><floatname spaces=" "></floatname><!-- c comment -->
</float>
';


$result_converted{'latex'}->{'empty_label_with_space_comment'} = '\\documentclass{book}
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

% new float for type `Type\'
\\newfloat{TexinfoFloatType}{htb}{tfl}[chapter]
\\floatname{TexinfoFloatType}{}
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
\\begin{TexinfoFloatType}
\\end{TexinfoFloatType}
\\end{document}
';

1;
