use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_not_closed_in_documentencoding'} = '*document_root C1
 *before_node_section C1
  *@documentencoding C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
    *@strong l1
';


$result_texis{'command_not_closed_in_documentencoding'} = '@documentencoding @strong';


$result_texts{'command_not_closed_in_documentencoding'} = '';

$result_errors{'command_not_closed_in_documentencoding'} = [
  {
    'error_line' => 'warning: @strong should not appear in @documentencoding
',
    'line_nr' => 1,
    'text' => '@strong should not appear in @documentencoding',
    'type' => 'warning'
  },
  {
    'error_line' => '@strong missing closing brace
',
    'line_nr' => 1,
    'text' => '@strong missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @documentencoding: @strong
',
    'line_nr' => 1,
    'text' => 'bad argument to @documentencoding: @strong',
    'type' => 'error'
  }
];


$result_nodes_list{'command_not_closed_in_documentencoding'} = '';

$result_sections_list{'command_not_closed_in_documentencoding'} = '';

1;
