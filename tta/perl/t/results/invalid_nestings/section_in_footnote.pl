use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_in_footnote'} = '*document_root C2
 *before_node_section C2
  {empty_line:\\n}
  *paragraph C2
   {Text}
   *0 @footnote C1 l2
   |INFO
   |spaces_before_argument:
    |{\\n}
    *brace_command_context C1
     {empty_line:\\n}
 *1 @section C1 l4 {a section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a section}
';


$result_texis{'section_in_footnote'} = '
Text@footnote{

}@section a section
';


$result_texts{'section_in_footnote'} = '
Text1 a section
===========
';

$result_errors{'section_in_footnote'} = [
  {
    'error_line' => '@section seen before @footnote closing brace
',
    'line_nr' => 2,
    'text' => '@section seen before @footnote closing brace',
    'type' => 'error'
  }
];


$result_floats{'section_in_footnote'} = {};


1;
