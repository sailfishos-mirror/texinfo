use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'too_much_args'} = '*document_root C1
 *before_node_section C3
  *@macro C4 l1
  |EXTRA
  |macro_name:{twoargs}
  |misc_args:A{first|second}
   *arguments_line C1
    {macro_line: twoargs {first, second}\\n}
   {raw:first arg: \\first\\\\n}
   {raw:second arg: \\second\\\\n}
   *@end C1 l4
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
  *paragraph C2
   {first arg: one\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C2
    >|INFO
    >|command_name:{twoargs}
     >*brace_arg C1
      >{one}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{two, three}
   {second arg: two, three.\\n}
   >SOURCEMARKS
   >macro_expansion<end;1><p:22>
';


$result_texis{'too_much_args'} = '@macro twoargs {first, second}
first arg: \\first\\
second arg: \\second\\
@end macro

first arg: one
second arg: two, three.
';


$result_texts{'too_much_args'} = '
first arg: one
second arg: two, three.
';

$result_errors{'too_much_args'} = [
  {
    'error_line' => 'macro `twoargs\' called with too many args
',
    'line_nr' => 6,
    'text' => 'macro `twoargs\' called with too many args',
    'type' => 'error'
  }
];


1;
