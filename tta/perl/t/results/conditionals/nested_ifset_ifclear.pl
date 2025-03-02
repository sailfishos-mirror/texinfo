use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nested_ifset_ifclear'} = '*document_root C1
 *before_node_section C16
  {empty_line:\\n}
  *0 @macro C10 l2
  |EXTRA
  |macro_name:{conditionals}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: conditionals{}\\n}
   {raw:@ifset somevar\\n}
   {raw:@ifset anothervar\\n}
   {raw:Both somevar and anothervar are set.\\n}
   {raw:@end ifset\\n}
   {raw:@ifclear anothervar\\n}
   {raw:Somevar is set, anothervar is not.\\n}
   {raw:@end ifclear\\n}
   {raw:@end ifset\\n}
   *@end C1 l11
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
  *@set C2
  |INFO
  |arg_line:{ somevar\\n}
   {rawline_arg:somevar}
   {rawline_arg:}
  *@set C2
  |INFO
  |arg_line:{ anothervar\\n}
  >SOURCEMARKS
  >macro_expansion<start;1>
   >*macro_call C1
   >|INFO
   >|command_name:{conditionals}
    >*brace_arg
  >expanded_conditional_command<start;1>
   >*@ifset C1 l15:@conditionals
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{somevar}
  >expanded_conditional_command<start;2>
   >*@ifset C1 l15:@conditionals
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{anothervar}
   {rawline_arg:anothervar}
   {rawline_arg:}
  *paragraph C1
   {Both somevar and anothervar are set.\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;2><p:37>
    >*@end C1 l15:@conditionals
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
   >ignored_conditional_block<1><p:37>
    >*@ifclear C3 l15:@conditionals
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{anothervar}
     >{raw:Somevar is set, anothervar is not.\\n}
     >*@end C1 l15:@conditionals
     >|INFO
     >|spaces_before_argument:
      >|{ }
     >|EXTRA
     >|text_arg:{ifclear}
      >*line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{ifclear}
   >expanded_conditional_command<end;1><p:37>
    >*@end C1 l15:@conditionals
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
      >>SOURCEMARKS
      >>macro_expansion<end;1><p:5>
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ somevar\\n}
   {rawline_arg:somevar}
   {rawline_arg:}
  *@clear C1
  |INFO
  |arg_line:{ anothervar\\n}
  >SOURCEMARKS
  >macro_expansion<start;2>
   >*macro_call C1
   >|INFO
   >|command_name:{conditionals}
    >*brace_arg
  >expanded_conditional_command<start;3>
   >*@ifset C1 l19:@conditionals
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{somevar}
  >ignored_conditional_block<2>
   >*@ifset C3 l19:@conditionals
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{anothervar}
    >{raw:Both somevar and anothervar are set.\\n}
    >*@end C1 l19:@conditionals
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
  >expanded_conditional_command<start;4>
   >*@ifclear C1 l19:@conditionals
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{anothervar}
   {rawline_arg:anothervar}
  *paragraph C1
   {Somevar is set, anothervar is not.\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;4><p:35>
    >*@end C1 l19:@conditionals
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifclear}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifclear}
   >expanded_conditional_command<end;3><p:35>
    >*@end C1 l19:@conditionals
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
      >>SOURCEMARKS
      >>macro_expansion<end;2><p:5>
  {empty_line:\\n}
  *@clear C1
  |INFO
  |arg_line:{ somevar\\n}
   {rawline_arg:somevar}
  *@set C2
  |INFO
  |arg_line:{ anothervar\\n}
  >SOURCEMARKS
  >macro_expansion<start;3>
   >*macro_call C1
   >|INFO
   >|command_name:{conditionals}
    >*brace_arg
  >ignored_conditional_block<3>
   >*@ifset C8 l23:@conditionals
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{somevar}
    >{raw:@ifset anothervar\\n}
    >{raw:Both somevar and anothervar are set.\\n}
    >{raw:@end ifset\\n}
    >{raw:@ifclear anothervar\\n}
    >{raw:Somevar is set, anothervar is not.\\n}
    >{raw:@end ifclear\\n}
    >*@end C1 l23:@conditionals
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
      >>SOURCEMARKS
      >>macro_expansion<end;3><p:5>
   {rawline_arg:anothervar}
   {rawline_arg:}
  {empty_line:\\n}
  *@clear C1
  |INFO
  |arg_line:{ somevar\\n}
   {rawline_arg:somevar}
  *@clear C1
  |INFO
  |arg_line:{ anothervar\\n}
  >SOURCEMARKS
  >macro_expansion<start;4>
   >*macro_call C1
   >|INFO
   >|command_name:{conditionals}
    >*brace_arg
  >ignored_conditional_block<4>
   >*@ifset C8 l27:@conditionals
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{somevar}
    >{raw:@ifset anothervar\\n}
    >{raw:Both somevar and anothervar are set.\\n}
    >{raw:@end ifset\\n}
    >{raw:@ifclear anothervar\\n}
    >{raw:Somevar is set, anothervar is not.\\n}
    >{raw:@end ifclear\\n}
    >*@end C1 l27:@conditionals
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
      >>SOURCEMARKS
      >>macro_expansion<end;4><p:5>
   {rawline_arg:anothervar}
';


$result_texis{'nested_ifset_ifclear'} = '
@macro conditionals{}
@ifset somevar
@ifset anothervar
Both somevar and anothervar are set.
@end ifset
@ifclear anothervar
Somevar is set, anothervar is not.
@end ifclear
@end ifset
@end macro

@set somevar
@set anothervar
Both somevar and anothervar are set.

@set somevar
@clear anothervar
Somevar is set, anothervar is not.

@clear somevar
@set anothervar

@clear somevar
@clear anothervar
';


$result_texts{'nested_ifset_ifclear'} = '

Both somevar and anothervar are set.

Somevar is set, anothervar is not.


';

$result_errors{'nested_ifset_ifclear'} = [];


$result_floats{'nested_ifset_ifclear'} = {};


1;
