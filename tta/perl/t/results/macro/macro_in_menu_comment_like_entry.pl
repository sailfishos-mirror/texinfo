use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_in_menu_comment_like_entry'} = '*document_root C1
 *before_node_section C4
  {empty_line:\\n}
  *0 @macro C3 l2
  |EXTRA
  |macro_name:{emptystring}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: emptystring\\n}
   {raw:\\n}
   *@end C1 l4
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
  *1 @menu C3 l6
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_comment C1
    *preformatted C4
     {* a5}
     >SOURCEMARKS
     >macro_expansion<start;1><p:1>
      >*macro_call C1
      >|INFO
      >|command_name:{emptystring}
       >*brace_arg
     >macro_expansion<end;1><p:1>
     >macro_expansion<start;2><p:3>
      >*macro_call C1
      >|INFO
      >|command_name:{emptystring}
       >*brace_arg
     >macro_expansion<end;2><p:3>
     *2 @b C1 l7
     >SOURCEMARKS
     >macro_expansion<start;4>
      >*macro_call C1
      >|INFO
      >|command_name:{emptystring}
       >*brace_arg
     >macro_expansion<end;4>
      *brace_container C1
       {b}
       >SOURCEMARKS
       >macro_expansion<start;3><p:1>
        >*macro_call C1
        >|INFO
        >|command_name:{emptystring}
         >*brace_arg
       >macro_expansion<end;3><p:1>
     {: }
     *@c C1
      {rawline_arg: c\\n}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
';


$result_texis{'macro_in_menu_comment_like_entry'} = '
@macro emptystring

@end macro

@menu
* a5@b{b}: @c c
@end menu
';


$result_texts{'macro_in_menu_comment_like_entry'} = '

* a5b: ';

$result_errors{'macro_in_menu_comment_like_entry'} = [];


1;
