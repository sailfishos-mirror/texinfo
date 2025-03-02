use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'spaces_no_brace_after_braced_command'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   *0 @code l1
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


$result_floats{'spaces_no_brace_after_braced_command'} = {};


1;
