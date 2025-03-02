use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_node_no_section'} = '*document_root C2
 *before_node_section
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
';


$result_texis{'top_node_no_section'} = '@node Top
';


$result_texts{'top_node_no_section'} = '';

$result_nodes{'top_node_no_section'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'top_node_no_section'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'top_node_no_section'} = [];


$result_floats{'top_node_no_section'} = {};



$result_converted{'xml'}->{'top_node_no_section'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename></node>
';

1;
