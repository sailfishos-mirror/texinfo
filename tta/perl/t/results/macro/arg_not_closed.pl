use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'arg_not_closed'} = '*document_root C1
 *before_node_section C3
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{foo}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: foo {arg}\\n}
   {raw:foo\\n}
   *@end C1 l3
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
  *paragraph C1
   {call foo\\n}
   >SOURCEMARKS
   >macro_expansion<start;1><p:5>
    >*macro_call C1
    >|INFO
    >|command_name:{foo}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{something\\n}
   >macro_expansion<end;1><p:8>
';


$result_texis{'arg_not_closed'} = '@macro foo {arg}
foo
@end macro

call foo
';


$result_texts{'arg_not_closed'} = '
call foo
';

$result_errors{'arg_not_closed'} = [
  {
    'error_line' => '@foo missing closing brace
',
    'line_nr' => 5,
    'text' => '@foo missing closing brace',
    'type' => 'error'
  }
];


1;
