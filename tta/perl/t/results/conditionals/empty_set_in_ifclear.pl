use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_set_in_ifclear'} = '*document_root C1
 *before_node_section C2
  *@set C2
  |INFO
  |arg_line:{ a\\n}
   {rawline_arg:a}
   {rawline_arg:}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<1><p:1>
   >*@ifclear C3 l3
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{a}
    >{raw:a is set to:|@value{a}|.\\n}
    >*@end C1 l5
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifclear}
     >*line_arg C1
      >{ifclear}
';


$result_texis{'empty_set_in_ifclear'} = '@set a

';


$result_texts{'empty_set_in_ifclear'} = '
';

$result_errors{'empty_set_in_ifclear'} = [];


$result_floats{'empty_set_in_ifclear'} = {};


1;
