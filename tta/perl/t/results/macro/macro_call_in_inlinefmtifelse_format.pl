use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_call_in_inlinefmtifelse_format'} = '*document_root C1
 *before_node_section C3
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{inlinefirstarg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: inlinefirstarg\\n}
   {raw:ex, before, after\\n}
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
  *paragraph C3
   {Toto }
   *1 @inlinefmtifelse C3 l5
   |EXTRA
   |expand_index:{2}
   |format:{tex}
    *brace_arg C1
     {tex}
     >SOURCEMARKS
     >macro_expansion<start;1><p:1>
      >*macro_call C1
      >|INFO
      >|command_name:{inlinefirstarg}
       >*brace_arg
    *elided_brace_command_arg C1
     {raw: before}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {after}
     >SOURCEMARKS
     >macro_expansion<end;1><p:5>
   { done.\\n}
';


$result_texis{'macro_call_in_inlinefmtifelse_format'} = '@macro inlinefirstarg
ex, before, after
@end macro

Toto @inlinefmtifelse{tex, before, after} done.
';


$result_texts{'macro_call_in_inlinefmtifelse_format'} = '
Toto after done.
';

$result_errors{'macro_call_in_inlinefmtifelse_format'} = [];


$result_floats{'macro_call_in_inlinefmtifelse_format'} = {};


1;
