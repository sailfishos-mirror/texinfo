use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'simple_only_special_spaces_node_no_translit_files'} = '*document_root C9
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 simple_only_special_spaces_node.texi:l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 simple_only_special_spaces_node.texi:l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3|E5|E7]
 |section_level:{0}
 |section_number:{1}
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
 *2 @node C1 simple_only_special_spaces_node.texi:l4 {  }
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{_2002_2003}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {  }
 *3 @chapter C2 simple_only_special_spaces_node.texi:l5 {EN QUAD| |}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E5|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {EN QUAD| |}
  {empty_line:\\n}
 *4 @node C1 simple_only_special_spaces_node.texi:l7
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{ '."\r".'\\n}
 *5 @chapter C2 simple_only_special_spaces_node.texi:l8 {CARRIAGE RETURN|'."\r".'|}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E7|prev->E3|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E7|prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {CARRIAGE RETURN|'."\r".'|}
  {empty_line:\\n}
 *6 @node C1 simple_only_special_spaces_node.texi:l10 {  }
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[up->E0]
 |node_number:{3}
 |normalized:{_2004_2005}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {  }
 *7 @chapter C2 simple_only_special_spaces_node.texi:l11 {THREE-PER-EM SPACE}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E5|up->E1]
 |section_heading_number:{3}
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[prev->E5|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {THREE-PER-EM SPACE}
  {empty_line:\\n}
';


$result_texis{'simple_only_special_spaces_node_no_translit_files'} = '@node Top
@top top

@node   
@chapter EN QUAD| |

@node '."\r".'
@chapter CARRIAGE RETURN|'."\r".'|

@node   
@chapter THREE-PER-EM SPACE

';


$result_texts{'simple_only_special_spaces_node_no_translit_files'} = 'top
***

1 EN QUAD| |
************

2 CARRIAGE RETURN|'."\r".'|
*******************

3 THREE-PER-EM SPACE
********************

';

$result_errors{'simple_only_special_spaces_node_no_translit_files'} = [
  {
    'error_line' => 'empty argument in @node
',
    'file_name' => 'simple_only_special_spaces_node.texi',
    'line_nr' => 7,
    'text' => 'empty argument in @node',
    'type' => 'error'
  }
];


$result_nodes_list{'simple_only_special_spaces_node_no_translit_files'} = '1|Top
 associated_section: top
 associated_title_command: top
2|  
 associated_section: 1 EN QUAD| |
 associated_title_command: 1 EN QUAD| |
3|  
 associated_section: 3 THREE-PER-EM SPACE
 associated_title_command: 3 THREE-PER-EM SPACE
';

$result_sections_list{'simple_only_special_spaces_node_no_translit_files'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
2|EN QUAD| |
 associated_anchor_command:   
 associated_node:   
3|CARRIAGE RETURN|'."\r".'|
4|THREE-PER-EM SPACE
 associated_anchor_command:   
 associated_node:   
';

$result_headings_list{'simple_only_special_spaces_node_no_translit_files'} = '';

1;
