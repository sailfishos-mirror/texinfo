use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'bad_ifclear_argument'} = '*document_root C1
 *before_node_section C1
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<1><p:1>
   >*@ifclear C3 l2
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{#something}
    >{raw:R#something\\n}
    >*@end C1 l4
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifclear}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifclear}
';


$result_texis{'bad_ifclear_argument'} = '
';


$result_texts{'bad_ifclear_argument'} = '
';

$result_errors{'bad_ifclear_argument'} = [
  {
    'error_line' => 'bad name for @ifclear
',
    'line_nr' => 2,
    'text' => 'bad name for @ifclear',
    'type' => 'error'
  }
];


1;
