use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_expands_to_empty'} = '*document_root C1
 *before_node_section C4
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{foo}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: foo {arg}\\n}
   {raw:\\arg\\\\n}
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
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;1>
   >*macro_call C1
   >|INFO
   >|command_name:{foo}
    >*brace_arg
  >macro_expansion<end;1>
  *paragraph C1
   {aa\\n}
   >SOURCEMARKS
   >macro_expansion<start;2>
    >*macro_call C1
    >|INFO
    >|command_name:{foo}
     >*brace_arg C1
      >{aa}
   >macro_expansion<end;2><p:2>
';


$result_texis{'macro_expands_to_empty'} = '@macro foo {arg}
\\arg\\
@end macro


aa
';


$result_texts{'macro_expands_to_empty'} = '

aa
';

$result_errors{'macro_expands_to_empty'} = [];


1;
