use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_macro_no_arg'} = '*document_root C1
 *before_node_section C5
  *0 @macro C2 l1
  |EXTRA
  |macro_name:{foo}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: foo\\n}
   *@end C1 l2
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
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;1>
   >*macro_call
   >|INFO
   >|command_name:{foo}
  >macro_expansion<end;1>
  {empty_line:\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;2>
   >*macro_call C1
   >|INFO
   >|command_name:{foo}
    >*brace_arg
  >macro_expansion<end;2>
';


$result_texis{'empty_macro_no_arg'} = '@macro foo
@end macro




';


$result_texts{'empty_macro_no_arg'} = '



';

$result_errors{'empty_macro_no_arg'} = [];


1;
