use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'multitable_item_in_index'} = '*document_root C1
 *before_node_section C1
  *@multitable C3 l1
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
      {aaa}
     { }
     *bracketed_arg C1 l1
      {bbb}
   *before_item C1
    *index_entry_command@vindex C1 l2
    |INFO
    |command_name:{vindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |index_entry:I{vr,1}
     *line_arg C2
     |INFO
     |spaces_after_argument:
      |{\\n}
      {ignorable_spaces_after_command: }
      {on item line}
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


$result_texis{'multitable_item_in_index'} = '@multitable {aaa} {bbb}
@vindex  on item line
@end multitable
';


$result_texts{'multitable_item_in_index'} = '';

$result_errors{'multitable_item_in_index'} = [
  {
    'error_line' => 'warning: @item should not appear on @vindex line
',
    'line_nr' => 2,
    'text' => '@item should not appear on @vindex line',
    'type' => 'warning'
  },
  {
    'error_line' => '@item outside of table or list
',
    'line_nr' => 2,
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @multitable has text but no @item
',
    'line_nr' => 1,
    'text' => '@multitable has text but no @item',
    'type' => 'warning'
  }
];


$result_nodes_list{'multitable_item_in_index'} = '';

$result_sections_list{'multitable_item_in_index'} = '';

$result_sectioning_root{'multitable_item_in_index'} = '';

$result_headings_list{'multitable_item_in_index'} = '';

$result_indices_sort_strings{'multitable_item_in_index'} = 'vr:
 on item line
';

1;
