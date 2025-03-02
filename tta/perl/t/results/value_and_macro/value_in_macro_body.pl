use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_in_macro_body'} = '*document_root C1
 *before_node_section C5
  *@set C2
  |INFO
  |arg_line:{ bodyarg \\arg\\ \\n}
   {rawline_arg:bodyarg}
   {rawline_arg:\\arg\\}
  {empty_line:\\n}
  *0 @macro C3 l3
  |EXTRA
  |macro_name:{testvaluebody}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: testvaluebody { arg }\\n}
   {raw:result: @emph{\\@value{bodyarg}\\  }\\n}
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
  *paragraph C3
   {result: }
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{testvaluebody}
     >*brace_arg C1
      >{macro_arg1}
   *1 @emph C1 l7:@testvaluebody
   >SOURCEMARKS
   >macro_expansion<end;1>
    *brace_container C1
     {\\\\arg\\  }
     >SOURCEMARKS
     >value_expansion<start;1><p:1>{\\arg\\}
      >*@value C1
       >*brace_container C1
        >{bodyarg}
     >value_expansion<end;1><p:6>
   {\\n}
';


$result_texis{'value_in_macro_body'} = '@set bodyarg \\arg\\ 

@macro testvaluebody { arg }
result: @emph{\\@value{bodyarg}\\  }
@end macro

result: @emph{\\\\arg\\  }
';


$result_texts{'value_in_macro_body'} = '

result: \\\\arg\\  
';

$result_errors{'value_in_macro_body'} = [
  {
    'error_line' => '\\ in @testvaluebody expansion followed `@value{bodyarg}\' instead of parameter name or \\
',
    'line_nr' => 7,
    'text' => '\\ in @testvaluebody expansion followed `@value{bodyarg}\' instead of parameter name or \\',
    'type' => 'error'
  }
];


$result_floats{'value_in_macro_body'} = {};


1;
