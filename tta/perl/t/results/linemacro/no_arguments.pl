use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_arguments'} = '*document_root C1
 *before_node_section C7
  *0 @linemacro C3 l1
  |EXTRA
  |macro_name:{noarg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: noarg\\n}
   {raw:Body.\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{linemacro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {linemacro}
  {empty_line:\\n}
  *paragraph C1
   {Body.\\n}
   >SOURCEMARKS
   >linemacro_expansion<start;1>
    >*linemacro_call C1
    >|INFO
    >|command_name:{noarg}
     >*line_arg C1
      >{}
   >linemacro_expansion<end;1><p:5>
  {empty_line:\\n}
  *paragraph C1
   {Body.\\n}
   >SOURCEMARKS
   >linemacro_expansion<start;2>
    >*linemacro_call C1
    >|INFO
    >|command_name:{noarg}
    >|spaces_before_argument:
     >|{ }
     >*line_arg C1
      >{A B}
   >linemacro_expansion<end;2><p:5>
  {empty_line:\\n}
  *paragraph C1
   {Body.\\n}
   >SOURCEMARKS
   >linemacro_expansion<start;3>
    >*linemacro_call C1
    >|INFO
    >|command_name:{noarg}
    >|spaces_before_argument:
     >|{ }
     >*line_arg C1
      >{bracketed_linemacro_arg:in brace}
   >linemacro_expansion<end;3><p:5>
';


$result_texis{'no_arguments'} = '@linemacro noarg
Body.
@end linemacro

Body.

Body.

Body.
';


$result_texts{'no_arguments'} = '
Body.

Body.

Body.
';

$result_errors{'no_arguments'} = [];


1;
