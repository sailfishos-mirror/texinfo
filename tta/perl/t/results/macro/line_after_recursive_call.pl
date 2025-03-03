use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'line_after_recursive_call'} = '*document_root C1
 *before_node_section C2
  *0 @macro C5 l1
  |EXTRA
  |macro_name:{mac}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: mac\\n}
   {raw:ggg\\n}
   {raw:@mac xxx\\n}
   {raw:fff\\n}
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
  *paragraph C3
   {ggg\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call
    >|INFO
    >|command_name:{mac}
   { xxx\\n}
   {fff}
   >SOURCEMARKS
   >macro_expansion<end;1><p:3>
';


$result_texis{'line_after_recursive_call'} = '@macro mac
ggg
@mac xxx
fff
@end macro
ggg
 xxx
fff';


$result_texts{'line_after_recursive_call'} = 'ggg
 xxx
fff';

$result_errors{'line_after_recursive_call'} = [
  {
    'error_line' => 'recursive call of macro mac is not allowed; use @rmacro if needed (possibly involving @mac)
',
    'line_nr' => 6,
    'macro' => 'mac',
    'text' => 'recursive call of macro mac is not allowed; use @rmacro if needed',
    'type' => 'error'
  }
];


1;
