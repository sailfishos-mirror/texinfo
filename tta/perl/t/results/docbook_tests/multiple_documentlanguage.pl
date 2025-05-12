use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'multiple_documentlanguage'} = '*document_root C11
 *before_node_section C2
  *@documentlanguage C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |text_arg:{ja}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ja}
  {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
 *1 @top C2 l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |section_childs:EC[E3|E5]
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
 *2 @node C1 l6 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E4|prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C3 l7 {Chap no new language}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
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
    {Chap no new language}
  {empty_line:\\n}
  *@documentlanguage C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |text_arg:{fr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fr}
 *4 @node C1 l10 {chapter fr}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |node_number:{3}
 |normalized:{chapter-fr}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter fr}
 *5 @chapter C3 l11 {chapter fr}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |section_childs:EC[E7|E9]
 |section_directions:D[prev->E3|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter fr}
  {empty_line:\\n}
  *@documentlanguage C1 l13
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |text_arg:{pt}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {pt}
 *6 @node C1 l14 {subnode pt}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E7]
 |is_target:{1}
 |node_directions:D[next->E8|up->E4]
 |node_number:{4}
 |normalized:{subnode-pt}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subnode pt}
 *7 @section C3 l15 {section pt}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |section_directions:D[next->E9|up->E5]
 |section_heading_number:{2.1}
 |section_level:{2}
 |section_number:{4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section pt}
  {empty_line:\\n}
  *@documentlanguage C1 l17
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{4}
  |text_arg:{fr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fr}
 *8 @node C1 l18 {subnode fr}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E9]
 |is_target:{1}
 |node_directions:D[prev->E6|up->E4]
 |node_number:{5}
 |normalized:{subnode-fr}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subnode fr}
 *9 @section C2 l19 {section fr}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E8]
 |section_directions:D[prev->E7|up->E5]
 |section_heading_number:{2.2}
 |section_level:{2}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section fr}
  {empty_line:\\n}
';


$result_texis{'multiple_documentlanguage'} = '@documentlanguage ja

@node Top
@top top

@node chap
@chapter Chap no new language

@documentlanguage fr
@node chapter fr
@chapter chapter fr

@documentlanguage pt
@node subnode pt
@section section pt

@documentlanguage fr
@node subnode fr
@section section fr

';


$result_texts{'multiple_documentlanguage'} = '
top
***

1 Chap no new language
**********************

2 chapter fr
************

2.1 section pt
==============

2.2 section fr
==============

';

$result_errors{'multiple_documentlanguage'} = [];


$result_nodes_list{'multiple_documentlanguage'} = '1|Top
 associated_section: top
2|chap
 associated_section: 1 Chap no new language
3|chapter fr
 associated_section: 2 chapter fr
4|subnode pt
 associated_section: 2.1 section pt
5|subnode fr
 associated_section: 2.2 section fr
';

$result_sections_list{'multiple_documentlanguage'} = '1|top
 associated_node: Top
2|Chap no new language
 associated_node: chap
3|chapter fr
 associated_node: chapter fr
4|section pt
 associated_node: subnode pt
5|section fr
 associated_node: subnode fr
';


$result_converted{'docbook'}->{'multiple_documentlanguage'} = '<chapter label="1" id="chap" lang="ja">
<title>Chap no new language</title>

</chapter>
<chapter label="2" id="chapter-fr" lang="fr">
<title>chapter fr</title>

<sect1 label="2.1" id="subnode-pt" lang="pt">
<title>section pt</title>

</sect1>
<sect1 label="2.2" id="subnode-fr">
<title>section fr</title>

</sect1>
</chapter>
';

1;
