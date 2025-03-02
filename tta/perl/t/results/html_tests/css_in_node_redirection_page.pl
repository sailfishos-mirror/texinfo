use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'css_in_node_redirection_page'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C3 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *paragraph C4
   *2 @sansserif C1 l4
    *brace_container C1
     {SANS}
   {.\\n}
   *3 @anchor C1 l5
   |EXTRA
   |is_target:{1}
   |normalized:{spot}
    *brace_arg C1
     {spot}
   {spaces_after_close_brace:\\n}
';


$result_texis{'css_in_node_redirection_page'} = '@node Top
@top top

@sansserif{SANS}.
@anchor{spot}
';


$result_texts{'css_in_node_redirection_page'} = 'top
***

SANS.
';

$result_errors{'css_in_node_redirection_page'} = [];


$result_floats{'css_in_node_redirection_page'} = {};


1;
