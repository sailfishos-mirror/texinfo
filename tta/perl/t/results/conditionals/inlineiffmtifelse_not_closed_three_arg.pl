use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlineiffmtifelse_not_closed_three_arg'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *@inlinefmtifelse C3 l1
   |EXTRA
   |expand_index:{2}
   |format:{html}
    *brace_arg C1
     {html}
    *elided_brace_command_arg C1
     {raw: hhhhh}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     {ggggg\\n}
';


$result_texis{'inlineiffmtifelse_not_closed_three_arg'} = '@inlinefmtifelse{html, hhhhh, ggggg
}';


$result_texts{'inlineiffmtifelse_not_closed_three_arg'} = 'ggggg
';

$result_errors{'inlineiffmtifelse_not_closed_three_arg'} = [
  {
    'error_line' => '@inlinefmtifelse missing closing brace
',
    'line_nr' => 1,
    'text' => '@inlinefmtifelse missing closing brace',
    'type' => 'error'
  }
];


$result_nodes_list{'inlineiffmtifelse_not_closed_three_arg'} = '';

$result_sections_list{'inlineiffmtifelse_not_closed_three_arg'} = '';

$result_sectioning_root{'inlineiffmtifelse_not_closed_three_arg'} = '';

$result_headings_list{'inlineiffmtifelse_not_closed_three_arg'} = '';

1;
