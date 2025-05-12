use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'protection_of_end_of_line_by_command'} = '*document_root C1
 *before_node_section C3
  *@linemacro C3 l1
  |EXTRA
  |macro_name:{lm}
  |misc_args:A{one}
   *arguments_line C1
    {macro_line: lm {one}\\n}
   {raw:\\one\\bullet{}\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{linemacro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {linemacro}
  {empty_line:\\n}
  >SOURCEMARKS
  >linemacro_expansion<start;1><p:1>
   >*linemacro_call C1
   >|INFO
   >|command_name:{lm}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{@\\n}
  *paragraph C2
   *@\\n
   {bullet\\n}
   >SOURCEMARKS
   >linemacro_expansion<end;1><p:6>
';


$result_texis{'protection_of_end_of_line_by_command'} = '@linemacro lm {one}
\\one\\bullet{}
@end linemacro

@
bullet
';


$result_texts{'protection_of_end_of_line_by_command'} = '
 bullet
';

$result_errors{'protection_of_end_of_line_by_command'} = [
  {
    'error_line' => 'misplaced { (possibly involving @lm)
',
    'line_nr' => 6,
    'macro' => 'lm',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @lm)
',
    'line_nr' => 6,
    'macro' => 'lm',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_nodes_list{'protection_of_end_of_line_by_command'} = '';

$result_sections_list{'protection_of_end_of_line_by_command'} = '';

1;
