use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_in_node_redirection_other_command'} = '*document_root C3
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
 *1 @top C4 l2 {t @r{in r}}
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
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {t }
    *2 @r C1 l2
     *brace_container C1
      {in r}
  {empty_line:\\n}
  *3 @anchor C1 l4
  |EXTRA
  |is_target:{1}
  |normalized:{gg}
   *brace_arg C1
    *4 @sansserif C1 l4
     *brace_container C1
      {gg}
  {spaces_after_close_brace:\\n}
';


$result_texis{'command_in_node_redirection_other_command'} = '@node Top
@top t @r{in r}

@anchor{@sansserif{gg}}
';


$result_texts{'command_in_node_redirection_other_command'} = 't in r
******

';

$result_errors{'command_in_node_redirection_other_command'} = [];


1;
