use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_on_ifset'} = '*document_root C1
 *before_node_section C5
  *@set C2
  |INFO
  |arg_line:{ xval x\\n}
   {rawline_arg:xval}
   {rawline_arg:x}
  *@set C2
  |INFO
  |arg_line:{ x 1\\n}
   {rawline_arg:x}
   {rawline_arg:1}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;1><p:1>
   >*@ifset C1 l4
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >|>SOURCEMARKS
    >|>value_expansion<start;1><p:1>{x}
     >|>*@value C1
      >|>*brace_container C1
       >|>{xval}
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{x}
      >>SOURCEMARKS
      >>value_expansion<end;1><p:1>
  *paragraph C1
   {XVAL SET\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;1><p:9>
    >*@end C1 l6
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
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<1><p:1>
   >*@ifset C5 l8
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{b}
    >{raw:@ifset @value{xval}\\n}
    >{raw:INTERNALXV\\n}
    >{raw:@end ifset\\n}
    >*@end C1 l12
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


$result_texis{'value_on_ifset'} = '@set xval x
@set x 1

XVAL SET

';


$result_texts{'value_on_ifset'} = '
XVAL SET

';

$result_errors{'value_on_ifset'} = [];


$result_floats{'value_on_ifset'} = {};


1;
