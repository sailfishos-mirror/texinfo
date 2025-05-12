use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_ifclear'} = '*document_root C1
 *before_node_section C1
  {}
  >SOURCEMARKS
  >ignored_conditional_block<1>
   >*@ifclear C5 l1
    >*arguments_line C1
     >*block_line_arg
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
    >{raw:\\n}
    >{raw:Something\\n}
    >{raw:\\n}
    >*@end C1 l5
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


$result_texis{'empty_ifclear'} = '';


$result_texts{'empty_ifclear'} = '';

$result_errors{'empty_ifclear'} = [
  {
    'error_line' => '@ifclear requires a name
',
    'line_nr' => 1,
    'text' => '@ifclear requires a name',
    'type' => 'error'
  }
];


$result_nodes_list{'empty_ifclear'} = '';

$result_sections_list{'empty_ifclear'} = '';

1;
