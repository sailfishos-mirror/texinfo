use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'expand_two_same'} = '*document_root C1
 *before_node_section C6
  *0 @macro C4 l1
  |EXTRA
  |macro_name:{macrotwo}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: macrotwo { arg }\\n}
   {raw:With a doubles arg \\arg\\ and re \\arg\\\\n}
   {raw:\\n}
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
  *paragraph C7
   {Call macro2\\n}
   {With a doubles arg a simple }
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{macrotwo}
    >|spaces_after_cmd_before_arg:
     >|{ }
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{a simple @code{\\narg}\\n}
   *1 @code C1 l8:@macrotwo
    *brace_container C2
     {\\n}
     {arg}
   {\\n}
   { and re a simple }
   *2 @code C1 l8:@macrotwo
    *brace_container C2
     {\\n}
     {arg}
   {\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<end;1><p:1>
  {empty_line:\\n}
  *paragraph C2
   {Call macro2 with 2 args\\n}
   {With a doubles arg arg with comma , here  and re arg with comma , here \\n}
   >SOURCEMARKS
   >macro_expansion<start;2>
    >*macro_call C1
    >|INFO
    >|command_name:{macrotwo}
    >|spaces_after_cmd_before_arg:
     >|{ }
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{arg with comma , here }
   >macro_expansion<end;2><p:72>
  {empty_line:\\n}
';


$result_texis{'expand_two_same'} = '@macro macrotwo { arg }
With a doubles arg \\arg\\ and re \\arg\\

@end macro
Call macro2
With a doubles arg a simple @code{
arg}
 and re a simple @code{
arg}


Call macro2 with 2 args
With a doubles arg arg with comma , here  and re arg with comma , here 

';


$result_texts{'expand_two_same'} = 'Call macro2
With a doubles arg a simple 
arg
 and re a simple 
arg


Call macro2 with 2 args
With a doubles arg arg with comma , here  and re arg with comma , here 

';

$result_errors{'expand_two_same'} = [];


$result_floats{'expand_two_same'} = {};


1;
