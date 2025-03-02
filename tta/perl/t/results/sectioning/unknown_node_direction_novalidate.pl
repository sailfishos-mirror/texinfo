use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_node_direction_novalidate'} = '*document_root C2
 *before_node_section C2
  *@novalidate C1 l1
   {rawline_arg:\\n}
  {empty_line:\\n}
 *0 @node C1 l3
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{one-arg2}
  *arguments_line C2
   *line_arg C1
    {one arg2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{two arg}
   |normalized:{two-arg}
    {two arg}
';


$result_texis{'unknown_node_direction_novalidate'} = '@novalidate

@node one arg2, two arg
';


$result_texts{'unknown_node_direction_novalidate'} = '
';

$result_nodes{'unknown_node_direction_novalidate'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'one-arg2'
    }
  }
];

$result_menus{'unknown_node_direction_novalidate'} = [
  {
    'extra' => {
      'normalized' => 'one-arg2'
    }
  }
];

$result_errors{'unknown_node_direction_novalidate'} = [];


$result_floats{'unknown_node_direction_novalidate'} = {};


1;
