use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_index_entry'} = '*document_root C1
 *before_node_section C2
  {spaces_before_paragraph: }
  *paragraph C1
   {someindex entry.\\n}
';


$result_texis{'unknown_index_entry'} = ' someindex entry.
';


$result_texts{'unknown_index_entry'} = 'someindex entry.
';

$result_errors{'unknown_index_entry'} = [
  {
    'error_line' => 'unknown command `someindex\'
',
    'line_nr' => 1,
    'text' => 'unknown command `someindex\'',
    'type' => 'error'
  }
];


1;
