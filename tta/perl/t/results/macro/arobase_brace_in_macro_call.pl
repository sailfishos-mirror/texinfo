use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'arobase_brace_in_macro_call'} = '*document_root C1
 *before_node_section C5
  *0 @macro C4 l1
  |EXTRA
  |macro_name:{simplemac}
  |misc_args:A{arg1|arg2}
   *arguments_line C1
    {macro_line: simplemac { arg1 , arg2 }\\n}
   {raw:first: \\arg1\\|\\n}
   {raw:second: \\arg2\\|\\n}
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
  *paragraph C6
   {first: }
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{simplemac}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{@{ , @} }
   *@{
   { , }
   *@}
   { |\\n}
   {second: |\\n}
   >SOURCEMARKS
   >macro_expansion<end;1><p:9>
  {empty_line:\\n}
  *paragraph C6
   {first: }
   >SOURCEMARKS
   >macro_expansion<start;2>
    >*macro_call C1
    >|INFO
    >|command_name:{simplemac}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{@}
   *@|
   {\\n}
   {second: | , }
   >SOURCEMARKS
   >macro_expansion<end;2><p:9>
   *@{
   { \\n}
';


$result_texis{'arobase_brace_in_macro_call'} = '@macro simplemac { arg1 , arg2 }
first: \\arg1\\|
second: \\arg2\\|
@end macro

first: @{ , @} |
second: |

first: @|
second: | , @{ 
';


$result_texts{'arobase_brace_in_macro_call'} = '
first: { , } |
second: |

first: 
second: | , { 
';

$result_errors{'arobase_brace_in_macro_call'} = [
  {
    'error_line' => '@| should only appear in heading or footing (possibly involving @simplemac)
',
    'line_nr' => 8,
    'macro' => 'simplemac',
    'text' => '@| should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 8,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'arobase_brace_in_macro_call'} = {};


1;
