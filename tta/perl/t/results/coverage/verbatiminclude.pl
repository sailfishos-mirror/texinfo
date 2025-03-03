use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'verbatiminclude'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *@verbatiminclude C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |input_encoding_name:{utf-8}
  |text_arg:{incl-incl.txi}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {incl-incl.txi}
';


$result_texis{'verbatiminclude'} = '
@verbatiminclude incl-incl.txi
';


$result_texts{'verbatiminclude'} = '
';

$result_errors{'verbatiminclude'} = [];



$result_converted{'plaintext'}->{'verbatiminclude'} = 'This is the @emph{included} file (include-value2.txi) <> ---. 
';


$result_converted{'html_text'}->{'verbatiminclude'} = '
<pre class="verbatim">This is the @emph{included} file (include-value2.txi) &lt;&gt; ---. 
</pre>';


$result_converted{'xml'}->{'verbatiminclude'} = '
<verbatiminclude file="incl-incl.txi" spaces=" ">incl-incl.txi</verbatiminclude>
';


$result_converted{'latex_text'}->{'verbatiminclude'} = '
\\begin{verbatim}
This is the @emph{included} file (include-value2.txi) <> ---. 
\\end{verbatim}
';


$result_converted{'docbook'}->{'verbatiminclude'} = '
<screen>This is the @emph{included} file (include-value2.txi) &lt;&gt; ---. 
</screen>';

1;
