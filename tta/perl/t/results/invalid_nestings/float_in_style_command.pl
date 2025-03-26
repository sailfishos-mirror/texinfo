use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'float_in_style_command'} = '*document_root C1
 *before_node_section C2
  *paragraph C1
   *@code C1 l1
    *brace_container C1
     {\\n}
  *0 @float C5 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_number:{1}
  |float_type:{A}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{B}
   *arguments_line C2
    *block_line_arg C1
     {A}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {B}
   *paragraph C1
    {in float\\n}
   *@caption C1 l4
    *brace_command_context C1
     *paragraph C1
      {Caption}
   {spaces_after_close_brace:\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
';


$result_texis{'float_in_style_command'} = '@code{
}@float A, B
in float
@caption{Caption}
@end float
';


$result_texts{'float_in_style_command'} = '
A, B
in float
';

$result_errors{'float_in_style_command'} = [
  {
    'error_line' => '@code missing closing brace
',
    'line_nr' => 1,
    'text' => '@code missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 6,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'float_in_style_command'} = 'A: 1
 F1: {B}
  C: Caption
';

1;
