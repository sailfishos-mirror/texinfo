use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'accent_no_closed_comment'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *@~ C1 l1
    *brace_container C2
     {e }
     *@c C1
      {rawline_arg: comment\\n}
';


$result_texis{'accent_no_closed_comment'} = '@~{e @c comment
}';


$result_texts{'accent_no_closed_comment'} = 'e ~';

$result_errors{'accent_no_closed_comment'} = [
  {
    'error_line' => '@~ missing closing brace
',
    'line_nr' => 1,
    'text' => '@~ missing closing brace',
    'type' => 'error'
  }
];


$result_nodes_list{'accent_no_closed_comment'} = '';

$result_sections_list{'accent_no_closed_comment'} = '';

1;
