use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlineifset_false_not_closed'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @inlineifset C2 l1
   |EXTRA
   |format:{aaa}
    *brace_arg C1
     {aaa}
    *elided_brace_command_arg C1
     {raw: bbb\\n}
';


$result_texis{'inlineifset_false_not_closed'} = '@inlineifset{aaa, bbb
}';


$result_texts{'inlineifset_false_not_closed'} = '';

$result_errors{'inlineifset_false_not_closed'} = [
  {
    'error_line' => '@inlineifset missing closing brace
',
    'line_nr' => 1,
    'text' => '@inlineifset missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'inlineifset_false_not_closed'} = {};


1;
