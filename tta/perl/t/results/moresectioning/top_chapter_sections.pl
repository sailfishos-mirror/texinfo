use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_chapter_sections'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
 *before_node_section
 *0 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E1|E2|E4|E8]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
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
FastForward: [U2]
FastBack: [U0]
Next: [U2]
Up: [U0]
 *1 @unnumbered C2 l3 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E2|up->E0]
 |section_level:{1}
 |toplevel_directions:D[next->E2|prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  {empty_line:\\n}
U2 unit[E2]
unit_directions:D[next->[U3]|prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Forward: [U3]
Back: [U1]
FastForward: [U4]
FastBack: [U1]
Next: [U4]
Prev: [U1]
Up: [U0]
 *2 @chapter C2 l5 {First chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_directions:D[next->E4|prev->E1|up->E0]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E4|prev->E1|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {First chapter}
  {empty_line:\\n}
U3 unit[E3]
unit_directions:D[next->[U4]|prev->[U2]]
UNIT_DIRECTIONS
This: [U3]
Forward: [U4]
Back: [U2]
FastForward: [U4]
FastBack: [U2]
Up: [U2]
 *3 @section C2 l7 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E2]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second}
  {empty_line:\\n}
U4 unit[E4]
unit_directions:D[next->[U5]|prev->[U3]]
UNIT_DIRECTIONS
This: [U4]
Forward: [U5]
Back: [U3]
FastForward: [U8]
FastBack: [U2]
Next: [U8]
Prev: [U2]
Up: [U0]
 *4 @chapter C2 l9 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E5]
 |section_directions:D[next->E8|prev->E2|up->E0]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E8|prev->E2|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
U5 unit[E5]
unit_directions:D[next->[U6]|prev->[U4]]
UNIT_DIRECTIONS
This: [U5]
Forward: [U6]
Back: [U4]
FastForward: [U8]
FastBack: [U4]
Up: [U4]
 *5 @section C2 l11 {Section of chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E6|E7]
 |section_directions:D[up->E4]
 |section_level:{2}
 |section_number:{2.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section of chapter}
  {empty_line:\\n}
U6 unit[E6]
unit_directions:D[next->[U7]|prev->[U5]]
UNIT_DIRECTIONS
This: [U6]
Forward: [U7]
Back: [U5]
FastForward: [U8]
FastBack: [U4]
Next: [U7]
Up: [U5]
 *6 @subsection C2 l13 {subsection 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E7|up->E5]
 |section_level:{3}
 |section_number:{2.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection 1}
  {empty_line:\\n}
U7 unit[E7]
unit_directions:D[next->[U8]|prev->[U6]]
UNIT_DIRECTIONS
This: [U7]
Forward: [U8]
Back: [U6]
FastForward: [U8]
FastBack: [U4]
Prev: [U6]
Up: [U5]
 *7 @subsection C2 l15 {subsection 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E6|up->E5]
 |section_level:{3}
 |section_number:{2.1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection 2}
  {empty_line:\\n}
U8 unit[E8]
unit_directions:D[prev->[U7]]
UNIT_DIRECTIONS
This: [U8]
Back: [U7]
FastBack: [U4]
Prev: [U4]
Up: [U0]
 *8 @chapter C1 l17 {Chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E4|up->E0]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E4|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter 2}
';


$result_texis{'top_chapter_sections'} = '@top top

@unnumbered unnumbered

@chapter First chapter

@section second

@chapter Chapter

@section Section of chapter

@subsection subsection 1

@subsection subsection 2

@chapter Chapter 2
';


$result_texts{'top_chapter_sections'} = 'top
***

unnumbered
**********

1 First chapter
***************

1.1 second
==========

2 Chapter
*********

2.1 Section of chapter
======================

2.1.1 subsection 1
------------------

2.1.2 subsection 2
------------------

3 Chapter 2
***********
';

$result_errors{'top_chapter_sections'} = [];


$result_floats{'top_chapter_sections'} = {};



$result_converted{'xml'}->{'top_chapter_sections'} = '<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<unnumbered spaces=" "><sectiontitle>unnumbered</sectiontitle>

</unnumbered>
<chapter spaces=" "><sectiontitle>First chapter</sectiontitle>

<section spaces=" "><sectiontitle>second</sectiontitle>

</section>
</chapter>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<section spaces=" "><sectiontitle>Section of chapter</sectiontitle>

<subsection spaces=" "><sectiontitle>subsection 1</sectiontitle>

</subsection>
<subsection spaces=" "><sectiontitle>subsection 2</sectiontitle>

</subsection>
</section>
</chapter>
<chapter spaces=" "><sectiontitle>Chapter 2</sectiontitle>
</chapter>
';

1;
