use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_ifset'} = '*document_root C1
 *before_node_section C1
  {}
  >SOURCEMARKS
  >ignored_conditional_block<1>
   >*@ifset C5 l1
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
    >|text_arg:{ifset}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifset}
';


$result_texis{'empty_ifset'} = '';


$result_texts{'empty_ifset'} = '';

$result_errors{'empty_ifset'} = [
  {
    'error_line' => '@ifset requires a name
',
    'line_nr' => 1,
    'text' => '@ifset requires a name',
    'type' => 'error'
  }
];


1;
