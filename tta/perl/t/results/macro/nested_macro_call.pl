use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nested_macro_call'} = '*document_root C1
 *before_node_section C5
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{machin}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: machin{}\\n}
   {raw:(machin)\\n}
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
  *1 @macro C4 l5
  |EXTRA
  |macro_name:{truc}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: truc{}\\n}
   {raw:@machin{}\\n}
   {raw:\\n}
   *@end C1 l8
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
   {Before (machin)\\n}
   >SOURCEMARKS
   >macro_expansion<start;1><p:7>
    >*macro_call C1
    >|INFO
    >|command_name:{truc}
     >*brace_arg
   >macro_expansion<start;2><p:7>
    >*macro_call C1
    >|INFO
    >|command_name:{machin}
     >*brace_arg
   >macro_expansion<end;2><p:15>
   >macro_expansion<end;1><p:16>
   { after truc.\\n}
';


$result_texis{'nested_macro_call'} = '@macro machin{}
(machin)
@end macro

@macro truc{}
@machin{}

@end macro

Before (machin)
 after truc.
';


$result_texts{'nested_macro_call'} = '

Before (machin)
 after truc.
';

$result_errors{'nested_macro_call'} = [];


$result_floats{'nested_macro_call'} = {};


1;
