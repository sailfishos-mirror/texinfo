use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'space_macro_after_end_verbatim'} = '*document_root C1
 *before_node_section C3
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{spaces}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: spaces\\n}
   {raw:\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
  *1 @verbatim C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {raw:in verbatim\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{verbatim}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
     |>SOURCEMARKS
     |>macro_expansion<start;1><p:1>
      |>*macro_call C1
      |>|INFO
      |>|command_name:{spaces}
       |>*brace_arg
     |>macro_expansion<end;1><p:1>
     {verbatim}
';


$result_texis{'space_macro_after_end_verbatim'} = '@macro spaces

@end macro

@verbatim
in verbatim
@end verbatim ';


$result_texts{'space_macro_after_end_verbatim'} = '
in verbatim
';

$result_errors{'space_macro_after_end_verbatim'} = [];


1;
