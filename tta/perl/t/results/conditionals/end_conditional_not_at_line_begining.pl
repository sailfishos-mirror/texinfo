use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'end_conditional_not_at_line_begining'} = '*document_root C1
 *before_node_section C1
  {}
  >SOURCEMARKS
  >ignored_conditional_block<1>
   >*@ifhtml C4 l1
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
    >{raw:inhtml\\n}
    >{raw:  }
    >*@end C1 l3
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifhtml}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifhtml}
';


$result_texis{'end_conditional_not_at_line_begining'} = '';


$result_texts{'end_conditional_not_at_line_begining'} = '';

$result_errors{'end_conditional_not_at_line_begining'} = [
  {
    'error_line' => 'warning: @end ifhtml should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@end ifhtml should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_floats{'end_conditional_not_at_line_begining'} = {};


1;
