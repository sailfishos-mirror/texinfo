use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'implicit_quoting_recursion'} = '*document_root C1
 *before_node_section C3
  *0 @rmacro C3 l1
  |EXTRA
  |macro_name:{cat}
  |misc_args:A{a|b}
   *arguments_line C1
    {macro_line: cat{a,b}\\n}
   {raw:\\a\\\\b\\\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{rmacro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {rmacro}
  {empty_line:\\n}
  *paragraph C1
   {natopocotuototam\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*rmacro_call C2
    >|INFO
    >|command_name:{cat}
     >*brace_arg C1
      >{@cat{@cat{@cat{@cat{@cat{na, to}, po}, co}, tu}, oto}}
     >*brace_arg C1
      >{tam}
   >macro_expansion<start;2>
    >*rmacro_call C2
    >|INFO
    >|command_name:{cat}
     >*brace_arg C1
      >{@cat{@cat{@cat{@cat{na, to}, po}, co}, tu}}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{oto}
   >macro_expansion<start;3>
    >*rmacro_call C2
    >|INFO
    >|command_name:{cat}
     >*brace_arg C1
      >{@cat{@cat{@cat{na, to}, po}, co}}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{tu}
   >macro_expansion<start;4>
    >*rmacro_call C2
    >|INFO
    >|command_name:{cat}
     >*brace_arg C1
      >{@cat{@cat{na, to}, po}}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{co}
   >macro_expansion<start;5>
    >*rmacro_call C2
    >|INFO
    >|command_name:{cat}
     >*brace_arg C1
      >{@cat{na, to}}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{po}
   >macro_expansion<start;6>
    >*rmacro_call C2
    >|INFO
    >|command_name:{cat}
     >*brace_arg C1
      >{na}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{to}
   >macro_expansion<end;6><p:4>
   >macro_expansion<end;5><p:6>
   >macro_expansion<end;4><p:8>
   >macro_expansion<end;3><p:10>
   >macro_expansion<end;2><p:13>
   >macro_expansion<end;1><p:16>
';


$result_texis{'implicit_quoting_recursion'} = '@rmacro cat{a,b}
\\a\\\\b\\
@end rmacro

natopocotuototam
';


$result_texts{'implicit_quoting_recursion'} = '
natopocotuototam
';

$result_errors{'implicit_quoting_recursion'} = [];


$result_floats{'implicit_quoting_recursion'} = {};


1;
