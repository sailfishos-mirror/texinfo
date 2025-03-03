use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'group_beginning_and_end_on_line'} = '*document_root C1
 *before_node_section C1
  *0 @group C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
     {within}
   *@end C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{group}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {group}
';


$result_texis{'group_beginning_and_end_on_line'} = '@group within @end group
';


$result_texts{'group_beginning_and_end_on_line'} = '';

$result_errors{'group_beginning_and_end_on_line'} = [
  {
    'error_line' => 'warning: @end should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@end should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unexpected argument on @group line: within
',
    'line_nr' => 1,
    'text' => 'unexpected argument on @group line: within',
    'type' => 'warning'
  }
];


1;
