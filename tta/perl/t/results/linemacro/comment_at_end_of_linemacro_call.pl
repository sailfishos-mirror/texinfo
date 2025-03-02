use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'comment_at_end_of_linemacro_call'} = '*document_root C1
 *before_node_section C4
  *0 @linemacro C4 l1
  |EXTRA
  |macro_name:{lm}
  |misc_args:A{a|b}
   *arguments_line C1
    {macro_line: lm {a, b}\\n}
   {raw:c \\a\\ d\\n}
   {raw:\\b\\\\n}
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
  *paragraph C3
   *1 @math C1 l6
   |INFO
   |spaces_before_argument:
    |{\\n}
    *brace_command_context C3
     {c something protected d\\n}
     >SOURCEMARKS
     >linemacro_expansion<start;1>
      >*linemacro_call C2
      >|INFO
      >|command_name:{lm}
      >|spaces_before_argument:
       >|{ }
       >*line_arg C1
        >{bracketed_linemacro_arg:something protected}
       >*line_arg C1
       >|INFO
       >|spaces_before_argument:
        >|{ }
        >{something }
     {something }
     >SOURCEMARKS
     >linemacro_expansion<end;1><p:10>
     *@c C1
      {rawline_arg: comment }\\n}
   {\\n}
   {after\\n}
  {empty_line:\\n}
';


$result_texis{'comment_at_end_of_linemacro_call'} = '@linemacro lm {a, b}
c \\a\\ d
\\b\\
@end linemacro

@math{
c something protected d
something @c comment }
}
after

';


$result_texts{'comment_at_end_of_linemacro_call'} = '
c something protected d
something 
after

';

$result_errors{'comment_at_end_of_linemacro_call'} = [];


$result_floats{'comment_at_end_of_linemacro_call'} = {};


1;
