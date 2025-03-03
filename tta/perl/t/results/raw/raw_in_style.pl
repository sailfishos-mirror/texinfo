use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'raw_in_style'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @code C1 l1
    *brace_container C2
     {\\n}
     *1 @html C3 l2
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{\\n}
      *rawpreformatted C1
       {in html\\n}
      *@end C1 l4
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |text_arg:{html}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {html}
';


$result_texis{'raw_in_style'} = '@code{
@html
in html
@end html
}';


$result_texts{'raw_in_style'} = '
in html
';

$result_errors{'raw_in_style'} = [];



$result_converted{'plaintext'}->{'raw_in_style'} = '‘ ’
';


$result_converted{'xml'}->{'raw_in_style'} = '<para><code>
<html endspaces=" ">
in html
</html>
</code></para>';


$result_converted{'html_text'}->{'raw_in_style'} = '<p><code class="code">
in html
</code></p>';

1;
