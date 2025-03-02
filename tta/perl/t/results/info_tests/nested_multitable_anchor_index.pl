use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nested_multitable_anchor_index'} = '*document_root C2
 *before_node_section
 *0 @node C7 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @multitable C3 l3
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
     *bracketed_arg C1 l3
      {truc AAAA   machin}
     {    }
     *bracketed_arg C1 l3
      {bidule}
   *multitable_body C2
    *row C2
    |EXTRA
    |row_number:{1}
     *@item C3 l4
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command:\\n}
      *2 @multitable C3 l5
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
         *bracketed_arg C1 l5
          {AAAA}
         { }
         *bracketed_arg C1 l5
          {machin}
       *multitable_body C1
        *row C2
        |EXTRA
        |row_number:{1}
         *@item C2 l6
         |EXTRA
         |cell_number:{1}
          {ignorable_spaces_after_command: }
          *paragraph C1
           {AAAA }
         *@tab C2 l6
         |EXTRA
         |cell_number:{2}
          {ignorable_spaces_after_command: }
          *paragraph C4
           {machin }
           *3 @anchor C1 l6
           |EXTRA
           |is_target:{1}
           |normalized:{mark-inside}
            *brace_arg C1
             {mark inside}
           {spaces_after_close_brace:\\n}
           *4 index_entry_command@cindex C1 l7
           |INFO
           |command_name:{cindex}
           |spaces_before_argument:
            |{ }
           |EXTRA
           |element_node:[E0]
           |index_entry:I{cp,1}
            *line_arg C1
            |INFO
            |spaces_after_argument:
             |{\\n}
             {index entry inside}
       *@end C1 l8
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
     *@tab C2 l9
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {bidule\\n}
    *row C2
    |EXTRA
    |row_number:{2}
     *@item C2 l10
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {other item }
     *@tab C2 l10
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C4
       {in tab }
       *5 @anchor C1 l10
       |EXTRA
       |is_target:{1}
       |normalized:{mark}
        *brace_arg C1
         {mark}
       {spaces_after_close_brace:\\n}
       *6 index_entry_command@cindex C1 l11
       |INFO
       |command_name:{cindex}
       |spaces_before_argument:
        |{ }
       |EXTRA
       |element_node:[E0]
       |index_entry:I{cp,2}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {index entry}
   *@end C1 l12
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
  {empty_line:\\n}
  *@printindex C1 l14
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *paragraph C4
   *7 @xref C1 l16
    *brace_arg C1
    |EXTRA
    |node_content:{mark}
    |normalized:{mark}
     {mark}
   {.\\n}
   *8 @xref C1 l17
    *brace_arg C1
    |EXTRA
    |node_content:{mark inside}
    |normalized:{mark-inside}
     {mark inside}
   {.\\n}
';


$result_texis{'nested_multitable_anchor_index'} = '@node Top

@multitable {truc AAAA   machin}    {bidule}
@item
@multitable {AAAA} {machin}
@item AAAA @tab machin @anchor{mark inside}
@cindex index entry inside
@end multitable
 @tab bidule
@item other item @tab in tab @anchor{mark}
@cindex index entry
@end multitable

@printindex cp

@xref{mark}.
@xref{mark inside}.
';


$result_texts{'nested_multitable_anchor_index'} = '
AAAA machin bidule
other item in tab 

mark.
mark inside.
';

$result_errors{'nested_multitable_anchor_index'} = [];


$result_floats{'nested_multitable_anchor_index'} = {};


$result_indices_sort_strings{'nested_multitable_anchor_index'} = {
  'cp' => [
    'index entry',
    'index entry inside'
  ]
};



$result_converted{'info'}->{'nested_multitable_anchor_index'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

AAAA   machin      bidule
       
other item         in tab
                   

 [index ]
* Menu:

* index entry:                           Top.                   (line 6)
* index entry inside:                    Top.                   (line 4)

   *Note mark::.  *Note mark inside::.


Tag Table:
Node: Top27
Ref: mark inside94
Ref: mark140

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
