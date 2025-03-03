use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'chapter_before_top_epub'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content
 *0 @node C2 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
 *1 @node C1 l3 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |is_target:{1}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *2 @chapter C2 l4 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E1]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2|E3|E4]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
 *3 @part C2 l6 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E4]
 |section_directions:D[next->E4]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *4 @top C1 l8 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E3]
 |section_directions:D[prev->E3]
 |section_level:{0}
 |toplevel_directions:D[prev->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
';


$result_texis{'chapter_before_top_epub'} = '@node Top

@node chapter
@chapter chapter

@part part

@top top
';


$result_texts{'chapter_before_top_epub'} = '
1 chapter
*********

part
****

top
***
';

$result_errors{'chapter_before_top_epub'} = [
  {
    'error_line' => 'warning: @part should not be associated with @top
',
    'line_nr' => 6,
    'text' => '@part should not be associated with @top',
    'type' => 'warning'
  }
];


1;
