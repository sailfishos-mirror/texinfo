use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'protect_comma_source_mark'} = '*document_root C1
 *before_node_section C5
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{vvv}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: vvv {}\\n}
   {raw:some text ,,\\n}
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
  *@set C2
  |INFO
  |arg_line:{ punct ,,\\n}
   {rawline_arg:punct}
   {rawline_arg:,,}
  {empty_line:\\n}
  *paragraph C8
   {There is some text }
   >SOURCEMARKS
   >macro_expansion<start;1><p:9>
    >*macro_call C1
    >|INFO
    >|command_name:{vvv}
     >*brace_arg
   *1 @comma C1
    *brace_container
   *2 @comma C1
   >SOURCEMARKS
   >macro_expansion<end;1>
    *brace_container
   *3 @comma C1
   >SOURCEMARKS
   >value_expansion<start;1>{,,}
    >*@value C1
     >*brace_container C1
      >{punct}
    *brace_container
   *4 @comma C1
    *brace_container
   *5 @comma C1
   >SOURCEMARKS
   >value_expansion<end;1>
    *brace_container
   *6 @comma C1
    *brace_container
   { and after.\\n}
';


$result_texis{'protect_comma_source_mark'} = '@macro vvv {}
some text ,,
@end macro

@set punct ,,

There is some text @comma{}@comma{}@comma{}@comma{}@comma{}@comma{} and after.
';


$result_texts{'protect_comma_source_mark'} = '

There is some text ,,,,,, and after.
';

$result_errors{'protect_comma_source_mark'} = [];


1;
