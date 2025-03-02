use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_in_brace_command'} = '*document_root C1
 *before_node_section C5
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{foo}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: foo\\n}
   {raw:foo-expansion\\n}
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
  *1 @macro C3 l5
  |EXTRA
  |macro_name:{abar}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: abar\\n}
   {raw:bar-expansion\\n}
   *@end C1 l7
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
  *2 @itemize C3 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E3]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *3 @bullet l9
   *@item C2 l10
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     *4 @email C1 l10
      *brace_arg C3
       {foo-expansion}
       >SOURCEMARKS
       >macro_expansion<start;1>
        >*macro_call C1
        >|INFO
        >|command_name:{foo}
         >*brace_arg
       >macro_expansion<end;1><p:13>
       *@@
       >SOURCEMARKS
       >macro_expansion<start;2>
        >*macro_call C1
        >|INFO
        >|command_name:{abar}
         >*brace_arg
       {bar-expansion}
       >SOURCEMARKS
       >macro_expansion<end;2><p:13>
     {,\\n}
     {  also helped.\\n}
   *@end C1 l12
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
';


$result_texis{'macro_in_brace_command'} = '@macro foo
foo-expansion
@end macro

@macro abar
bar-expansion
@end macro

@itemize @bullet
@item @email{foo-expansion@@bar-expansion},
  also helped.
@end itemize
';


$result_texts{'macro_in_brace_command'} = '

foo-expansion@bar-expansion,
  also helped.
';

$result_errors{'macro_in_brace_command'} = [];


$result_floats{'macro_in_brace_command'} = {};


1;
