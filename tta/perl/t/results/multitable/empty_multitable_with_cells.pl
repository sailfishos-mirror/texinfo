use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_multitable_with_cells'} = '*document_root C1
 *before_node_section C1
  *@multitable C3 l1
  |EXTRA
  |max_columns:{0}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C8
    {ignorable_spaces_after_command: }
    *paragraph C1
     {item in empty multitable }
    {ignorable_spaces_after_command: }
    *paragraph C1
     {tab in empty m }
    {ignorable_spaces_after_command: }
    *paragraph C1
     {second tab in empty m\\n}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {item in empty m\\n}
   *@end C1 l4
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


$result_texis{'empty_multitable_with_cells'} = '@multitable
 item in empty multitable  tab in empty m  second tab in empty m
 item in empty m
@end multitable
';


$result_texts{'empty_multitable_with_cells'} = 'item in empty multitable tab in empty m second tab in empty m
item in empty m
';

$result_errors{'empty_multitable_with_cells'} = [
  {
    'error_line' => 'warning: empty multitable
',
    'line_nr' => 1,
    'text' => 'empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @item in empty multitable
',
    'line_nr' => 2,
    'text' => '@item in empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @tab in empty multitable
',
    'line_nr' => 2,
    'text' => '@tab in empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @tab in empty multitable
',
    'line_nr' => 2,
    'text' => '@tab in empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @item in empty multitable
',
    'line_nr' => 3,
    'text' => '@item in empty multitable',
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


$result_nodes_list{'empty_multitable_with_cells'} = '';

$result_sections_list{'empty_multitable_with_cells'} = '';

1;
