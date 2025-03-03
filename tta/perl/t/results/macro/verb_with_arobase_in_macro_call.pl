use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'verb_with_arobase_in_macro_call'} = '*document_root C1
 *before_node_section C3
  *0 @macro C4 l1
  |EXTRA
  |macro_name:{showarg}
  |misc_args:A{a|b}
   *arguments_line C1
    {macro_line: showarg {a, b}\\n}
   {raw:first: \\a\\\\n}
   {raw:second: \\b\\\\n}
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
    >*macro_call C2
    >|INFO
    >|command_name:{showarg}
     >*brace_arg C1
      >{@verb{, commas ,}}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{@verb{@ arobase @}}
   *1 @verb C1 l6:@showarg
   |INFO
   |delimiter:{,}
    *brace_container C1
     {raw: commas }
   {\\n}
   {second: }
   *2 @verb C1 l6:@showarg
   |INFO
   |delimiter:{@}
   >SOURCEMARKS
   >macro_expansion<end;1>
    *brace_container C1
     {raw: arobase }
   {\\n}
';


$result_texis{'verb_with_arobase_in_macro_call'} = '@macro showarg {a, b}
first: \\a\\
second: \\b\\
@end macro

first: @verb{, commas ,}
second: @verb{@ arobase @}
';


$result_texts{'verb_with_arobase_in_macro_call'} = '
first:  commas 
second:  arobase 
';

$result_errors{'verb_with_arobase_in_macro_call'} = [];


1;
