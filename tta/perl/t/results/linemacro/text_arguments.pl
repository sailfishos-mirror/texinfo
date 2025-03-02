use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'text_arguments'} = '*document_root C1
 *before_node_section C3
  *0 @linemacro C3 l1
  |EXTRA
  |macro_name:{nospace}
  |misc_args:A{one|two|three}
   *arguments_line C1
    {macro_line: nospace{one, two, three}\\n}
   {raw:\\three\\@bullet{}\\two\\@minus{}\\one\\\\n}
   *@end C1 l3
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
  *paragraph C5
   {Z}
   >SOURCEMARKS
   >linemacro_expansion<start;1>
    >*linemacro_call C3
    >|INFO
    >|command_name:{nospace}
    >|spaces_before_argument:
     >|{ }
     >*line_arg C1
      >{X}
     >*line_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{Y}
     >*line_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{Z}
   *1 @bullet C1 l5:@nospace
    *brace_container
   {Y}
   *2 @minus C1 l5:@nospace
    *brace_container
   {X\\n}
   >SOURCEMARKS
   >linemacro_expansion<end;1><p:1>
';


$result_texis{'text_arguments'} = '@linemacro nospace{one, two, three}
\\three\\@bullet{}\\two\\@minus{}\\one\\
@end linemacro

Z@bullet{}Y@minus{}X
';


$result_texts{'text_arguments'} = '
Z*Y-X
';

$result_errors{'text_arguments'} = [];


$result_floats{'text_arguments'} = {};


1;
