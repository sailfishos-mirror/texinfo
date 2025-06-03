use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'spaces_unknown_command_after_braced_command'} = '*document_root C1
 *before_node_section C3
  *paragraph C2
   *@code l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{spaces_after_cmd_before_arg: }
   { \\n}
  {empty_line:\\n}
  *paragraph C3
   *@~ l3
   |INFO
   |spaces_after_cmd_before_arg:
    |{spaces_after_cmd_before_arg: }
   {\\n}
   { e\\n}
';


$result_texis{'spaces_unknown_command_after_braced_command'} = '@code  

@~ 
 e
';


$result_texts{'spaces_unknown_command_after_braced_command'} = ' 

~
 e
';

$result_errors{'spaces_unknown_command_after_braced_command'} = [
  {
    'error_line' => '@code expected braces
',
    'line_nr' => 1,
    'text' => '@code expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'line_nr' => 1,
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  },
  {
    'error_line' => '@~ expected braces
',
    'line_nr' => 3,
    'text' => '@~ expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `notexisting\'
',
    'line_nr' => 3,
    'text' => 'unknown command `notexisting\'',
    'type' => 'error'
  }
];


$result_nodes_list{'spaces_unknown_command_after_braced_command'} = '';

$result_sections_list{'spaces_unknown_command_after_braced_command'} = '';

$result_sectioning_root{'spaces_unknown_command_after_braced_command'} = '';

$result_headings_list{'spaces_unknown_command_after_braced_command'} = '';

1;
