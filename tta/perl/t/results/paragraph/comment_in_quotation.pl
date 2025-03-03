use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'comment_in_quotation'} = '*document_root C1
 *before_node_section C4
  {empty_line:\\n}
  *0 @quotation C3 l2
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C2
    {Quotation }
    *@c C1
     {rawline_arg:\\n}
   *@end C1 l4
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{quotation}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{ \\n}
     {quotation}
  {empty_line:\\n}
  *1 @quotation C3 l6
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C2
    {Quotation no space}
    *@c C1
     {rawline_arg:\\n}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{quotation}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{ \\n}
     {quotation}
';


$result_texis{'comment_in_quotation'} = '
@quotation
Quotation @c
@end quotation 

@quotation
Quotation no space@c
@end quotation 
';


$result_texts{'comment_in_quotation'} = '
Quotation 
Quotation no space';

$result_errors{'comment_in_quotation'} = [];



$result_converted{'plaintext'}->{'comment_in_quotation'} = '     Quotation

     Quotation no space
';


$result_converted{'html_text'}->{'comment_in_quotation'} = '
<blockquote class="quotation">
<p>Quotation </p></blockquote>

<blockquote class="quotation">
<p>Quotation no space</p></blockquote>
';

1;
