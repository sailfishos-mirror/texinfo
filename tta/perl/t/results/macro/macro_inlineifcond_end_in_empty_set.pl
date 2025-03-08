use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_inlineifcond_end_in_empty_set'} = '*document_root C1
 *before_node_section C4
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{clearargendignored}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: clearargendignored\\n}
   {raw:ag,\\n}
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
  *paragraph C3
   {Toto }
   *1 @inlineifclear C2 l4
   |EXTRA
   |expand_index:{1}
   |format:{flag}
    *brace_arg C1
     {flag}
     >SOURCEMARKS
     >macro_expansion<start;1><p:2>
      >*macro_call C1
      >|INFO
      >|command_name:{clearargendignored}
       >*brace_arg
    *brace_arg C1
     {}
     >SOURCEMARKS
     >macro_expansion<end;1>
   {. After.\\n}
  {empty_line:\\n}
  *paragraph C3
   {Again with space }
   *2 @inlineifclear C2 l6
   |EXTRA
   |expand_index:{1}
   |format:{flag}
    *brace_arg C1
     {flag}
     >SOURCEMARKS
     >macro_expansion<start;2><p:2>
      >*macro_call C1
      >|INFO
      >|command_name:{clearargendignored}
       >*brace_arg
    *brace_arg
    |INFO
    |spaces_before_argument:
     |{ }
     |>SOURCEMARKS
     |>macro_expansion<end;2>
   {. After.\\n}
';


$result_texis{'macro_inlineifcond_end_in_empty_set'} = '@macro clearargendignored
ag,
@end macro
Toto @inlineifclear{flag,}. After.

Again with space @inlineifclear{flag, }. After.
';


$result_texts{'macro_inlineifcond_end_in_empty_set'} = 'Toto . After.

Again with space . After.
';

$result_errors{'macro_inlineifcond_end_in_empty_set'} = [];


1;
