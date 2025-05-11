use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'sectioning_part_appendix'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
Next: [U5]
 *before_node_section
 *0 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1]
 |section_directions:D[next->E5]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E5|E9]
  ||section_level:{-1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
U1 unit[E1]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
FastForward: [U5]
FastBack: [U0]
Up: [U0]
 *1 @chapter C2 l3 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_directions:D[up->E0]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
U2 unit[E2]
unit_directions:D[next->[U3]|prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Forward: [U3]
Back: [U1]
FastForward: [U5]
FastBack: [U1]
Up: [U1]
 *2 @section C2 l5 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_directions:D[up->E1]
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
U3 unit[E3]
unit_directions:D[next->[U4]|prev->[U2]]
UNIT_DIRECTIONS
This: [U3]
Forward: [U4]
Back: [U2]
FastForward: [U5]
FastBack: [U1]
Up: [U2]
 *3 @subsection C2 l7 {subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
 |section_directions:D[up->E2]
 |section_heading_number:{1.1.1}
 |section_level:{3}
 |section_number:{4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection}
  {empty_line:\\n}
U4 unit[E4]
unit_directions:D[next->[U5]|prev->[U3]]
UNIT_DIRECTIONS
This: [U4]
Forward: [U5]
Back: [U3]
FastForward: [U5]
FastBack: [U1]
Up: [U3]
 *4 @subsubsection C2 l9 {subsubsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E3]
 |section_heading_number:{1.1.1.1}
 |section_level:{4}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsubsection}
  {empty_line:\\n}
U5 unit[E6]
unit_directions:D[next->[U6]|prev->[U4]]
UNIT_DIRECTIONS
This: [U5]
Forward: [U6]
Back: [U4]
FastForward: [U6]
FastBack: [U1]
Next: [U6]
 *5 @part C2 l11 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E6]
 |section_childs:EC[E6|E7|E8]
 |section_directions:D[next->E9|prev->E0]
 |section_level:{0}
 |section_number:{6}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *6 @chapter C2 l13 {chapter in part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E5]
 |section_directions:D[next->E7|up->E5]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{7}
 |toplevel_directions:D[next->E7|prev->E1|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter in part}
  {empty_line:\\n}
U6 unit[E7]
unit_directions:D[next->[U7]|prev->[U5]]
UNIT_DIRECTIONS
This: [U6]
Forward: [U7]
Back: [U5]
FastForward: [U7]
FastBack: [U5]
Next: [U7]
Prev: [U5]
Up: [U5]
 *7 @chapter C2 l15 {second chapter in part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E8|prev->E6|up->E5]
 |section_heading_number:{3}
 |section_level:{1}
 |section_number:{8}
 |toplevel_directions:D[next->E8|prev->E6|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second chapter in part}
  {empty_line:\\n}
U7 unit[E8]
unit_directions:D[next->[U8]|prev->[U6]]
UNIT_DIRECTIONS
This: [U7]
Forward: [U8]
Back: [U6]
FastForward: [U8]
FastBack: [U6]
Prev: [U6]
Up: [U5]
 *8 @unnumbered C2 l17 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E7|up->E5]
 |section_level:{1}
 |section_number:{9}
 |toplevel_directions:D[next->E9|prev->E7|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  {empty_line:\\n}
U8 unit[E9]
unit_directions:D[next->[U9]|prev->[U7]]
UNIT_DIRECTIONS
This: [U8]
Forward: [U9]
Back: [U7]
FastBack: [U7]
Prev: [U5]
 *9 @appendix C2 l19 {appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E10]
 |section_directions:D[prev->E5]
 |section_heading_number:{A}
 |section_level:{1}
 |section_number:{10}
 |toplevel_directions:D[prev->E8|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendix}
  {empty_line:\\n}
U9 unit[E10]
unit_directions:D[prev->[U8]]
UNIT_DIRECTIONS
This: [U9]
Back: [U8]
FastBack: [U8]
Up: [U8]
 *10 @appendixsec C1 l21 {appendixsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E9]
 |section_heading_number:{A.1}
 |section_level:{2}
 |section_number:{11}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendixsec}
';


$result_texis{'sectioning_part_appendix'} = '@top top

@chapter chapter

@section section

@subsection subsection

@subsubsection subsubsection

@part part

@chapter chapter in part

@chapter second chapter in part

@unnumbered unnumbered

@appendix appendix

@appendixsec appendixsec
';


$result_texts{'sectioning_part_appendix'} = 'top
***

1 chapter
*********

1.1 section
===========

1.1.1 subsection
----------------

1.1.1.1 subsubsection
.....................

part
****

2 chapter in part
*****************

3 second chapter in part
************************

unnumbered
**********

Appendix A appendix
*******************

A.1 appendixsec
===============
';

$result_errors{'sectioning_part_appendix'} = [];



$result_converted{'xml'}->{'sectioning_part_appendix'} = '<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

<section spaces=" "><sectiontitle>section</sectiontitle>

<subsection spaces=" "><sectiontitle>subsection</sectiontitle>

<subsubsection spaces=" "><sectiontitle>subsubsection</sectiontitle>

</subsubsection>
</subsection>
</section>
</chapter>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter in part</sectiontitle>

</chapter>
<chapter spaces=" "><sectiontitle>second chapter in part</sectiontitle>

</chapter>
<unnumbered spaces=" "><sectiontitle>unnumbered</sectiontitle>

</unnumbered>
</part>
<appendix spaces=" "><sectiontitle>appendix</sectiontitle>

<appendixsec spaces=" "><sectiontitle>appendixsec</sectiontitle>
</appendixsec>
</appendix>
';

1;
