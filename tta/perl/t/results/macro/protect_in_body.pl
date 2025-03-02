use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'protect_in_body'} = '*document_root C1
 *before_node_section C3
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{macroone}
  |misc_args:A{arg1|arg2}
   *arguments_line C1
    {macro_line: macroone { arg1 , arg2 }\\n}
   {raw:result: @emph{\\arg1\\} protected \\\\ -> \\\\arg1\\\\ @emph{\\arg2\\}\\n}
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
  *paragraph C5
   {the result: }
   >SOURCEMARKS
   >macro_expansion<start;1><p:4>
    >*macro_call C2
    >|INFO
    >|command_name:{macroone}
    >|spaces_after_cmd_before_arg:
     >|{ }
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{@samp{f\\irst arg}}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{second arg }
   *1 @emph C1 l5:@macroone
    *brace_container C1
     *2 @samp C1 l5:@macroone
      *brace_container C1
       {f\\irst arg}
   { protected \\ -> \\arg1\\ }
   *3 @emph C1 l5:@macroone
   >SOURCEMARKS
   >macro_expansion<end;1>
    *brace_container C1
     {second arg }
   { after macro.\\n}
';


$result_texis{'protect_in_body'} = '@macro macroone { arg1 , arg2 }
result: @emph{\\arg1\\} protected \\\\ -> \\\\arg1\\\\ @emph{\\arg2\\}
@end macro

the result: @emph{@samp{f\\irst arg}} protected \\ -> \\arg1\\ @emph{second arg } after macro.
';


$result_texts{'protect_in_body'} = '
the result: f\\irst arg protected \\ -> \\arg1\\ second arg  after macro.
';

$result_errors{'protect_in_body'} = [];


$result_floats{'protect_in_body'} = {};


1;
