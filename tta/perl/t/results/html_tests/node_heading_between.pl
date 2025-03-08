use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_heading_between'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content C1
   *@settitle C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {node heading between}
 *0 @node C1 l2 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *1 @chapter C2 l3 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E5]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
 *2 @node C3 l5 {Topic}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E3]
 |is_target:{1}
 |normalized:{Topic}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Topic}
  *3 @subsubheading C1 l6
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |associated_anchor_command:[E2]
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Topic}
  {empty_line:\\n}
 *4 @node C1 l8 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[up->E0]
 |normalized:{Section}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
 *5 @section C3 l9 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_directions:D[up->E1]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
  {empty_line:\\n}
  *paragraph C2
   *6 @xref C1 l11
    *brace_arg C1
    |EXTRA
    |node_content:{Topic}
    |normalized:{Topic}
     {Topic}
   {\\n}
';


$result_texis{'node_heading_between'} = '@settitle node heading between
@node Chapter
@chapter Chapter

@node Topic
@subsubheading Topic

@node Section
@section Section

@xref{Topic}
';


$result_texts{'node_heading_between'} = '1 Chapter
*********

Topic
.....

1.1 Section
===========

Topic
';

$result_errors{'node_heading_between'} = [];


1;
