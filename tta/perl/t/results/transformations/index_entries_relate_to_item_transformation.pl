use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_entries_relate_to_item_transformation'} = '*document_root C6
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *@node C1 index_entries_relate_to_item.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Top}
 *@top C2 index_entries_relate_to_item.texi:l4 {top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {top}
  {empty_line:\\n}
 *@node C1 index_entries_relate_to_item.texi:l6 {chap}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chap}
 *@chapter C6 index_entries_relate_to_item.texi:l7 {Chapter}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Chapter}
  {empty_line:\\n}
  *@table C5 index_entries_relate_to_item.texi:l9
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *@code index_entries_relate_to_item.texi:l9
   *before_item C1
    {empty_line:\\n}
   *table_entry C2
    *table_term C6
     *index_entry_command@cindex C1 index_entries_relate_to_item.texi:l11
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
     |EXTRA
     |element_node:{chap}
     |index_entry:I{cp,1}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {A}
     *index_entry_command@cindex C1 index_entries_relate_to_item.texi:l12
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
     |EXTRA
     |element_node:{chap}
     |index_entry:I{cp,2}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {B}
     *index_entry_command@cindex C1 index_entries_relate_to_item.texi:l13
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
     |EXTRA
     |element_node:{chap}
     |index_entry:I{cp,3}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {C}
     *@item C1 index_entries_relate_to_item.texi:l14
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
     |EXTRA
     |associated_index_entry:I{cp,1}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {A}
     *@itemx C1 index_entries_relate_to_item.texi:l15
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {B}
     *@itemx C1 index_entries_relate_to_item.texi:l16
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {C}
    *table_definition C3
     {empty_line:\\n}
     *paragraph C1
      {body\\n}
     {empty_line:\\n}
   *table_entry C2
    *table_term C1
     *@item C1 index_entries_relate_to_item.texi:l20
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {D}
    *table_definition C3
     {empty_line:\\n}
     *paragraph C1
      {body2\\n}
     {empty_line:\\n}
   *@end C1 index_entries_relate_to_item.texi:l24
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {table}
  {empty_line:\\n}
  *@printindex C1 index_entries_relate_to_item.texi:l26
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
  {empty_line:\\n}
 *@bye C1
  *line_arg
  |INFO
  |spaces_after_argument:
   |{spaces_after_argument:\\n}
';


$result_texis{'index_entries_relate_to_item_transformation'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@top top

@node chap
@chapter Chapter

@table @code

@cindex A
@cindex B
@cindex C
@item A
@itemx B
@itemx C

body

@item D

body2

@end table

@printindex cp

@bye
';


$result_texts{'index_entries_relate_to_item_transformation'} = 'top
***

1 Chapter
*********


A
B
C

body

D

body2



';

$result_errors{'index_entries_relate_to_item_transformation'} = [];


$result_nodes_list{'index_entries_relate_to_item_transformation'} = '1|Top
 associated_section: top
 associated_title_command: top
 node_directions:
  next->chap
2|chap
 associated_section: 1 Chapter
 associated_title_command: 1 Chapter
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'index_entries_relate_to_item_transformation'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->Chapter
 section_children:
  1|Chapter
2|Chapter
 associated_anchor_command: chap
 associated_node: chap
 section_directions:
  up->top
 toplevel_directions:
  prev->top
  up->top
';

$result_sectioning_root{'index_entries_relate_to_item_transformation'} = 'level: -1
list:
 1|top
';

$result_headings_list{'index_entries_relate_to_item_transformation'} = '';

$result_indices_sort_strings{'index_entries_relate_to_item_transformation'} = 'cp:
 A
 B
 C
';


$result_converted{'info'}->{'index_entries_relate_to_item_transformation'} = 'This is , produced from index_entries_relate_to_item.texi.


File: ,  Node: Top,  Next: chap,  Up: (dir)

top
***

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 Chapter
*********

‘A’
‘B’
‘C’

     body

‘D’

     body2

 [index ]
* Menu:

* A:                                     chap.                  (line 6)
* B:                                     chap.                  (line 6)
* C:                                     chap.                  (line 6)


Tag Table:
Node: Top60
Node: chap135

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
