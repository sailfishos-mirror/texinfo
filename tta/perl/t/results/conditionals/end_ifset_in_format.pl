use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'end_ifset_in_format'} = '*document_root C1
 *before_node_section C9
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
  *0 @ignore C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {raw:@end ifset\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{ignore}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ignore}
  *paragraph C1
   {text\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;1><p:5>
    >*@end C1 l9
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
  >expanded_conditional_command<start;2><p:1>
   >*@ifset C1 l11
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{notset}
  *1 @verbatim C3 l12
  >SOURCEMARKS
  >expanded_conditional_command<end;2>
   >*@end C1 l15
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
   {raw:@end ifset\\n}
   *@end C1 l14
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
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;3><p:1>
   >*@ifset C1 l17
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{notset}
  *paragraph C2
   *2 @verb C1 l18
   |INFO
   |delimiter:{%}
    *brace_container C2
     {raw:\\n}
     {raw:@end ifset\\n}
   {\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;3><p:1>
    >*@end C1 l21
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


$result_texis{'end_ifset_in_format'} = '
@set notset

@ignore
@end ifset
@end ignore
text

@verbatim
@end ifset
@end verbatim

@verb{%
@end ifset
%}
';


$result_texts{'end_ifset_in_format'} = '

text

@end ifset


@end ifset

';

$result_errors{'end_ifset_in_format'} = [];


1;
