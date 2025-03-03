use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'text_between_item_itemx'} = '*document_root C1
 *before_node_section C1
  *0 @table C3 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E1]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @strong l1
   *table_entry C1
    *table_term C3
     *@item C1 l2
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {in item}
     *inter_item C1
      *paragraph C1
       {text\\n}
     *@itemx C1 l4
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {in itemx}
   *@end C1 l5
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
';


$result_texis{'text_between_item_itemx'} = '@table @strong
@item in item
text
@itemx in itemx
@end table
';


$result_texts{'text_between_item_itemx'} = 'in item
text
in itemx
';

$result_errors{'text_between_item_itemx'} = [
  {
    'error_line' => '@itemx must follow @item
',
    'line_nr' => 4,
    'text' => '@itemx must follow @item',
    'type' => 'error'
  }
];


1;
