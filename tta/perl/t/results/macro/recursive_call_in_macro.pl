use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'recursive_call_in_macro'} = '*document_root C1
 *before_node_section C3
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{anorecurse}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: anorecurse{arg}\\n}
   {raw:@anorecurse{arg}\\n}
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
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;1>
   >*macro_call C1
   >|INFO
   >|command_name:{anorecurse}
    >*brace_arg
  >macro_expansion<end;1>
';


$result_texis{'recursive_call_in_macro'} = '@macro anorecurse{arg}
@anorecurse{arg}
@end macro


';


$result_texts{'recursive_call_in_macro'} = '

';

$result_errors{'recursive_call_in_macro'} = [
  {
    'error_line' => 'recursive call of macro anorecurse is not allowed; use @rmacro if needed (possibly involving @anorecurse)
',
    'line_nr' => 5,
    'macro' => 'anorecurse',
    'text' => 'recursive call of macro anorecurse is not allowed; use @rmacro if needed',
    'type' => 'error'
  }
];


$result_floats{'recursive_call_in_macro'} = {};


1;
