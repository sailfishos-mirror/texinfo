use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'float_with_at_commands'} = '*document_root C1
 *before_node_section C5
  *preamble_before_content
  *@float C7 l1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |float_number:{1}
  |float_type:{entrée}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{premi_00e8re-entr_00e9e}
   *arguments_line C2
    *block_line_arg C3
     {entr}
     *@\' C1 l1
      *following_arg C1
       {e}
     {e}
    *block_line_arg C5
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
    |spaces_before_argument:
     |{spaces_before_argument: }
     {premi}
     *@` C1 l1
      *following_arg C1
       {e}
     {re entr}
     *@\' C1 l1
      *following_arg C1
       {e}
     {e}
   {empty_line:\\n}
   *paragraph C5
    {Ceci est notre premi}
    *@` C1 l3
     *following_arg C1
      {e}
    {re entr}
    *@\' C1 l3
     *following_arg C1
      {e}
    {e.\\n}
   *@caption C1 l4
    *brace_command_context C1
     *paragraph C5
      {La premi}
      *@` C1 l4
       *following_arg C1
        {e}
      {re entr}
      *@\' C1 l4
       *following_arg C1
        {e}
      {e est importante}
   {spaces_after_close_brace:\\n}
   {empty_line:\\n}
   *@end C1 l6
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
  {empty_line:\\n}
  {empty_line:\\n}
  *@listoffloats C1 l9
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |float_type:{entrée}
  |global_command_number:{1}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {entr}
    *@\' C1 l9
     *following_arg C1
      {e}
    {e}
';


$result_texis{'float_with_at_commands'} = '@float entr@\'ee, premi@`ere entr@\'ee

Ceci est notre premi@`ere entr@\'ee.
@caption{La premi@`ere entr@\'ee est importante}

@end float


@listoffloats entr@\'ee
';


$result_texts{'float_with_at_commands'} = 'entre\'e, premie`re entre\'e

Ceci est notre premie`re entre\'e.



';

$result_errors{'float_with_at_commands'} = [];


$result_floats{'float_with_at_commands'} = 'entrée: 1
 F1: {premi_00e8re-entr_00e9e}
  C: La premi@`ere entr@\'ee est importante
';

$result_nodes_list{'float_with_at_commands'} = '';

$result_sections_list{'float_with_at_commands'} = '';

$result_sectioning_root{'float_with_at_commands'} = '';

$result_headings_list{'float_with_at_commands'} = '';


$result_converted{'plaintext'}->{'float_with_at_commands'} = 'Ceci est notre première entrée.

entrée 1: La première entrée est importante

* Menu:

* entrée 1: première entrée.             La première entrée est
                                         importante

';


$result_converted{'html'}->{'float_with_at_commands'} = '<!DOCTYPE html>
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
<div class="float" id="premi_00e8re-entr_00e9e">

<p>Ceci est notre premi&egrave;re entr&eacute;e.
</p>
<div class="caption"><p><strong class="strong">entr&eacute;e 1: </strong>La premi&egrave;re entr&eacute;e est importante</p></div></div>

<dl class="listoffloats">
<dt><a href="#premi_00e8re-entr_00e9e">entr&eacute;e 1</a></dt><dd class="caption-in-listoffloats"><p>La premi&egrave;re entr&eacute;e est importante</p></dd>
</dl>



</body>
</html>
';

$result_converted_errors{'html'}->{'float_with_at_commands'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'float_with_at_commands'} = '<float identifier="premi_00e8re-entr_00e9e" type="entrée" number="1" spaces=" " endspaces=" "><floattype>entr<accent type="acute" bracketed="off">e</accent>e</floattype><floatname spaces=" ">premi<accent type="grave" bracketed="off">e</accent>re entr<accent type="acute" bracketed="off">e</accent>e</floatname>

<para>Ceci est notre premi<accent type="grave" bracketed="off">e</accent>re entr<accent type="acute" bracketed="off">e</accent>e.
</para><caption><para>La premi<accent type="grave" bracketed="off">e</accent>re entr<accent type="acute" bracketed="off">e</accent>e est importante</para></caption>

</float>


<listoffloats type="entrée" spaces=" ">entr<accent type="acute" bracketed="off">e</accent>e</listoffloats>
';


$result_converted{'latex'}->{'float_with_at_commands'} = '\\documentclass{book}
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

% new float for type `entrée\'
\\newfloat{TexinfoFloatentree}{htb}{tfl}[chapter]
\\floatname{TexinfoFloatentree}{}
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
\\begin{TexinfoFloatentree}

Ceci est notre premi\\`{e}re entr\\\'{e}e.
\\caption{La premi\\`{e}re entr\\\'{e}e est importante}

\\label{anchor:premi_00e8re-entr_00e9e}%
\\end{TexinfoFloatentree}


\\listof{TexinfoFloatentree}{}
\\end{document}
';

1;
