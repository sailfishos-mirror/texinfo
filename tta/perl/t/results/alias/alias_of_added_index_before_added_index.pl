use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'alias_of_added_index_before_added_index'} = '*document_root C5
 *before_node_section C4
  *@alias C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{new|sliindex}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {new = sliindex}
  {empty_line:\\n}
  *@defindex C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{sli}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sli}
  {empty_line:\\n}
 *0 @node C1 l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l6 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *index_entry_command@sliindex C1 l8
  |INFO
  |alias_of:{new}
  |command_name:{sliindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E0]
  |index_entry:I{sli,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entry}
  {empty_line:\\n}
 *2 @node C1 l10 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C3 l11 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *@printindex C1 l13
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{sli}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sli}
';


$result_texis{'alias_of_added_index_before_added_index'} = '@alias new = sliindex

@defindex sli

@node Top
@top top

@sliindex entry

@node chap
@chapter Chapter

@printindex sli
';


$result_texts{'alias_of_added_index_before_added_index'} = '

top
***


1 Chapter
*********

';

$result_errors{'alias_of_added_index_before_added_index'} = [];


$result_indices{'alias_of_added_index_before_added_index'} = 'cp
fn C
ky C
pg C
sli
tp C
vr C
';

$result_indices_sort_strings{'alias_of_added_index_before_added_index'} = 'sli:
 entry
';


$result_converted{'plaintext'}->{'alias_of_added_index_before_added_index'} = 'top
***

1 Chapter
*********

* Menu:

* entry:                                 Top.                   (line 2)

';

1;
