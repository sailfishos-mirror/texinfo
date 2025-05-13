use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'invalid_accent_punctuation'} = '*document_root C1
 *before_node_section C1
  *paragraph C3
   {a. }
   *@^ l1
   *@@
';


$result_texis{'invalid_accent_punctuation'} = 'a. @^@@';


$result_texts{'invalid_accent_punctuation'} = 'a. ^@';

$result_errors{'invalid_accent_punctuation'} = [
  {
    'error_line' => '@^ expected braces
',
    'line_nr' => 1,
    'text' => '@^ expected braces',
    'type' => 'error'
  }
];


$result_nodes_list{'invalid_accent_punctuation'} = '';

$result_sections_list{'invalid_accent_punctuation'} = '';

$result_headings_list{'invalid_accent_punctuation'} = '';


$result_converted{'plaintext'}->{'invalid_accent_punctuation'} = 'a.  ̂@
';

1;
