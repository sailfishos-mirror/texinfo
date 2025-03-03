use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'def_in_example'} = '*document_root C1
 *before_node_section C1
  *0 @example C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *1 @defun C3 l2
   |INFO
   |spaces_before_argument:
    |{ }
    *def_line C1 l2
    |EXTRA
    |def_command:{defun}
    |def_index_element:
     |*def_name C1
      |*def_line_arg C1
       |{name}
    |index_entry:I{fn,1}
    |original_def_cmdname:{defun}
     *block_line_arg C5
     |INFO
     |spaces_after_argument:
      |{\\n}
      *def_category C1
      |INFO
      |inserted:{1}
       *def_line_arg C1
        {Function}
      (i){spaces: }
      *def_name C1
       *def_line_arg C1
        {name}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {arg}
    *def_item C1
     *preformatted C1
      {in defun\\n}
    *@end C1 l4
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{defun}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {defun}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
';


$result_texis{'def_in_example'} = '@example
@defun name arg
in defun
@end defun
@end example
';


$result_texts{'def_in_example'} = 'Function: name arg
in defun
';

$result_errors{'def_in_example'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'def_in_example'} = {
  'fn' => [
    'name'
  ]
};



$result_converted{'plaintext'}->{'def_in_example'} = '      -- Function: name arg
          in defun
';


$result_converted{'html'}->{'def_in_example'} = '<!DOCTYPE html>
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

<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
div.example {margin-left: 3.2em}
span:hover a.copiable-link {visibility: visible}
strong.def-name {font-family: monospace; font-weight: bold; font-size: larger}
-->
</style>


</head>

<body lang="en">
<div class="example">
<dl class="first-deffn first-defun-alias-first-deffn def-block">
<dt class="deffn defun-alias-deffn def-line" id="index-name"><span class="category-def">Function: </span><span><strong class="def-name">name</strong> <var class="def-var-arguments">arg</var><a class="copiable-link" href="#index-name"> &para;</a></span></dt>
<dd><pre class="example-preformatted">in defun
</pre></dd></dl>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'def_in_example'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'docbook'}->{'def_in_example'} = '<synopsis><indexterm role="fn"><primary>name</primary></indexterm><phrase role="category"><emphasis role="bold">Function</emphasis>:</phrase> <function>name</function> <emphasis role="arg">arg</emphasis></synopsis>
<blockquote><screen>in defun
</screen></blockquote>';


$result_converted{'xml'}->{'def_in_example'} = '<example endspaces=" ">
<defun spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="1">name</indexterm><defcategory automatic="on">Function</defcategory> <deffunction>name</deffunction> <defparam>arg</defparam></definitionterm>
<definitionitem><pre xml:space="preserve">in defun
</pre></definitionitem></defun>
</example>
';


$result_converted{'latex_text'}->{'def_in_example'} = '\\begin{Texinfoindented}

\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill \\hangindent=2em \\hyphenpenalty=10000
\\texttt{name \\EmbracOn{}\\textnormal{\\textsl{arg}}\\EmbracOff{}}& [Function]
\\end{tabularx}

\\index[fn]{name@\\texttt{name}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
\\begin{Texinfopreformatted}%
\\ttfamily in defun
\\end{Texinfopreformatted}
\\end{quote}
\\end{Texinfoindented}
';

1;
