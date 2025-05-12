use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'arg_in_brace_no_arg_command'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   *@TeX C1 l1
    *brace_container C1
     {in tex}
   {\\n}
';


$result_texis{'arg_in_brace_no_arg_command'} = '@TeX{in tex}
';


$result_texts{'arg_in_brace_no_arg_command'} = 'TeX
';

$result_errors{'arg_in_brace_no_arg_command'} = [
  {
    'error_line' => 'warning: command @TeX does not accept arguments
',
    'line_nr' => 1,
    'text' => 'command @TeX does not accept arguments',
    'type' => 'warning'
  }
];


$result_nodes_list{'arg_in_brace_no_arg_command'} = '';

$result_sections_list{'arg_in_brace_no_arg_command'} = '';

1;
