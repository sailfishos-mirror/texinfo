use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'simple_only_special_spaces_node'} = '*document_root C9
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 simple_only_special_spaces_node.texi:l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
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
 |associated_node:[E0]
 |section_childs:EC[E3|E5|E7]
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
 *2 @node C1 simple_only_special_spaces_node.texi:l4 {  }
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E4|prev->E0|up->E0]
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
 |associated_node:[E2]
 |section_directions:D[next->E5|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {EN QUAD| |}
  {empty_line:\\n}
 *4 @node C1 simple_only_special_spaces_node.texi:l7
 |EXTRA
 |associated_section:[E5]
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
 |associated_node:[E4]
 |section_directions:D[next->E7|prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
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
 |associated_section:[E7]
 |is_target:{1}
 |node_directions:D[prev->E4|up->E0]
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
 |associated_node:[E6]
 |section_directions:D[prev->E5|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E5|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {THREE-PER-EM SPACE}
  {empty_line:\\n}
';


$result_texis{'simple_only_special_spaces_node'} = '@node Top
@top top

@node   
@chapter EN QUAD| |

@node '."\r".'
@chapter CARRIAGE RETURN|'."\r".'|

@node   
@chapter THREE-PER-EM SPACE

';


$result_texts{'simple_only_special_spaces_node'} = 'top
***

1 EN QUAD| |
************

2 CARRIAGE RETURN|'."\r".'|
*******************

3 THREE-PER-EM SPACE
********************

';

$result_errors{'simple_only_special_spaces_node'} = [
  {
    'error_line' => 'empty argument in @node
',
    'file_name' => 'simple_only_special_spaces_node.texi',
    'line_nr' => 7,
    'text' => 'empty argument in @node',
    'type' => 'error'
  }
];


$result_floats{'simple_only_special_spaces_node'} = {};


1;
