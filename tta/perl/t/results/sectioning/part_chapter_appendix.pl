use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'part_chapter_appendix'} = '*document_root C4
 *before_node_section C1
  {empty_line:\\n}
 *0 @part C2 l2 {Part 1}
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
    {Part 1}
  {empty_line:\\n}
 *1 @chapter C2 l4 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_part:[E0]
 |section_directions:D[up->E0]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
 *2 @appendix C1 l6 {Appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E0]
 |section_heading_number:{A}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Appendix}
';


$result_texis{'part_chapter_appendix'} = '
@part Part 1

@chapter chapter

@appendix Appendix
';


$result_texts{'part_chapter_appendix'} = '
Part 1
******

1 chapter
*********

Appendix A Appendix
*******************
';

$result_errors{'part_chapter_appendix'} = [];


$result_nodes_list{'part_chapter_appendix'} = '';

$result_sections_list{'part_chapter_appendix'} = '1|Part 1
2|chapter
3|Appendix
';


$result_converted{'xml'}->{'part_chapter_appendix'} = '
<part spaces=" "><sectiontitle>Part 1</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

</chapter>
</part>
<appendix spaces=" "><sectiontitle>Appendix</sectiontitle>
</appendix>
';

1;
