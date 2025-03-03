use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'translation_in_parser_in_translation'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@documentlanguage C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |text_arg:{fr}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {fr}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
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
 *1 @top C2 l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
 *2 @node C1 l6 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C4 l7 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
    {Chap}
  {empty_line:\\n}
  *4 @deftypeop C3 l9
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l9
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{dd}
     |{ de }
     |*def_class C1
      |*def_line_arg C1
       |{db}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{dd}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{db}
   |documentlanguage:{fr}
   |element_node:[E2]
   |index_entry:I{fn,1}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {da}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {db}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       {dc}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {dd}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {de}
   *def_item C1
    *paragraph C1
     {DOC\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
';


$result_texis{'translation_in_parser_in_translation'} = '@documentlanguage fr

@node Top
@top top

@node chap
@chapter Chap

@deftypeop da db dc dd de
DOC
@end deftypeop

';


$result_texts{'translation_in_parser_in_translation'} = '
top
***

1 Chap
******

da de db: dc dd de
DOC

';

$result_errors{'translation_in_parser_in_translation'} = [];


$result_indices_sort_strings{'translation_in_parser_in_translation'} = {
  'fn' => [
    'dd de db'
  ]
};


1;
