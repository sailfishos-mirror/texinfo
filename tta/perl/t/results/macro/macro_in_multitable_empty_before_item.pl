use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_in_multitable_empty_before_item'} = '*document_root C1
 *before_node_section C3
  *0 @macro C2 l1
  |EXTRA
  |macro_name:{emptymacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: emptymacro\\n}
   *@end C1 l2
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
  *1 @multitable C4 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |columnfractions:[E2]
  |max_columns:{3}
   *arguments_line C1
    *block_line_arg C1
     *2 @columnfractions C1 l4
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |misc_args:A{0.4|.6|5.}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {0.4 .6 5.}
   *before_item C1
    {}
    >SOURCEMARKS
    >macro_expansion<start;1>
     >*macro_call C1
     >|INFO
     >|command_name:{emptymacro}
      >*brace_arg
    >macro_expansion<end;1>
   *multitable_body C1
    *row C2
    |EXTRA
    |row_number:{1}
     *@item C2 l5
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {fc }
     *@tab C2 l5
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {sc\\n}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{multitable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {multitable}
';


$result_texis{'macro_in_multitable_empty_before_item'} = '@macro emptymacro
@end macro

@multitable @columnfractions 0.4 .6 5.
@item fc @tab sc
@end multitable
';


$result_texts{'macro_in_multitable_empty_before_item'} = '
fc sc
';

$result_errors{'macro_in_multitable_empty_before_item'} = [];


1;
