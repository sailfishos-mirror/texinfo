use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_in_ifset_set'} = '*document_root C1
 *before_node_section C9
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ a\\n}
   {rawline_arg:a}
   {rawline_arg:}
  {empty_line:\\n}
  *@macro C3 l4
  |EXTRA
  |macro_name:{truc}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: truc {}\\n}
   {raw:truc\\n}
   *@end C1 l6
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
  >SOURCEMARKS
  >expanded_conditional_command<start;1><p:1>
   >*@ifset C1 l8
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{a}
  *@unmacro C1
  |INFO
  |arg_line:{ truc\\n}
   {rawline_arg:truc}
  *@macro C3 l10
  |EXTRA
  |macro_name:{truc}
  |misc_args:A{}
  >SOURCEMARKS
  >expanded_conditional_command<end;1>
   >*@end C1 l13
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{ifset}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{ifset}
   *arguments_line C1
    {macro_line: truc{}\\n}
   {raw:in ifset\\n}
   *@end C1 l12
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
   {in ifset\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{truc}
     >*brace_arg
   >macro_expansion<end;1><p:8>
';


$result_texis{'macro_in_ifset_set'} = '
@set a

@macro truc {}
truc
@end macro

@unmacro truc
@macro truc{}
in ifset
@end macro

in ifset
';


$result_texts{'macro_in_ifset_set'} = '



in ifset
';

$result_errors{'macro_in_ifset_set'} = [];


$result_nodes_list{'macro_in_ifset_set'} = '';

$result_sections_list{'macro_in_ifset_set'} = '';

1;
