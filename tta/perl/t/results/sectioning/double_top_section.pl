use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_top_section'} = '*document_root C3
 *before_node_section
 *0 @top C4 l1 {First top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E1]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {First top}
  {empty_line:\\n}
  *paragraph C1
   {First top.\\n}
  {empty_line:\\n}
 *1 @top C3 l5 {Second top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E0]
 |section_level:{0}
 |toplevel_directions:D[prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Second top}
  {empty_line:\\n}
  *paragraph C1
   {Second top.\\n}
';


$result_texis{'double_top_section'} = '@top First top

First top.

@top Second top

Second top.
';


$result_texts{'double_top_section'} = 'First top
*********

First top.

Second top
**********

Second top.
';

$result_errors{'double_top_section'} = [
  {
    'error_line' => 'warning: multiple @top
',
    'line_nr' => 5,
    'text' => 'multiple @top',
    'type' => 'warning'
  }
];


$result_floats{'double_top_section'} = {};


1;
