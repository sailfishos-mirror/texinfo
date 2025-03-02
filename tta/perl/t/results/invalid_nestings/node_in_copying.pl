use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_in_copying'} = '*document_root C2
 *before_node_section C1
  *0 @copying C1 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
 *1 @node C2 l2 {node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node}
  {empty_line:\\n}
';


$result_texis{'node_in_copying'} = '@copying
@node node

';


$result_texts{'node_in_copying'} = '
';

$result_nodes{'node_in_copying'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'node'
    }
  }
];

$result_menus{'node_in_copying'} = [
  {
    'extra' => {
      'normalized' => 'node'
    }
  }
];

$result_errors{'node_in_copying'} = [
  {
    'error_line' => '@node seen before @end copying
',
    'line_nr' => 2,
    'text' => '@node seen before @end copying',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end copying\'
',
    'line_nr' => 4,
    'text' => 'unmatched `@end copying\'',
    'type' => 'error'
  }
];


$result_floats{'node_in_copying'} = {};


1;
