use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'prototype_brace_no_brace'} = '*document_root C1
 *before_node_section C1
  *0 @multitable C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{1}
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *bracketed_arg C1 l1
      {aa}
     { bb}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{multitable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {multitable}
';


$result_texis{'prototype_brace_no_brace'} = '@multitable {aa} bb
@end multitable
';


$result_texts{'prototype_brace_no_brace'} = '';

$result_errors{'prototype_brace_no_brace'} = [];



$result_converted{'plaintext'}->{'prototype_brace_no_brace'} = '';


$result_converted{'html_text'}->{'prototype_brace_no_brace'} = '';


$result_converted{'xml'}->{'prototype_brace_no_brace'} = '<multitable spaces=" " endspaces=" "><columnprototypes><columnprototype bracketed="on">aa</columnprototype> bb</columnprototypes>
</multitable>
';

1;
