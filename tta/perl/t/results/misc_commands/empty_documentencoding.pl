use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_documentencoding'} = '*document_root C1
 *before_node_section C1
  *@documentencoding C1 l1
  |EXTRA
  |global_command_number:{1}
   *line_arg
   |INFO
   |spaces_after_argument:
    |{   \\n}
';


$result_texis{'empty_documentencoding'} = '@documentencoding   
';


$result_texts{'empty_documentencoding'} = '';

$result_errors{'empty_documentencoding'} = [
  {
    'error_line' => 'warning: @documentencoding missing argument
',
    'line_nr' => 1,
    'text' => '@documentencoding missing argument',
    'type' => 'warning'
  }
];


1;
