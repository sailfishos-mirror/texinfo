use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_chapter_before_top'} = '*document_root C4
 *before_node_section
 *0 @section C2 l1 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E1]
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E1|E2]
  ||section_level:{1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    {section}
  {empty_line:\\n}
 *1 @chapter C2 l3 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E2|prev->E0]
 |section_level:{2}
 |section_number:{2}
 |toplevel_directions:D[next->E2|prev->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
 *2 @top C1 l5 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E1]
 |section_level:{2}
 |toplevel_directions:D[prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
';


$result_texis{'section_chapter_before_top'} = '@section section 

@chapter chapter

@top top
';


$result_texts{'section_chapter_before_top'} = '1 section
=========

2 chapter
=========

top
===
';

$result_errors{'section_chapter_before_top'} = [
  {
    'error_line' => 'warning: lowering the section level of @chapter appearing after a lower element
',
    'line_nr' => 3,
    'text' => 'lowering the section level of @chapter appearing after a lower element',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: lowering the section level of @top appearing after a lower element
',
    'line_nr' => 5,
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  }
];


$result_floats{'section_chapter_before_top'} = {};



$result_converted{'xml'}->{'section_chapter_before_top'} = '<section spaces=" "><sectiontitle>section </sectiontitle>

</section>
<section originalcommand="chapter" spaces=" "><sectiontitle>chapter</sectiontitle>

</section>
<unnumberedsec originalcommand="top" spaces=" "><sectiontitle>top</sectiontitle>
</unnumberedsec>
';

1;
