use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'zero_argument'} = '*document_root C1
 *before_node_section C3
  *0 @macro C3 l1
  |EXTRA
  |macro_name:{foo}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: foo {}\\n}
   {raw:in foo\\n}
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
   {raw:in bar\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
     {macro}
';


$result_texis{'zero_argument'} = '@macro foo {}
in foo
@end macro

@macro abar
in bar
@end macro';


$result_texts{'zero_argument'} = '
';

$result_errors{'zero_argument'} = [];


$result_floats{'zero_argument'} = {};


1;
