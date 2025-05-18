use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'line_breaks'} = '*document_root C1
 *before_node_section C10
  *@documentdescription C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{ \\n}
   *paragraph C3
    {a document }
    *@*
    { yes!\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{documentdescription}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {documentdescription}
  {empty_line:\\n}
  *@settitle C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {the manual }
    *@*
    { new version}
  *@title C1 l6
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {AWK As A Major Systems Programming }
    *@*
    { Language---Revisited}
  {empty_line:\\n}
  *@center C1 l8
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {in center }
    *@*
    { line break}
  {empty_line:\\n}
  *@table C3 l10
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@strong l10
   *table_entry C2
    *table_term C2
     *@item C1 l11
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C3
      |INFO
      |spaces_after_argument:
       |{\\n}
       {with break }
       *@*
       { after}
     *@itemx C1 l12
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C3
      |INFO
      |spaces_after_argument:
       |{\\n}
       {withx breakx }
       *@*
       { afterx}
    *table_definition C1
     *paragraph C1
      {Text\\n}
   *@end C1 l14
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *@quotation C3 l16
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     {Q}
     *@*
     { uotation}
   *paragraph C1
    {T\\n}
   *@end C1 l18
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{quotation}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {quotation}
';


$result_texis{'line_breaks'} = '@documentdescription 
a document @* yes!
@end documentdescription

@settitle the manual @* new version
@title AWK As A Major Systems Programming @* Language---Revisited

@center in center @* line break

@table @strong
@item with break @* after
@itemx withx breakx @* afterx
Text
@end table

@quotation Q@* uotation
T
@end quotation
';


$result_texts{'line_breaks'} = '
AWK As A Major Systems Programming 
 Language--Revisited

in center 
 line break

with break 
 after
withx breakx 
 afterx
Text

Q
 uotation
T
';

$result_errors{'line_breaks'} = [];


$result_nodes_list{'line_breaks'} = '';

$result_sections_list{'line_breaks'} = '';

$result_sectioning_root{'line_breaks'} = '';

$result_headings_list{'line_breaks'} = '';


$result_converted{'plaintext'}->{'line_breaks'} = '                               in center
                              line break

*with break
after*
*withx breakx
afterx*
     Text

     Q
     uotation: T
';


$result_converted{'html'}->{'line_breaks'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>the manual 
 new version</title>

<meta name="description" content="a document 
 yes!">
<meta name="keywords" content="the manual 
 new version">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
div.center {text-align:center}
h1.settitle {text-align:center}
-->
</style>


</head>

<body lang="">
<h1 class="settitle">the manual <br> new version</h1>
<hr>

<h1 class="title">AWK As A Major Systems Programming <br> Language&mdash;Revisited</h1>

<div class="center">in center <br> line break
</div>
<dl class="table">
<dt><strong class="strong">with break <br> after</strong></dt>
<dt><strong class="strong">withx breakx <br> afterx</strong></dt>
<dd><p>Text
</p></dd>
</dl>

<blockquote class="quotation">
<p><b class="b">Q<br> uotation:</b> T
</p></blockquote>



</body>
</html>
';


$result_converted{'xml'}->{'line_breaks'} = '<documentdescription endspaces=" "> 
<para>a document &linebreak; yes!
</para></documentdescription>

<settitle spaces=" ">the manual &linebreak; new version</settitle>
<title spaces=" ">AWK As A Major Systems Programming &linebreak; Language&textmdash;Revisited</title>

<center spaces=" ">in center &linebreak; line break</center>

<table commandarg="strong" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="strong">with break &linebreak; after</itemformat></item>
<itemx spaces=" "><itemformat command="strong">withx breakx &linebreak; afterx</itemformat></itemx>
</tableterm><tableitem><para>Text
</para></tableitem></tableentry></table>

<quotation spaces=" " endspaces=" "><quotationtype>Q&linebreak; uotation</quotationtype>
<para>T
</para></quotation>
';


$result_converted{'docbook_doc'}->{'line_breaks'} = '<?xml version="1.0"?>
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.5//EN" "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" [
  <!ENTITY tex "TeX">
  <!ENTITY latex "LaTeX">
]>
<book>
<title>AWK As A Major Systems Programming 
 Language&#8212;Revisited</title>
<titleabbrev>the manual 
 new version</titleabbrev>
<bookinfo><title>AWK As A Major Systems Programming 
 Language&#8212;Revisited</title>
<titleabbrev>the manual 
 new version</titleabbrev>
</bookinfo>


<simpara role="center">in center 
 line break</simpara>

<variablelist><varlistentry><term><emphasis role="bold">with break 
 after</emphasis>
</term><term><emphasis role="bold">withx breakx 
 afterx</emphasis>
</term><listitem><para>Text
</para></listitem></varlistentry></variablelist>
<blockquote><para><emphasis role="bold">Q
 uotation:</emphasis> T
</para></blockquote></book>
';


$result_converted{'latex_text'}->{'line_breaks'} = '
{\\raggedright {\\huge \\bfseries AWK As A Major Systems Programming \\leavevmode{}\\\\ Language---Revisited}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt

\\begin{center}
in center \\leavevmode{}\\\\ line break
\\end{center}

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\textbf{with break \\leavevmode{}\\\\ after}\\\\
\\textbf{withx breakx \\leavevmode{}\\\\ afterx}}}]
Text
\\end{description}

\\begin{quote}
\\textbf{Q\\leavevmode{}\\\\ uotation:} T
\\end{quote}
';

1;
