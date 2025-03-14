use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'sectioning_part_appendix_no_top'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U4]
 *before_node_section
 *0 @chapter C2 l1 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E4|E8]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
U1 unit[E1]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
FastForward: [U4]
FastBack: [U0]
Up: [U0]
 *1 @section C2 l3 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_directions:D[up->E0]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
U2 unit[E2]
unit_directions:D[next->[U3]|prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Forward: [U3]
Back: [U1]
FastForward: [U4]
FastBack: [U0]
Up: [U1]
 *2 @subsection C2 l5 {subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_directions:D[up->E1]
 |section_level:{3}
 |section_number:{1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection}
  {empty_line:\\n}
U3 unit[E3]
unit_directions:D[next->[U4]|prev->[U2]]
UNIT_DIRECTIONS
This: [U3]
Forward: [U4]
Back: [U2]
FastForward: [U4]
FastBack: [U0]
Up: [U2]
 *3 @subsubsection C2 l7 {subsubsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E2]
 |section_level:{4}
 |section_number:{1.1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsubsection}
  {empty_line:\\n}
U4 unit[E5]
unit_directions:D[next->[U5]|prev->[U3]]
UNIT_DIRECTIONS
This: [U4]
Forward: [U5]
Back: [U3]
FastForward: [U5]
FastBack: [U0]
Next: [U5]
 *4 @part C2 l9 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E5]
 |section_childs:EC[E5|E6|E7]
 |section_directions:D[next->E8]
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *5 @chapter C2 l11 {chapter in part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E4]
 |section_directions:D[next->E6|up->E4]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter in part}
  {empty_line:\\n}
U5 unit[E6]
unit_directions:D[next->[U6]|prev->[U4]]
UNIT_DIRECTIONS
This: [U5]
Forward: [U6]
Back: [U4]
FastForward: [U6]
FastBack: [U4]
Next: [U6]
Prev: [U4]
Up: [U4]
 *6 @chapter C2 l13 {second chapter in part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E7|prev->E5|up->E4]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E7|prev->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second chapter in part}
  {empty_line:\\n}
U6 unit[E7]
unit_directions:D[next->[U7]|prev->[U5]]
UNIT_DIRECTIONS
This: [U6]
Forward: [U7]
Back: [U5]
FastForward: [U7]
FastBack: [U5]
Prev: [U5]
Up: [U4]
 *7 @unnumbered C2 l15 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E6|up->E4]
 |section_level:{1}
 |toplevel_directions:D[next->E8|prev->E6]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  {empty_line:\\n}
U7 unit[E8]
unit_directions:D[next->[U8]|prev->[U6]]
UNIT_DIRECTIONS
This: [U7]
Forward: [U8]
Back: [U6]
FastBack: [U6]
Prev: [U4]
 *8 @appendix C2 l17 {appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E9]
 |section_directions:D[prev->E4]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E7]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendix}
  {empty_line:\\n}
U8 unit[E9]
unit_directions:D[prev->[U7]]
UNIT_DIRECTIONS
This: [U8]
Back: [U7]
FastBack: [U7]
Up: [U7]
 *9 @appendixsec C1 l19 {appendixsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E8]
 |section_level:{2}
 |section_number:{A.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendixsec}
';


$result_texis{'sectioning_part_appendix_no_top'} = '@chapter chapter

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


$result_texts{'sectioning_part_appendix_no_top'} = '1 chapter
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

$result_errors{'sectioning_part_appendix_no_top'} = [];



$result_converted{'xml'}->{'sectioning_part_appendix_no_top'} = '<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

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
