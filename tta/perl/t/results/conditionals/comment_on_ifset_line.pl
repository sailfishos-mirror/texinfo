use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'comment_on_ifset_line'} = '*document_root C1
 *before_node_section C3
  *@set C2
  |INFO
  |arg_line:{ x\\n}
   {rawline_arg:x}
   {rawline_arg:}
  {empty_line:\\n}
  >SOURCEMARKS
  >expanded_conditional_command<start;1><p:1>
   >*@ifset C1 l3
   >|INFO
   >|spaces_before_argument:
    >|{ }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|comment_at_end:
      >|*@c C1
       >|{rawline_arg:\\n}
      >{x}
  *paragraph C6
   {Y1\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;1><p:3>
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
   >expanded_conditional_command<start;2><p:3>
    >*@ifset C1 l6
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|comment_at_end:
       >|*@c C1
        >|{rawline_arg: comm\\n}
       >{x}
   {Y2\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;2><p:3>
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
   >expanded_conditional_command<start;3><p:3>
    >*@ifset C1 l9
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|comment_at_end:
       >|*@c C1
        >|{rawline_arg:@ggg\\n}
       >{x}
   {Y3\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;3><p:3>
    >*@end C1 l11
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
   >expanded_conditional_command<start;4><p:3>
    >*@ifset C1 l12
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|comment_at_end:
       >|*@c C1
        >|{rawline_arg:\\n}
      >|spaces_after_argument:
       >|{ }
       >{x}
   {Y4\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;4><p:3>
    >*@end C1 l14
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
   >expanded_conditional_command<start;5><p:3>
    >*@ifset C1 l15
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|comment_at_end:
       >|*@c C1
        >|{rawline_arg: comm\\n}
      >|spaces_after_argument:
       >|{ }
       >{x}
   {Y5\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;5><p:3>
    >*@end C1 l17
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
   >expanded_conditional_command<start;6><p:3>
    >*@ifset C1 l18
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|comment_at_end:
       >|*@c C1
        >|{rawline_arg:@ggg\\n}
      >|spaces_after_argument:
       >|{ }
       >{x}
   {Y6\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;6><p:3>
    >*@end C1 l20
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


$result_texis{'comment_on_ifset_line'} = '@set x

Y1
Y2
Y3
Y4
Y5
Y6
';


$result_texts{'comment_on_ifset_line'} = '
Y1
Y2
Y3
Y4
Y5
Y6
';

$result_errors{'comment_on_ifset_line'} = [];


$result_floats{'comment_on_ifset_line'} = {};


1;
