use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'begin_conditional_in_linemacro'} = '*document_root C1
 *before_node_section C5
  *0 @linemacro C3 l1
  |EXTRA
  |macro_name:{lm}
  |misc_args:A{a}
   *arguments_line C1
    {macro_line: lm {a}\\n}
   {raw:b \\a\\ a\\n}
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
  *paragraph C1
   {b \\n}
   >SOURCEMARKS
   >linemacro_expansion<start;1>
    >*linemacro_call C1
    >|INFO
    >|command_name:{lm}
    >|spaces_before_argument:
     >|{ }
     >*line_arg C1
      >{bracketed_linemacro_arg:\\n@ifset}
   >ignored_conditional_block<1><p:3>
    >*@ifset C3 l6:@lm
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{a}
       >>SOURCEMARKS
       >>linemacro_expansion<end;1><p:1>
     >{raw:in ifset\\n}
     >*@end C1 l8
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
  {empty_line:\\n}
  *paragraph C2
   {b \\n}
   >SOURCEMARKS
   >linemacro_expansion<start;2>
    >*linemacro_call C1
    >|INFO
    >|command_name:{lm}
    >|spaces_before_argument:
     >|{ }
     >*line_arg C1
      >{bracketed_linemacro_arg:\\n@ifclear}
   >expanded_conditional_command<start;1><p:3>
    >*@ifclear C1 l11:@lm
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{a}
       >>SOURCEMARKS
       >>linemacro_expansion<end;2><p:1>
   {in ifclear\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;1><p:11>
    >*@end C1 l13
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
';


$result_texis{'begin_conditional_in_linemacro'} = '@linemacro lm {a}
b \\a\\ a
@end linemacro

b 

b 
in ifclear
';


$result_texts{'begin_conditional_in_linemacro'} = '
b 

b 
in ifclear
';

$result_errors{'begin_conditional_in_linemacro'} = [];


$result_floats{'begin_conditional_in_linemacro'} = {};


1;
