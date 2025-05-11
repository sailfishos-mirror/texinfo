use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_recursive_self_section_reference_node_no_use_node'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {n1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{n1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {n1}
 *1 @chapter C2 l2 {@ref{n2}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_directions:D[next->E3]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3]
  ||section_level:{0}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C1 l2
     *brace_arg C1
     |EXTRA
     |node_content:{n2}
     |normalized:{n2}
      {n2}
  {empty_line:\\n}
 *2 @node C1 l4 {n2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0]
 |node_number:{2}
 |normalized:{n2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {n2}
 *3 @chapter C1 l5 {@ref{n1}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[prev->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@ref C1 l5
     *brace_arg C1
     |EXTRA
     |node_content:{n1}
     |normalized:{n1}
      {n1}
';


$result_texis{'double_recursive_self_section_reference_node_no_use_node'} = '@node n1
@chapter @ref{n2}

@node n2
@chapter @ref{n1}
';


$result_texts{'double_recursive_self_section_reference_node_no_use_node'} = '1 n2
****

2 n1
****
';

$result_errors{'double_recursive_self_section_reference_node_no_use_node'} = [];


$result_converted_errors{'file_html'}->{'double_recursive_self_section_reference_node_no_use_node'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'double_recursive_self_section_reference_node_no_use_node.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
