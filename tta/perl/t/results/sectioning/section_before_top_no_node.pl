use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_before_top_no_node'} = '*document_root C3
 *before_node_section
 *0 @section C2 l1 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E1]
 |section_heading_number:{1}
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E1]
  ||section_level:{1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    {section}
  {empty_line:\\n}
 *1 @top C1 l3 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E0]
 |section_level:{2}
 |section_number:{2}
 |toplevel_directions:D[prev->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
';


$result_texis{'section_before_top_no_node'} = '@section section 

@top top
';


$result_texts{'section_before_top_no_node'} = '1 section
=========

top
===
';

$result_errors{'section_before_top_no_node'} = [
  {
    'error_line' => 'warning: lowering the section level of @top appearing after a lower element
',
    'line_nr' => 3,
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'section_before_top_no_node'} = '<section spaces=" "><sectiontitle>section </sectiontitle>

</section>
<unnumberedsec originalcommand="top" spaces=" "><sectiontitle>top</sectiontitle>
</unnumberedsec>
';

1;
