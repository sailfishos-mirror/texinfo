use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'multitable_bracketed_no_inter_space_prototype'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *0 @multitable C2 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{2}
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *bracketed_arg C1 l2
      {a}
     *bracketed_arg C1 l2
      {b}
   *@end C1 l3
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


$result_texis{'multitable_bracketed_no_inter_space_prototype'} = '
@multitable {a}{b}
@end multitable
';


$result_texts{'multitable_bracketed_no_inter_space_prototype'} = '
';

$result_errors{'multitable_bracketed_no_inter_space_prototype'} = [];


1;
