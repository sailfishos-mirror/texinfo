use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nested_multitable'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *0 @multitable C3 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{2}
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *bracketed_arg C3 l2
      {truc AAAA }
      *@ 
      { machin}
     {    }
     *bracketed_arg C1 l2
      {bidule}
   *multitable_body C2
    *row C2
    |EXTRA
    |row_number:{1}
     *@item C3 l3
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command:\\n}
      *1 @multitable C3 l4
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |max_columns:{2}
       *arguments_line C1
        *block_line_arg C3
        |INFO
        |spaces_after_argument:
         |{\\n}
         *bracketed_arg C1 l4
          {AAAA}
         { }
         *bracketed_arg C1 l4
          {machin}
       *multitable_body C1
        *row C2
        |EXTRA
        |row_number:{1}
         *@item C2 l5
         |EXTRA
         |cell_number:{1}
          {ignorable_spaces_after_command: }
          *paragraph C1
           {AAAA }
         *@tab C2 l5
         |EXTRA
         |cell_number:{2}
          {ignorable_spaces_after_command: }
          *paragraph C1
           {machin\\n}
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
      {spaces_before_paragraph: }
     *@tab C2 l7
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {bidule\\n}
    *row C2
    |EXTRA
    |row_number:{2}
     *@item C2 l8
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {other item }
     *@tab C2 l8
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {in tab\\n}
   *@end C1 l9
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


$result_texis{'nested_multitable'} = '
@multitable {truc AAAA @  machin}    {bidule}
@item
@multitable {AAAA} {machin}
@item AAAA @tab machin
@end multitable
 @tab bidule
@item other item @tab in tab
@end multitable
';


$result_texts{'nested_multitable'} = '
AAAA machin
bidule
other item in tab
';

$result_errors{'nested_multitable'} = [];


$result_floats{'nested_multitable'} = {};



$result_converted{'plaintext'}->{'nested_multitable'} = 'AAAA   machin        bidule
other item           in tab
';

1;
