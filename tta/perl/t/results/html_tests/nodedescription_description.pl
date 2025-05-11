use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodedescription_description'} = '*document_root C9
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
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
 *1 @top C2 l2 {test of descriptions with nodedescription*}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E7|E10]
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
    {test of descriptions with nodedescription*}
  {empty_line:\\n}
 *2 @node C1 l4 {toto}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_description:[E4]
 |node_directions:D[next->E6|prev->E0|up->E0]
 |node_long_description:[E5]
 |node_number:{2}
 |normalized:{toto}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {toto}
 *3 @chapter C6 l5 {Toto}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[next->E7|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E7|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Toto}
  {empty_line:\\n}
  *4 @nodedescription C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
   *line_arg C8
   |INFO
   |spaces_after_argument:
    |{\\n}
    {toto is there:: and the }
    *@emph C1 l7
     *brace_container C1
      {is a description}
    *@w C1 l7
     *brace_container C1
      {slightly long}
    { and }
    *@verb C1 l7
    |INFO
    |delimiter:{:}
     *brace_container C1
      {raw:vv somewhat}
    { }
    *@ringaccent C1 l7
    |INFO
    |spaces_after_cmd_before_arg:
     |{ }
     *following_arg C1
      {a}
    {nexpected}
  {empty_line:\\n}
  *5 @nodedescriptionblock C3 l9
  |EXTRA
  |element_node:[E2]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {Block along line node description for toto\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
 *6 @node C1 l13 {titi}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |node_description:[E8]
 |node_directions:D[next->E9|prev->E2|up->E0]
 |node_long_description:[E8]
 |node_number:{3}
 |normalized:{titi}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {titi}
 *7 @chapter C4 l14 {Titi}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_directions:D[next->E10|prev->E3|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E10|prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Titi}
  {empty_line:\\n}
  *8 @nodedescriptionblock C3 l16
  |EXTRA
  |element_node:[E6]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {description of titi in block\\n}
   *@end C1 l18
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
 *9 @node C1 l20 {other}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |associated_title_command:[E10]
 |is_target:{1}
 |node_description:[E11]
 |node_directions:D[prev->E6|up->E0]
 |node_number:{4}
 |normalized:{other}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {other}
 *10 @chapter C3 l21 {Other}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E9]
 |associated_node:[E9]
 |section_directions:D[prev->E7|up->E1]
 |section_heading_number:{3}
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[prev->E7|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Other}
  {empty_line:\\n}
  *11 @nodedescription C1 l23
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E9]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {other comes here}
';


$result_texis{'nodedescription_description'} = '@node Top
@top test of descriptions with nodedescription*

@node toto
@chapter Toto

@nodedescription toto is there:: and the @emph{is a description}@w{slightly long} and @verb{:vv somewhat:} @ringaccent anexpected

@nodedescriptionblock
Block along line node description for toto
@end nodedescriptionblock

@node titi
@chapter Titi

@nodedescriptionblock
description of titi in block
@end nodedescriptionblock

@node other
@chapter Other

@nodedescription other comes here
';


$result_texts{'nodedescription_description'} = 'test of descriptions with nodedescription*
******************************************

1 Toto
******



2 Titi
******


3 Other
*******

';

$result_errors{'nodedescription_description'} = [
  {
    'error_line' => 'warning: @verb should not appear on @nodedescription line
',
    'line_nr' => 7,
    'text' => '@verb should not appear on @nodedescription line',
    'type' => 'warning'
  }
];


1;
