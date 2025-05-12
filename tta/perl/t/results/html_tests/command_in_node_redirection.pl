use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_in_node_redirection'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |node_number:{1}
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
 |associated_anchor_command:[E0]
 |section_level:{0}
 |section_number:{1}
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
    *@r C1 l2
     *brace_container C1
      {in r}
  {empty_line:\\n}
  *2 @anchor C1 l4
  |EXTRA
  |is_target:{1}
  |normalized:{yyyy}
   *brace_arg C1
    {yyyy}
  {spaces_after_close_brace:\\n}
';


$result_texis{'command_in_node_redirection'} = '@node Top
@top t @r{in r}

@anchor{yyyy}
';


$result_texts{'command_in_node_redirection'} = 't in r
******

';

$result_errors{'command_in_node_redirection'} = [];


$result_nodes_list{'command_in_node_redirection'} = '1|Top
 associated_section: t @r{in r}
';

$result_sections_list{'command_in_node_redirection'} = '1|t @r{in r}
 associated_node: Top
';

1;
