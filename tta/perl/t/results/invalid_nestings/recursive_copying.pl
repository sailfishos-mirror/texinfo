use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'recursive_copying'} = '*document_root C1
 *before_node_section C3
  *@copying C5 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *paragraph C1
    {In copying.\\n}
   {empty_line:\\n}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{copying}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {copying}
  {empty_line:\\n}
  *@insertcopying C1 l8
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'recursive_copying'} = '@copying

In copying.

@end copying

@insertcopying
';


$result_texts{'recursive_copying'} = '
';

$result_errors{'recursive_copying'} = [
  {
    'error_line' => '@insertcopying not allowed inside `@copying\' block
',
    'line_nr' => 5,
    'text' => '@insertcopying not allowed inside `@copying\' block',
    'type' => 'error'
  }
];


$result_nodes_list{'recursive_copying'} = '';

$result_sections_list{'recursive_copying'} = '';

1;
