use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_part_chapter'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
Next: [U1]
 *before_node_section
 *0 @top C2 l1 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E1]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
U1 unit[E2]
unit_directions:D[prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Back: [U0]
FastBack: [U0]
 *1 @part C2 l3 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E2]
 |section_childs:EC[E2]
 |section_directions:D[prev->E0]
 |section_level:{0}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
  {empty_line:\\n}
 *2 @chapter C1 l5 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E1]
 |section_directions:D[up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    {chapter}
';


$result_texis{'top_part_chapter'} = '@top top

@part part

@chapter chapter 
';


$result_texts{'top_part_chapter'} = 'top
***

part
****

1 chapter
*********
';

$result_errors{'top_part_chapter'} = [];



$result_converted{'xml'}->{'top_part_chapter'} = '<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter </sectiontitle>
</chapter>
</part>
';


$result_converted{'docbook'}->{'top_part_chapter'} = '<chapter label="">
<title>top</title>

</chapter>
<part label="">
<title>part</title>
<chapter label="1">
<title>chapter</title>

</chapter>
</part>
';

1;
