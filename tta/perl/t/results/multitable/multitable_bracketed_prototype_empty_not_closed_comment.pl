use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'multitable_bracketed_prototype_empty_not_closed_comment'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *@multitable C2 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{1}
   *arguments_line C1
    *block_line_arg C1
     *bracketed_arg C1 l2
      *@comment C1
       {rawline_arg: comment\\n}
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


$result_texis{'multitable_bracketed_prototype_empty_not_closed_comment'} = '
@multitable {@comment comment
}@end multitable
';


$result_texts{'multitable_bracketed_prototype_empty_not_closed_comment'} = '
';

$result_errors{'multitable_bracketed_prototype_empty_not_closed_comment'} = [
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 2,
    'text' => 'misplaced {',
    'type' => 'error'
  }
];


1;
