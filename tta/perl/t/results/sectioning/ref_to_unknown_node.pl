use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'ref_to_unknown_node'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   *0 @xref C1 l1
    *brace_arg C1
    |EXTRA
    |node_content:{unknown node}
    |normalized:{unknown-node}
     {unknown node}
   {.}
';


$result_texis{'ref_to_unknown_node'} = '@xref{unknown node}.';


$result_texts{'ref_to_unknown_node'} = 'unknown node.';

$result_errors{'ref_to_unknown_node'} = [
  {
    'error_line' => '@xref reference to nonexistent node `unknown node\'
',
    'line_nr' => 1,
    'text' => '@xref reference to nonexistent node `unknown node\'',
    'type' => 'error'
  }
];


1;
