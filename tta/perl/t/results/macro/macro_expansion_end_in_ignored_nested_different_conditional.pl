use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_expansion_end_in_ignored_nested_different_conditional'} = '*document_root C1
 *before_node_section C2
  *0 @macro C5 l1
  |EXTRA
  |macro_name:{beginnestedcond}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: beginnestedcond\\n}
   {raw:@ifset a\\n}
   {raw:@ifclear b\\n}
   {raw:GG\\n}
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
  >SOURCEMARKS
  >macro_expansion<start;1><p:1>
   >*macro_call C1
   >|INFO
   >|command_name:{beginnestedcond}
    >*brace_arg
  >ignored_conditional_block<1><p:1>
   >*@ifset C5 l7:@beginnestedcond
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{a}
    >{raw:@ifclear b\\n}
    >{raw:GG}
    >>SOURCEMARKS
    >>macro_expansion<end;1><p:2>
    >{raw:\\n}
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
';


$result_texis{'macro_expansion_end_in_ignored_nested_different_conditional'} = '@macro beginnestedcond
@ifset a
@ifclear b
GG
@end macro

';


$result_texts{'macro_expansion_end_in_ignored_nested_different_conditional'} = '
';

$result_errors{'macro_expansion_end_in_ignored_nested_different_conditional'} = [
  {
    'error_line' => 'unmatched `@end ifclear\'
',
    'line_nr' => 9,
    'text' => 'unmatched `@end ifclear\'',
    'type' => 'error'
  }
];


$result_floats{'macro_expansion_end_in_ignored_nested_different_conditional'} = {};


1;
