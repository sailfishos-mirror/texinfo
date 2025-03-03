use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'cpp_directives_in_macro'} = '*document_root C1
 *before_node_section C9
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *0 @macro C3 cpp_directives_in_macro.texi:l2
   |EXTRA
   |macro_name:{simplemacro}
   |misc_args:A{out}
    *arguments_line C1
     {macro_line: simplemacro{out}\\n}
    {raw:\\out\\\\n}
    *@end C1 cpp_directives_in_macro.texi:l4
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
   {#line 100 "in_arg_file"\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{simplemacro}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{\\n}
      >{#line 100 "in_arg_file"\\n\\n@unknownin\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<end;1><p:1>
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
';


$result_texis{'cpp_directives_in_macro'} = '
@macro simplemacro{out}
\\out\\
@end macro

#line 100 "in_arg_file"






';


$result_texts{'cpp_directives_in_macro'} = '
#line 100 "in_arg_file"






';

$result_errors{'cpp_directives_in_macro'} = [
  {
    'error_line' => 'unknown command `unknownin\' (possibly involving @simplemacro)
',
    'file_name' => 'cpp_directives_in_macro.texi',
    'line_nr' => 10,
    'macro' => 'simplemacro',
    'text' => 'unknown command `unknownin\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknownout\'
',
    'file_name' => 'cpp_directives_in_macro.texi',
    'line_nr' => 12,
    'text' => 'unknown command `unknownout\'',
    'type' => 'error'
  }
];


1;
