use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'table_in_display_in_example'} = '*document_root C1
 *before_node_section C1
  *0 @example C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *1 @display C3 l2
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *2 @table C3 l3
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |command_as_argument:[E3]
     *arguments_line C1
      *block_line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       *3 @asis l3
     *table_entry C2
      *table_term C1
       *@item C1 l4
       |INFO
       |spaces_before_argument:
        |{ }
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {item}
      *table_definition C1
       *preformatted C1
        {Line\\n}
     *@end C1 l6
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
    *@end C1 l7
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{display}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {display}
   *@end C1 l8
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


$result_texis{'table_in_display_in_example'} = '@example
@display
@table @asis
@item item
Line
@end table
@end display
@end example
';


$result_texts{'table_in_display_in_example'} = 'item
Line
';

$result_errors{'table_in_display_in_example'} = [];



$result_converted{'plaintext'}->{'table_in_display_in_example'} = '          item
               Line
';


$result_converted{'html_text'}->{'table_in_display_in_example'} = '<div class="example">
<div class="display">
<dl class="table">
<dt><code class="table-term-preformatted-code">item</code></dt>
<dd><pre class="example-preformatted">Line
</pre></dd>
</dl>
</div>
</div>
';


$result_converted{'xml'}->{'table_in_display_in_example'} = '<example endspaces=" ">
<display endspaces=" ">
<table commandarg="asis" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">item</itemformat></item>
</tableterm><tableitem><pre xml:space="preserve">Line
</pre></tableitem></tableentry></table>
</display>
</example>
';


$result_converted{'docbook'}->{'table_in_display_in_example'} = '<variablelist><varlistentry><term>item
</term><listitem><literallayout>Line
</literallayout></listitem></varlistentry></variablelist>';


$result_converted{'latex_text'}->{'table_in_display_in_example'} = '\\begin{Texinfoindented}
\\begin{Texinfoindented}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
item}}]
\\begin{Texinfopreformatted}%
Line
\\end{Texinfopreformatted}
\\end{description}
\\end{Texinfoindented}
\\end{Texinfoindented}
';

1;
