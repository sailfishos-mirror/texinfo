use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'multitable_anchor_and_index_entry'} = '*document_root C2
 *before_node_section
 *@node C8 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Top}
  {empty_line:\\n}
  *@multitable C4 l3
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |max_columns:{2}
   *arguments_line C1
    *block_line_arg C1
     *@columnfractions C1 l3
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
     |EXTRA
     |misc_args:A{0.4|0.6}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {0.4 0.6}
   *multitable_head C1
    *row C2
    |EXTRA
    |row_number:{1}
     *@headitem C2 l4
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {mu--ltitable headitem }
     *@tab C2 l4
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {another tab\\n}
   *multitable_body C3
    *row C2
    |EXTRA
    |row_number:{2}
     *@item C2 l5
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {mu--ltitable item }
     *@tab C2 l5
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C2
       {multitable tab\\n}
       *@c C1
       |INFO
       |spaces_before_argument:
        |{spaces_before_argument: }
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{spaces_after_argument:\\n}
         {rawline_text:comment in multitable}
    *row C2
    |EXTRA
    |row_number:{3}
     *@item C2 l7
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {mu--ltitable item 2 }
     *@tab C2 l7
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C4
       {multitable tab 2\\n}
       *index_entry_command@cindex C1 l8
       |INFO
       |spaces_before_argument:
        |{spaces_before_argument: }
       |EXTRA
       |element_node:{Top}
       |index_entry:I{cp,1}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{spaces_after_argument:\\n}
         {index entry within multitable}
       *@anchor C1 l9
       |EXTRA
       |is_target:{1}
       |normalized:{anchor-in-multitable}
        *brace_arg C1
         {anchor in multitable}
       {spaces_after_close_brace:\\n}
    *row C1
    |EXTRA
    |row_number:{4}
     *@item C2 l10
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {lone mu--ltitable item\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{multitable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {multitable}
  {empty_line:\\n}
  *@multitable C3 l13
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |max_columns:{2}
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *bracketed_arg C1 l13
      {A}
     { }
     *bracketed_arg C1 l13
      {B}
   *multitable_body C3
    *row C2
    |EXTRA
    |row_number:{1}
     *@item C4 l14
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C2
       {A\\n}
       {B\\n}
      {empty_line:\\n}
      *paragraph C1
       {C\\n}
     *@tab C2 l18
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {G\\n}
    *row C1
    |EXTRA
    |row_number:{2}
     *@item C2 l19
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C3
       {lsfd mlkdsf lk s\\n}
       {mlsdmjlfdsjm mdsfk \\n}
       *index_entry_command@cindex C1 l21
       |INFO
       |spaces_before_argument:
        |{spaces_before_argument: }
       |EXTRA
       |element_node:{Top}
       |index_entry:I{cp,2}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{spaces_after_argument:\\n}
         {index entry}
    *row C2
    |EXTRA
    |row_number:{3}
     *@item C2 l22
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C2
       {lsfd2 mlkdsf2 lk2 s2\\n}
       {mlsdmjlfdsjm mdsfk2\\n}
     *@tab C5 l24
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C4
       {ATTTTTTTTTTTTTTTTTTTTT\\n}
       {BTTTTTTt }
       *@anchor C1 l25
       |EXTRA
       |is_target:{1}
       |normalized:{mark}
        *brace_arg C1
         {mark}
       {spaces_after_close_brace:\\n}
      {empty_line:\\n}
      *paragraph C1
       {CTTTTTT\\n}
      {empty_line:\\n}
   *@end C1 l29
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{multitable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {multitable}
  {empty_line:\\n}
  *@printindex C1 l31
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {cp}
  *paragraph C4
   *@ref C1 l32
    *brace_arg C1
    |EXTRA
    |node_content:{mark}
    |normalized:{mark}
     {mark}
   {\\n}
   *@ref C1 l33
    *brace_arg C1
    |EXTRA
    |node_content:{anchor in multitable}
    |normalized:{anchor-in-multitable}
     {anchor in multitable}
   {\\n}
';


$result_texis{'multitable_anchor_and_index_entry'} = '@node Top

@multitable @columnfractions 0.4 0.6
@headitem mu--ltitable headitem @tab another tab
@item mu--ltitable item @tab multitable tab
@c comment in multitable
@item mu--ltitable item 2 @tab multitable tab 2
@cindex index entry within multitable
@anchor{anchor in multitable}
@item lone mu--ltitable item
@end multitable

@multitable {A} {B}
@item A
B

C
@tab G
@item lsfd mlkdsf lk s
mlsdmjlfdsjm mdsfk 
@cindex index entry
@item lsfd2 mlkdsf2 lk2 s2
mlsdmjlfdsjm mdsfk2
@tab ATTTTTTTTTTTTTTTTTTTTT
BTTTTTTt @anchor{mark}

CTTTTTT

@end multitable

@printindex cp
@ref{mark}
@ref{anchor in multitable}
';


$result_texts{'multitable_anchor_and_index_entry'} = '
mu-ltitable headitem another tab
mu-ltitable item multitable tab
mu-ltitable item 2 multitable tab 2
lone mu-ltitable item

A
B

C
G
lsfd mlkdsf lk s
mlsdmjlfdsjm mdsfk 
lsfd2 mlkdsf2 lk2 s2
mlsdmjlfdsjm mdsfk2
ATTTTTTTTTTTTTTTTTTTTT
BTTTTTTt 
CTTTTTT


mark
anchor in multitable
';

$result_errors{'multitable_anchor_and_index_entry'} = [];


$result_nodes_list{'multitable_anchor_and_index_entry'} = '1|Top
';

$result_sections_list{'multitable_anchor_and_index_entry'} = '';

$result_sectioning_root{'multitable_anchor_and_index_entry'} = '';

$result_headings_list{'multitable_anchor_and_index_entry'} = '';

$result_indices_sort_strings{'multitable_anchor_and_index_entry'} = 'cp:
 index entry
 index entry within multitable
';


$result_converted{'info'}->{'multitable_anchor_and_index_entry'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

mu-ltitable headitem          another tab
--------------------------------------------------------------------------
mu-ltitable item              multitable tab
mu-ltitable item 2            multitable tab 2
lone mu-ltitable item

A   G
B

C
lsfd
mlkdsf
lk
s
mlsdmjlfdsjm
mdsfk
lsfd2ATTTTTTTTTTTTTTTTTTTTT
mlkdsf2BTTTTTTt
lk2 
s2  CTTTTTT
mlsdmjlfdsjm
mdsfk2

 [index ]
* Menu:

* index entry:                           Top.                  (line 19)
* index entry within multitable:         Top.                  (line  6)

   *note mark:: *note anchor in multitable::


Tag Table:
Node: Top27
Ref: anchor in multitable269
Ref: mark388

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
