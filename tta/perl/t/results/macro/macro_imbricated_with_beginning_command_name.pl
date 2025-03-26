use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_imbricated_with_beginning_command_name'} = '*document_root C1
 *before_node_section C2
  *@macro C5 l1
  |EXTRA
  |macro_name:{foo}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: foo\\n}
   {raw:\\n}
   {raw:@macrototo\\n}
   {raw:in macrototo\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
';


$result_texis{'macro_imbricated_with_beginning_command_name'} = '@macro foo

@macrototo
in macrototo
@end macro

';


$result_texts{'macro_imbricated_with_beginning_command_name'} = '
';

$result_errors{'macro_imbricated_with_beginning_command_name'} = [
  {
    'error_line' => 'unmatched `@end macro\'
',
    'line_nr' => 7,
    'text' => 'unmatched `@end macro\'',
    'type' => 'error'
  }
];


1;
