use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'additional_space_in_end_conditional_expanded'} = '*document_root C1
 *before_node_section C2
  {}
  >SOURCEMARKS
  >expanded_conditional_command<start;1>
   >*@ifnothtml C1 l1
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
  *paragraph C1
   {not html\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;1><p:9>
    >*@end C1 l3
    >|INFO
    >|spaces_before_argument:
     >|{  }
    >|EXTRA
    >|text_arg:{ifnothtml}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifnothtml}
';


$result_texis{'additional_space_in_end_conditional_expanded'} = 'not html
';


$result_texts{'additional_space_in_end_conditional_expanded'} = 'not html
';

$result_errors{'additional_space_in_end_conditional_expanded'} = [];


$result_floats{'additional_space_in_end_conditional_expanded'} = {};


1;
