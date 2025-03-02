use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

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
 |associated_section:[E2]
 |is_target:{1}
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
 |associated_node:[E1]
 |section_directions:D[up->E0]
 |section_level:{1}
 |section_number:{1}
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


$result_floats{'extension_undef'} = {};


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
