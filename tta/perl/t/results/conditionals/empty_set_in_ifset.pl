use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_set_in_ifset'} = '*document_root C1
 *before_node_section C3
  *@set C2
  |INFO
  |arg_line:{ a\\n}
   {rawline_arg:a}
   {rawline_arg:}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;1><p:1>
   >*@ifset C1 l3
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{a}
  *paragraph C1
   {a is set to:||.\\n}
   >SOURCEMARKS
   >value_expansion<start;1><p:13>{}
    >*@value C1
     >*brace_container C1
      >{a}
   >value_expansion<end;1><p:13>
   >expanded_conditional_command<end;1><p:16>
    >*@end C1 l5
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifset}
     >*line_arg C1
      >{ifset}
';


$result_texis{'empty_set_in_ifset'} = '@set a

a is set to:||.
';


$result_texts{'empty_set_in_ifset'} = '
a is set to:||.
';

$result_errors{'empty_set_in_ifset'} = [];


1;
