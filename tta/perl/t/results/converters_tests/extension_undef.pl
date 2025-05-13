use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'extension_undef'} = '*document_root C4
 *before_node_section C2
  *preamble_before_content
  *paragraph C1
   {node Top\\n}
 *0 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *1 @node C1 l4 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *2 @chapter C1 l5 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E0]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
';


$result_texis{'extension_undef'} = 'node Top
@top top

@node chapter
@chapter Chap
';


$result_texts{'extension_undef'} = 'node Top
top
***

1 Chap
******
';

$result_errors{'extension_undef'} = [];


$result_nodes_list{'extension_undef'} = '1|chapter
 associated_section: 1 Chap
 associated_title_command: 1 Chap
';

$result_sections_list{'extension_undef'} = '1|top
2|Chap
 associated_anchor_command: chapter
 associated_node: chapter
';

$result_headings_list{'extension_undef'} = '';

$result_converted_errors{'file_info'}->{'extension_undef'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'file_name' => 'extension_undef.texi',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];


1;
