use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_quotation_with_arg_followed_by_quotation'} = '*document_root C1
 *before_node_section C3
  *0 @quotation C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {something}
   *@end C1 l2
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
  {empty_line:\\n}
  *1 @quotation C3 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {In quotation\\n}
   *@end C1 l6
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


$result_texis{'empty_quotation_with_arg_followed_by_quotation'} = '@quotation something
@end quotation

@quotation
In quotation
@end quotation
';


$result_texts{'empty_quotation_with_arg_followed_by_quotation'} = 'something

In quotation
';

$result_errors{'empty_quotation_with_arg_followed_by_quotation'} = [];



$result_converted{'docbook'}->{'empty_quotation_with_arg_followed_by_quotation'} = '<blockquote></blockquote>
<blockquote><para>In quotation
</para></blockquote>';

1;
