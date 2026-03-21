use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'raw_block_commands'} = '*document_root C1
 *before_node_section C10
  {empty_line:\\n}
  *@html C3 l2
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *rawpreformatted C1
    {<blink>html</blink> ``}\\n}
   *@end C1 l4
   |EXTRA
   |text_arg:{html}
    *line_arg C3
     {spaces_before_argument: }
     {html}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@xml C3 l6
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *rawpreformatted C1
    {<para>xml</para> ``}\\n}
   *@end C1 l8
   |EXTRA
   |text_arg:{xml}
    *line_arg C3
     {spaces_before_argument: }
     {xml}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@docbook C3 l10
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *rawpreformatted C1
    {<emphasis>docbook</emphasis> ``}\\n}
   *@end C1 l12
   |EXTRA
   |text_arg:{docbook}
    *line_arg C3
     {spaces_before_argument: }
     {docbook}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@tex C3 l14
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *rawpreformatted C3
    {$\\underline{a < b }
    *@code C1 l15
     *brace_container C2
      {tex \\hbox}
      *balanced_braces C1 l15
       {{ code }}
    {}$ ``\\n}
   *@end C1 l16
   |EXTRA
   |text_arg:{tex}
    *line_arg C3
     {spaces_before_argument: }
     {tex}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@latex C3 l18
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *rawpreformatted C3
    {$\\frac{a < b }
    *@code C1 l19
     *brace_container C2
      {tex \\hbox}
      *balanced_braces C1 l19
       {{ code }}
    {}{b}$ ``\\n}
   *@end C1 l20
   |EXTRA
   |text_arg:{latex}
    *line_arg C3
     {spaces_before_argument: }
     {latex}
     {spaces_after_argument:\\n}
';


$result_texis{'raw_block_commands'} = '
@html
<blink>html</blink> ``}
@end html

@xml
<para>xml</para> ``}
@end xml

@docbook
<emphasis>docbook</emphasis> ``}
@end docbook

@tex
$\\underline{a < b @code{tex \\hbox{ code }}}$ ``
@end tex

@latex
$\\frac{a < b @code{tex \\hbox{ code }}}{b}$ ``
@end latex
';


$result_texts{'raw_block_commands'} = '
<blink>html</blink> ``}

<para>xml</para> ``}

<emphasis>docbook</emphasis> ``}

$\\underline{a < b tex \\hbox{ code }}$ ``

$\\frac{a < b tex \\hbox{ code }}{b}$ ``
';

$result_errors{'raw_block_commands'} = '* W l6|@xml is obsolete
 warning: @xml is obsolete

';

$result_nodes_list{'raw_block_commands'} = '';

$result_sections_list{'raw_block_commands'} = '';

$result_sectioning_root{'raw_block_commands'} = '';

$result_headings_list{'raw_block_commands'} = '';


$result_converted{'plaintext'}->{'raw_block_commands'} = '';


$result_converted{'html_text'}->{'raw_block_commands'} = '
<blink>html</blink> ``}




';


$result_converted{'xml'}->{'raw_block_commands'} = '
<html endspaces=" ">
&lt;blink&gt;html&lt;/blink&gt; &textldquo;}
</html>

<para>xml</para> ``}

<docbook endspaces=" ">
&lt;emphasis&gt;docbook&lt;/emphasis&gt; &textldquo;}
</docbook>

<tex endspaces=" ">
$\\underline{a &lt; b <code>tex \\hbox{ code }</code>}$ &textldquo;
</tex>

<latex endspaces=" ">
$\\frac{a &lt; b <code>tex \\hbox{ code }</code>}{b}$ &textldquo;
</latex>
';


$result_converted{'docbook'}->{'raw_block_commands'} = '


<emphasis>docbook</emphasis> ``}


';


$result_converted{'latex_text'}->{'raw_block_commands'} = '




$\\frac{a < b \\texttt{tex \\hbox{ code }}}{b}$ ``
';

1;
