use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'a_comma_after_node'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {Commands}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Commands}
  *arguments_line C3
   *line_arg C1
    {Commands}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Requirements}
   |normalized:{Requirements}
    {Requirements}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Nodes and Menus}
   |normalized:{Nodes-and-Menus}
    {Nodes and Menus}
  {empty_line:\\n}
  *paragraph C1
   {A comma in text, end.\\n}
';


$result_texis{'a_comma_after_node'} = '@node Commands, Requirements, Nodes and Menus

A comma in text, end.
';


$result_texts{'a_comma_after_node'} = '
A comma in text, end.
';

$result_errors{'a_comma_after_node'} = [
  {
    'error_line' => 'Next reference to nonexistent `Requirements\'
',
    'line_nr' => 1,
    'text' => 'Next reference to nonexistent `Requirements\'',
    'type' => 'error'
  },
  {
    'error_line' => 'Prev reference to nonexistent `Nodes and Menus\'
',
    'line_nr' => 1,
    'text' => 'Prev reference to nonexistent `Nodes and Menus\'',
    'type' => 'error'
  }
];


1;
