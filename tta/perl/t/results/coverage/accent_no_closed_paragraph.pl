use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'accent_no_closed_paragraph'} = '*document_root C1
 *before_node_section C2
  *paragraph C1
   *@~ C1 l1
    *brace_container C2
     {e\\n}
     {empty_line:\\n}
  *paragraph C1
   {other para.\\n}
';


$result_texis{'accent_no_closed_paragraph'} = '@~{e

}other para.
';


$result_texts{'accent_no_closed_paragraph'} = 'e

~other para.
';

$result_errors{'accent_no_closed_paragraph'} = [
  {
    'error_line' => '@~ missing closing brace
',
    'line_nr' => 1,
    'text' => '@~ missing closing brace',
    'type' => 'error'
  }
];


$result_nodes_list{'accent_no_closed_paragraph'} = '';

$result_sections_list{'accent_no_closed_paragraph'} = '';

1;
