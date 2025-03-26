use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'not_closed_itemize'} = '*document_root C1
 *before_node_section C1
  *@itemize C1 l1
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@bullet
     |INFO
     |inserted:{1}
';


$result_texis{'not_closed_itemize'} = '@itemize
';


$result_texts{'not_closed_itemize'} = '';

$result_errors{'not_closed_itemize'} = [
  {
    'error_line' => 'no matching `@end itemize\'
',
    'line_nr' => 1,
    'text' => 'no matching `@end itemize\'',
    'type' => 'error'
  }
];


1;
