use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_empty_direction'} = '*document_root C2
 *before_node_section
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{name}
  *arguments_line C2
   *line_arg C1
    {name}
   *line_arg
   |INFO
   |spaces_before_argument:
    |{ }
';


$result_texis{'node_empty_direction'} = '@node name, ';


$result_texts{'node_empty_direction'} = '';

$result_nodes{'node_empty_direction'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'name'
    }
  }
];

$result_menus{'node_empty_direction'} = [
  {
    'extra' => {
      'normalized' => 'name'
    }
  }
];

$result_errors{'node_empty_direction'} = [];


$result_floats{'node_empty_direction'} = {};


1;
