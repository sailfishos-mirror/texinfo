use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'protect_colon_source_mark'} = '*document_root C1
 *before_node_section C3
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{klm}
  |misc_args:A{arg}
   *arguments_line C1
    {macro_line: klm {arg}\\n}
   {raw:some text : \\arg\\ then more\\n}
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
  *paragraph C3
   {There is some text }
   >SOURCEMARKS
   >macro_expansion<start;1><p:9>
    >*macro_call C1
    >|INFO
    >|command_name:{klm}
     >*brace_arg C1
      >{nop}
   *1 @asis C1
    *brace_container C1
     {:}
   { nop then more and after.\\n}
   >SOURCEMARKS
   >macro_expansion<end;1><p:14>
';


$result_texis{'protect_colon_source_mark'} = '@macro klm {arg}
some text : \\arg\\ then more
@end macro

There is some text @asis{:} nop then more and after.
';


$result_texts{'protect_colon_source_mark'} = '
There is some text : nop then more and after.
';

$result_errors{'protect_colon_source_mark'} = [];


$result_floats{'protect_colon_source_mark'} = {};


1;
