use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'ifset_in_macro'} = '*document_root C1
 *before_node_section C2
  *@macro C5 l1
  |EXTRA
  |macro_name:{note}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: note {arg}\\n}
   {raw:@ifset notes \\n}
   {raw:\\arg\\\\n}
   {raw:@end ifset\\n}
   *@end C1 l5
   |EXTRA
   |text_arg:{macro}
    *line_arg C3
     {spaces_before_argument: }
     {macro}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;1><p:1>
   >*macro_call@note C1
    >*brace_arg C1
    >|INFO
    >|spaces_before_argument:
     >|{spaces_before_argument:\\n}
     >{macro_call_arg_text:arg\\n}
  >ignored_conditional_block<1><p:1>
   >*@ifset C4 l9:@note
    >*arguments_line C1
     >*block_line_arg C3
      >{spaces_before_argument: }
      >{notes}
      >{spaces_after_argument: \\n}
    >{raw:arg\\n}
    >{raw:\\n}
    >*@end C1 l9:@note
    >|EXTRA
    >|text_arg:{ifset}
     >*line_arg C3
      >{spaces_before_argument: }
      >{ifset}
      >>SOURCEMARKS
      >>macro_expansion<end;1><p:5>
      >{spaces_after_argument:\\n}
';


$result_texis{'ifset_in_macro'} = '@macro note {arg}
@ifset notes 
\\arg\\
@end ifset
@end macro

';


$result_texts{'ifset_in_macro'} = '
';

$result_errors{'ifset_in_macro'} = '';

$result_nodes_list{'ifset_in_macro'} = '';

$result_sections_list{'ifset_in_macro'} = '';

$result_sectioning_root{'ifset_in_macro'} = '';

$result_headings_list{'ifset_in_macro'} = '';

1;
