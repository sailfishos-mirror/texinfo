use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'sectioning_test_ref'} = '*document_root C9
 *before_node_section
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
 *1 @top C4 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E7]
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
  *paragraph C1
   {In T.\\n}
  {empty_line:\\n}
 *2 @node C1 l6 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E6|prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C4 l7 {Chap1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_childs:EC[E5]
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
    {Chap1}
  {empty_line:\\n}
  *paragraph C1
   {In c1.\\n}
  {empty_line:\\n}
 *4 @node C1 l11 {sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[up->E2]
 |node_number:{3}
 |normalized:{sec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec}
 *5 @section C4 l12 {sec1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_directions:D[up->E3]
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec1}
  {empty_line:\\n}
  *paragraph C1
   {In s1.1.\\n}
  {empty_line:\\n}
 *6 @node C1 l16 {chap2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |node_number:{4}
 |normalized:{chap2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap2}
 *7 @chapter C3 l17 {Chap2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_directions:D[prev->E3|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap2}
  {empty_line:\\n}
  *paragraph C1
   {In c2.\\n}
';


$result_texis{'sectioning_test_ref'} = '@node Top
@top top

In T.

@node chap
@chapter Chap1

In c1.

@node sec
@section sec1

In s1.1.

@node chap2
@chapter Chap2

In c2.
';


$result_texts{'sectioning_test_ref'} = 'top
***

In T.

1 Chap1
*******

In c1.

1.1 sec1
========

In s1.1.

2 Chap2
*******

In c2.
';

$result_errors{'sectioning_test_ref'} = [];



$result_converted{'xml'}->{'sectioning_test_ref'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<para>In T.
</para>
</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodenext automatic="on">chap2</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chap1</sectiontitle>

<para>In c1.
</para>
<node identifier="sec" spaces=" "><nodename>sec</nodename><nodeup automatic="on">chap</nodeup></node>
<section spaces=" "><sectiontitle>sec1</sectiontitle>

<para>In s1.1.
</para>
</section>
</chapter>
<node identifier="chap2" spaces=" "><nodename>chap2</nodename><nodeprev automatic="on">chap</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chap2</sectiontitle>

<para>In c2.
</para></chapter>
';

1;
