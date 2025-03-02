use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_macro_argument'} = '*document_root C1
 *before_node_section C7
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{mymacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: mymacro{}\\n}
   {raw:text\\n}
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
  *paragraph C1
   {text text text text\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{mymacro}
     >*brace_arg
   >macro_expansion<end;1><p:4>
   >macro_expansion<start;2><p:5>
    >*macro_call C1
    >|INFO
    >|command_name:{mymacro}
     >*brace_arg
     >|INFO
     >|spaces_before_argument:
      >|{ }
   >macro_expansion<end;2><p:9>
   >macro_expansion<start;3><p:10>
    >*macro_call C1
    >|INFO
    >|command_name:{mymacro}
     >*brace_arg
     >|INFO
     >|spaces_before_argument:
      >|{  }
   >macro_expansion<end;3><p:14>
   >macro_expansion<start;4><p:15>
    >*macro_call C1
    >|INFO
    >|command_name:{mymacro}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{  }
      >{x}
   >macro_expansion<end;4><p:19>
  {empty_line:\\n}
  *1 @macro C3 l7
  |EXTRA
  |macro_name:{mytwo}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: mytwo{arg}\\n}
   {raw:X\\arg\\X\\n}
   *@end C1 l9
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
   {XX XX XX XxX}
   >SOURCEMARKS
   >macro_expansion<start;5>
    >*macro_call C1
    >|INFO
    >|command_name:{mytwo}
     >*brace_arg
   >macro_expansion<end;5><p:2>
   >macro_expansion<start;6><p:3>
    >*macro_call C1
    >|INFO
    >|command_name:{mytwo}
     >*brace_arg
     >|INFO
     >|spaces_before_argument:
      >|{ }
   >macro_expansion<end;6><p:5>
   >macro_expansion<start;7><p:6>
    >*macro_call C1
    >|INFO
    >|command_name:{mytwo}
     >*brace_arg
     >|INFO
     >|spaces_before_argument:
      >|{  }
   >macro_expansion<end;7><p:8>
   >macro_expansion<start;8><p:9>
    >*macro_call C1
    >|INFO
    >|command_name:{mytwo}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{  }
      >{x}
   >macro_expansion<end;8><p:12>
';


$result_texis{'empty_macro_argument'} = '@macro mymacro{}
text
@end macro

text text text text

@macro mytwo{arg}
X\\arg\\X
@end macro

XX XX XX XxX';


$result_texts{'empty_macro_argument'} = '
text text text text


XX XX XX XxX';

$result_errors{'empty_macro_argument'} = [
  {
    'error_line' => 'macro `mymacro\' declared without argument called with an argument
',
    'line_nr' => 5,
    'text' => 'macro `mymacro\' declared without argument called with an argument',
    'type' => 'error'
  }
];


$result_floats{'empty_macro_argument'} = {};


1;
