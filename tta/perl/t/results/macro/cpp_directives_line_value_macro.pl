use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'cpp_directives_line_value_macro'} = '*document_root C1
 *before_node_section C17
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *0 @macro C3 cpp_directives_line_value_macro.texi:l2
   |EXTRA
   |macro_name:{vvv}
   |misc_args:A{}
    *arguments_line C1
     {macro_line: vvv {}\\n}
    {raw:#line 30 "toto"\\n}
    *@end C1 cpp_directives_line_value_macro.texi:l4
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
   {#line 30 "toto"\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{vvv}
     >*brace_arg
   >macro_expansion<end;1><p:15>
  {empty_line:\\n}
  *1 @macro C3 cpp_directives_line_value_macro.texi:l8
  |EXTRA
  |macro_name:{machash}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: machash {}\\n}
   {raw:#\\n}
   *@end C1 cpp_directives_line_value_macro.texi:l10
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
   {# 130\\n}
   >SOURCEMARKS
   >macro_expansion<start;2>
    >*macro_call C1
    >|INFO
    >|command_name:{machash}
     >*brace_arg
   >macro_expansion<end;2><p:1>
  {empty_line:\\n}
  *2 @macro C3 cpp_directives_line_value_macro.texi:l14
  |EXTRA
  |macro_name:{numberfileflag}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: numberfileflag {arg}\\n}
   {raw:\\arg\\ "titi" 3\\arg\\\\n}
   *@end C1 cpp_directives_line_value_macro.texi:l16
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
   {# 900 "titi" 3900\\n}
   >SOURCEMARKS
   >macro_expansion<start;3><p:2>
    >*macro_call C1
    >|INFO
    >|command_name:{numberfileflag}
     >*brace_arg C1
      >{900}
   >macro_expansion<end;3><p:17>
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ hash #\\n}
   {rawline_arg:hash}
   {rawline_arg:#}
  {empty_line:\\n}
  *paragraph C1
   {#line 71 "example.c"\\n}
   >SOURCEMARKS
   >value_expansion<start;1>{#}
    >*@value C1
     >*brace_container C1
      >{hash}
   >value_expansion<end;1><p:1>
  {empty_line:\\n}
  {empty_line:\\n}
';


$result_texis{'cpp_directives_line_value_macro'} = '
@macro vvv {}
#line 30 "toto"
@end macro

#line 30 "toto"

@macro machash {}
#
@end macro

# 130

@macro numberfileflag {arg}
\\arg\\ "titi" 3\\arg\\
@end macro

# 900 "titi" 3900

@set hash #

#line 71 "example.c"


';


$result_texts{'cpp_directives_line_value_macro'} = '
#line 30 "toto"


# 130


# 900 "titi" 3900


#line 71 "example.c"


';

$result_errors{'cpp_directives_line_value_macro'} = [
  {
    'error_line' => 'unknown command `unknown\'
',
    'file_name' => 'cpp_directives_line_value_macro.texi',
    'line_nr' => 24,
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  }
];


1;
