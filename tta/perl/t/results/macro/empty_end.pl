use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_end'} = '*document_root C1
 *before_node_section C1
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{foo}
  |misc_args:A{aaa}
   *arguments_line C1
    {macro_line: foo {aaa, }\\n}
   {raw:in foo\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
     {macro}
';


$result_texis{'empty_end'} = '@macro foo {aaa, }
in foo
@end macro';


$result_texts{'empty_end'} = '';

$result_errors{'empty_end'} = [];


$result_floats{'empty_end'} = {};


1;
