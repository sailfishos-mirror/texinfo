use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'brace_command_no_braces'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @xref l1
';


$result_texis{'brace_command_no_braces'} = '@xref';


$result_texts{'brace_command_no_braces'} = '';

$result_errors{'brace_command_no_braces'} = [
  {
    'error_line' => '@xref expected braces
',
    'line_nr' => 1,
    'text' => '@xref expected braces',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'brace_command_no_braces'} = '';


$result_converted{'html_text'}->{'brace_command_no_braces'} = '';


$result_converted{'latex_text'}->{'brace_command_no_braces'} = '';


$result_converted{'docbook'}->{'brace_command_no_braces'} = '<para></para>';

1;
