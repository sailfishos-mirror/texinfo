use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'ifclear_in_ifset'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<1><p:1>
   >*@ifset C4 l2
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{a}
    >{raw:@ifclear ok  - ok, ignored\\n}
    >{raw:@end junky   - ok, ignored\\n}
    >*@end C1 l5
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifset}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifset}
  *@c C1
   {rawline_arg: WRONG - missing @end ifset.\\n}
';


$result_texis{'ifclear_in_ifset'} = '
@c WRONG - missing @end ifset.
';


$result_texts{'ifclear_in_ifset'} = '
';

$result_errors{'ifclear_in_ifset'} = [];


$result_floats{'ifclear_in_ifset'} = {};


1;
