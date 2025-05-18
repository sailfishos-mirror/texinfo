use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'spaces_no_brace_after_braced_command'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   *@code l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
   {b\\n}
';


$result_texis{'spaces_no_brace_after_braced_command'} = '@code b
';


$result_texts{'spaces_no_brace_after_braced_command'} = 'b
';

$result_errors{'spaces_no_brace_after_braced_command'} = [
  {
    'error_line' => '@code expected braces
',
    'line_nr' => 1,
    'text' => '@code expected braces',
    'type' => 'error'
  }
];


$result_nodes_list{'spaces_no_brace_after_braced_command'} = '';

$result_sections_list{'spaces_no_brace_after_braced_command'} = '';

$result_sectioning_root{'spaces_no_brace_after_braced_command'} = '';

$result_headings_list{'spaces_no_brace_after_braced_command'} = '';

1;
