use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_macrobody'} = '*document_root C1
 *before_node_section C5
  *0 @macro C2 l1
  |EXTRA
  |macro_name:{nomacrobody}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: nomacrobody {arg}\\n}
   *@end C1 l2
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
   >*macro_call_line C1
   >|INFO
   >|command_name:{nomacrobody}
   >|spaces_before_argument:
    >|{ }
    >*line_arg C1
     >{line arg}
  >macro_expansion<end;1>
  {empty_line:\\n}
  *paragraph C1
   {.\\n}
   >SOURCEMARKS
   >macro_expansion<start;2>
    >*macro_call C1
    >|INFO
    >|command_name:{nomacrobody}
     >*brace_arg C1
      >{arg brace}
   >macro_expansion<end;2>
';


$result_texis{'no_macrobody'} = '@macro nomacrobody {arg}
@end macro



.
';


$result_texts{'no_macrobody'} = '


.
';

$result_errors{'no_macrobody'} = [];


1;
