use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'info_ifplaintext'} = '*document_root C1
 *before_node_section C1
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<1><p:1>
   >*@ifplaintext C3 l2
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
    >{raw:this text will only appear in plain text.\\n}
    >*@end C1 l4
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifplaintext}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifplaintext}
';


$result_texis{'info_ifplaintext'} = '
';


$result_texts{'info_ifplaintext'} = '
';

$result_errors{'info_ifplaintext'} = [];


$result_floats{'info_ifplaintext'} = {};


1;
