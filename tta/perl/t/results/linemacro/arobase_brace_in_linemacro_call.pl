use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'arobase_brace_in_linemacro_call'} = '*document_root C1
 *before_node_section C5
  *0 @linemacro C4 l1
  |EXTRA
  |macro_name:{simplemac}
  |misc_args:A{arg1|arg2}
   *arguments_line C1
    {macro_line: simplemac { arg1 , arg2 }\\n}
   {raw:first: \\arg1\\|\\n}
   {raw:second: \\arg2\\|\\n}
   *@end C1 l4
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{linemacro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {linemacro}
  {empty_line:\\n}
  *paragraph C6
   {first:  }
   >SOURCEMARKS
   >linemacro_expansion<start;1>
    >*linemacro_call C2
    >|INFO
    >|command_name:{simplemac}
     >*line_arg C1
      >{bracketed_linemacro_arg: @{ }
     >*line_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{bracketed_linemacro_arg: @} }
   *@{
   { |\\n}
   {second:  }
   *@}
   { |\\n}
   >SOURCEMARKS
   >linemacro_expansion<end;1><p:2>
  {empty_line:\\n}
  *paragraph C6
   {first:  }
   >SOURCEMARKS
   >linemacro_expansion<start;2>
    >*linemacro_call C2
    >|INFO
    >|command_name:{simplemac}
     >*line_arg C1
      >{bracketed_linemacro_arg: @} }
     >*line_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{bracketed_linemacro_arg: @{ }
   *@}
   { |\\n}
   {second:  }
   *@{
   { |\\n}
   >SOURCEMARKS
   >linemacro_expansion<end;2><p:2>
';


$result_texis{'arobase_brace_in_linemacro_call'} = '@linemacro simplemac { arg1 , arg2 }
first: \\arg1\\|
second: \\arg2\\|
@end linemacro

first:  @{ |
second:  @} |

first:  @} |
second:  @{ |
';


$result_texts{'arobase_brace_in_linemacro_call'} = '
first:  { |
second:  } |

first:  } |
second:  { |
';

$result_errors{'arobase_brace_in_linemacro_call'} = [];


1;
