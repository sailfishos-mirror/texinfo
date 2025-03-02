use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_node'} = '*document_root C3
 *before_node_section
 *0 @node C2 l1
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *1 @node C1 l3
 |INFO
 |spaces_before_argument:
  |{ }
  *arguments_line C4
   *line_arg
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{next}
   |normalized:{next}
    {next}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{prev}
   |normalized:{prev}
    {prev}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{up}
   |normalized:{up}
    {up}
';


$result_texis{'empty_node'} = '@node

@node , next, prev, up
';


$result_texts{'empty_node'} = '
';

$result_errors{'empty_node'} = [
  {
    'error_line' => 'empty argument in @node
',
    'line_nr' => 1,
    'text' => 'empty argument in @node',
    'type' => 'error'
  },
  {
    'error_line' => 'empty argument in @node
',
    'line_nr' => 3,
    'text' => 'empty argument in @node',
    'type' => 'error'
  }
];


$result_floats{'empty_node'} = {};


1;
