use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'bad_ifset_argument'} = '*document_root C1
 *before_node_section C1
  {}
  >SOURCEMARKS
  >ignored_conditional_block<1>
   >*@ifset C3 l1
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{a|b}
    >{raw:Ra&b\\n}
    >*@end C1 l3
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
';


$result_texis{'bad_ifset_argument'} = '';


$result_texts{'bad_ifset_argument'} = '';

$result_errors{'bad_ifset_argument'} = [
  {
    'error_line' => 'bad name for @ifset
',
    'line_nr' => 1,
    'text' => 'bad name for @ifset',
    'type' => 'error'
  }
];


$result_floats{'bad_ifset_argument'} = {};


1;
