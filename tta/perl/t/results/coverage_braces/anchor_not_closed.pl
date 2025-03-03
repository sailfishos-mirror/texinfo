use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_not_closed'} = '*document_root C1
 *before_node_section C1
  *0 @anchor C1 l1
   *brace_arg C2
    {my anchor\\n}
    {empty_line:\\n}
';


$result_texis{'anchor_not_closed'} = '@anchor{my anchor

}';


$result_texts{'anchor_not_closed'} = '';

$result_errors{'anchor_not_closed'} = [
  {
    'error_line' => '@anchor missing closing brace
',
    'line_nr' => 1,
    'text' => '@anchor missing closing brace',
    'type' => 'error'
  }
];


1;
