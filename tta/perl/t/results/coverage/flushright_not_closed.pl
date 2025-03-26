use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'flushright_not_closed'} = '*document_root C1
 *before_node_section C1
  *@flushright C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *paragraph C1
    {text flushed right\\n}
';


$result_texis{'flushright_not_closed'} = '@flushright

text flushed right
';


$result_texts{'flushright_not_closed'} = '
text flushed right
';

$result_errors{'flushright_not_closed'} = [
  {
    'error_line' => 'no matching `@end flushright\'
',
    'line_nr' => 3,
    'text' => 'no matching `@end flushright\'',
    'type' => 'error'
  }
];


1;
