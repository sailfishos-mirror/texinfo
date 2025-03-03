use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_recursive_macro_call'} = '*document_root C1
 *before_node_section C6
  {empty_line:\\n}
  *0 @macro C3 l2
  |EXTRA
  |macro_name:{macone}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: macone {arg}\\n}
   {raw:@mactwo{}\\n}
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
  *1 @macro C3 l6
  |EXTRA
  |macro_name:{mactwo}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: mactwo{arg}\\n}
   {raw:@macone{}\\n}
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
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;1>
   >*macro_call C1
   >|INFO
   >|command_name:{mactwo}
    >*brace_arg
  >macro_expansion<start;2>
   >*macro_call C1
   >|INFO
   >|command_name:{macone}
    >*brace_arg
  >macro_expansion<end;2>
  >macro_expansion<end;1>
';


$result_texis{'double_recursive_macro_call'} = '
@macro macone {arg}
@mactwo{}
@end macro

@macro mactwo{arg}
@macone{}
@end macro


';


$result_texts{'double_recursive_macro_call'} = '



';

$result_errors{'double_recursive_macro_call'} = [
  {
    'error_line' => 'recursive call of macro mactwo is not allowed; use @rmacro if needed (possibly involving @macone)
',
    'line_nr' => 10,
    'macro' => 'macone',
    'text' => 'recursive call of macro mactwo is not allowed; use @rmacro if needed',
    'type' => 'error'
  }
];


1;
