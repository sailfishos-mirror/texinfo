use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'invalid_command_and_brace_in_table'} = '*document_root C1
 *before_node_section C1
  *0 @table C3 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @asis l1
   *before_item C2
    {spaces_before_paragraph: }
    *paragraph C3
     {,, title\\n}
     {long title\\n}
     {Item line\\n}
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


$result_texis{'invalid_command_and_brace_in_table'} = '@table @asis
 ,, title
long title
Item line
@end table
';


$result_texts{'invalid_command_and_brace_in_table'} = ',, title
long title
Item line
';

$result_errors{'invalid_command_and_brace_in_table'} = [
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 2,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `itemTop\'
',
    'line_nr' => 2,
    'text' => 'unknown command `itemTop\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 3,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @table has text but no @item
',
    'line_nr' => 1,
    'text' => '@table has text but no @item',
    'type' => 'warning'
  }
];


1;
