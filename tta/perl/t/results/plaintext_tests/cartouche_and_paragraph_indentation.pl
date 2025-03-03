use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'cartouche_and_paragraph_indentation'} = '*document_root C7
 *before_node_section
 *0 @node C1 l1 {top}
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
    {top}
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E6]
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
 *2 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C8 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[next->E6|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *paragraph C1
   {aa\\n}
  {empty_line:\\n}
  *paragraph C1
   {bb\\n}
  {empty_line:\\n}
  *4 @cartouche C7 l11
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {toto}
   {empty_line:\\n}
   *paragraph C1
    {cc\\n}
   {empty_line:\\n}
   *paragraph C1
    {dd\\n}
   {empty_line:\\n}
   *@end C1 l17
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{cartouche}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {cartouche}
  {empty_line:\\n}
 *5 @node C1 l19 {chap2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{chap2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap2}
 *6 @chapter C6 l20 {c2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c2}
  {empty_line:\\n}
  *7 @cartouche C7 l22
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {titi}
   {empty_line:\\n}
   *paragraph C1
    {ll m\\n}
   {empty_line:\\n}
   *paragraph C1
    {mm\\n}
   {empty_line:\\n}
   *@end C1 l28
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{cartouche}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {cartouche}
  {empty_line:\\n}
  *paragraph C1
   {oo\\n}
  {empty_line:\\n}
';


$result_texis{'cartouche_and_paragraph_indentation'} = '@node top
@top top

@node chap
@chapter chap

aa

bb

@cartouche toto

cc

dd

@end cartouche

@node chap2
@chapter c2

@cartouche titi

ll m

mm

@end cartouche

oo

';


$result_texts{'cartouche_and_paragraph_indentation'} = 'top
***

1 chap
******

aa

bb

toto

cc

dd


2 c2
****

titi

ll m

mm


oo

';

$result_errors{'cartouche_and_paragraph_indentation'} = [];



$result_converted{'plaintext'}->{'cartouche_and_paragraph_indentation'} = 'top
***

1 chap
******

aa

   bb

                                 toto

   cc

   dd

2 c2
****

                                 titi

ll m

   mm

   oo

';

1;
