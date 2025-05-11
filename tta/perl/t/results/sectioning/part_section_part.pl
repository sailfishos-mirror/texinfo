use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'part_section_part'} = '*document_root C4
 *before_node_section
 *0 @part C2 l1 {Part1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |part_associated_section:[E1]
 |section_childs:EC[E1]
 |section_directions:D[next->E2]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E2]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part1}
  {empty_line:\\n}
 *1 @section C2 l3 {section 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E0]
 |section_directions:D[up->E0]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section 1}
  {empty_line:\\n}
 *2 @part C1 l5 {Part 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{2}
 |section_directions:D[prev->E0]
 |section_level:{0}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Part 2}
';


$result_texis{'part_section_part'} = '@part Part1

@section section 1

@part Part 2
';


$result_texts{'part_section_part'} = 'Part1
*****

1 section 1
***********

Part 2
******
';

$result_errors{'part_section_part'} = [
  {
    'error_line' => 'raising the section level of @section which is too low
',
    'line_nr' => 3,
    'text' => 'raising the section level of @section which is too low',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: no sectioning command associated with @part
',
    'line_nr' => 5,
    'text' => 'no sectioning command associated with @part',
    'type' => 'warning'
  }
];


1;
