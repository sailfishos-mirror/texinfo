use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_ifset_in_ifset_set'} = '*document_root C1
 *before_node_section C4
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ notset\\n}
   {rawline_arg:notset}
   {rawline_arg:}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;1><p:1>
   >*@ifset C1 l4
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{notset}
  *@verbatim C3 l5
  >SOURCEMARKS
  >expanded_conditional_command<end;1>
   >*@end C1 l8
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
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {raw:@ifset\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{verbatim}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {verbatim}
';


$result_texis{'empty_ifset_in_ifset_set'} = '
@set notset

@verbatim
@ifset
@end verbatim
';


$result_texts{'empty_ifset_in_ifset_set'} = '

@ifset
';

$result_errors{'empty_ifset_in_ifset_set'} = [];


1;
