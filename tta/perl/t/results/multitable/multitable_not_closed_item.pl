use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'multitable_not_closed_item'} = '*document_root C1
 *before_node_section C1
  *0 @multitable C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{2}
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *bracketed_arg C1 l1
      {r}
     { }
     *bracketed_arg C1 l1
      {t}
   *multitable_body C1
    *row C1
    |EXTRA
    |row_number:{1}
     *@item C2 l2
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {rt \\n}
';


$result_texis{'multitable_not_closed_item'} = '@multitable {r} {t}
@item rt 
';


$result_texts{'multitable_not_closed_item'} = 'rt 
';

$result_errors{'multitable_not_closed_item'} = [
  {
    'error_line' => 'no matching `@end multitable\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end multitable\'',
    'type' => 'error'
  }
];


1;
