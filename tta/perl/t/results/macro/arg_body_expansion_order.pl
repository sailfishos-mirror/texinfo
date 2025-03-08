use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'arg_body_expansion_order'} = '*document_root C1
 *before_node_section C8
  {empty_line:\\n}
  *0 @macro C3 l2
  |EXTRA
  |macro_name:{othermacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: othermacro\\n}
   {raw:initial\\n}
   *@end C1 l4
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
  *1 @macro C7 l6
  |EXTRA
  |macro_name:{redefineothermacro}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: redefineothermacro {arg}\\n}
   {raw:@unmacro othermacro\\n}
   {raw:@macro othermacro\\n}
   {raw:different\\n}
   {raw:@end macro\\n}
   {raw:\\arg\\\\n}
   *@end C1 l12
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
   >|command_name:{redefineothermacro}
    >*brace_arg C1
     >{@othermacro{}}
  *@unmacro C1
  |INFO
  |arg_line:{ othermacro\\n}
   {rawline_arg:othermacro}
  *2 @macro C3 l14:@redefineothermacro
  |EXTRA
  |macro_name:{othermacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: othermacro\\n}
   {raw:different\\n}
   *@end C1 l14:@redefineothermacro
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
  *paragraph C1
   {different\\n}
   >SOURCEMARKS
   >macro_expansion<start;2>
    >*macro_call C1
    >|INFO
    >|command_name:{othermacro}
     >*brace_arg
   >macro_expansion<end;2><p:9>
   >macro_expansion<end;1><p:9>
';


$result_texis{'arg_body_expansion_order'} = '
@macro othermacro
initial
@end macro

@macro redefineothermacro {arg}
@unmacro othermacro
@macro othermacro
different
@end macro
\\arg\\
@end macro

@unmacro othermacro
@macro othermacro
different
@end macro
different
';


$result_texts{'arg_body_expansion_order'} = '


different
';

$result_errors{'arg_body_expansion_order'} = [];


1;
