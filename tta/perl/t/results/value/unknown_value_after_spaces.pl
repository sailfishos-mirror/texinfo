use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_value_after_spaces'} = '*document_root C1
 *before_node_section C3
  {spaces_before_paragraph:  }
  *0 @value C1
   *brace_container C1
    {unknown}
  {  }
';


$result_texis{'unknown_value_after_spaces'} = '  @value{unknown}  ';


$result_texts{'unknown_value_after_spaces'} = 'unknown  ';

$result_errors{'unknown_value_after_spaces'} = [
  {
    'error_line' => 'warning: undefined flag: unknown
',
    'line_nr' => 1,
    'text' => 'undefined flag: unknown',
    'type' => 'warning'
  }
];


1;
