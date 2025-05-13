use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'strong_no_braces'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *@strong l1
';


$result_texis{'strong_no_braces'} = '@strong';


$result_texts{'strong_no_braces'} = '';

$result_errors{'strong_no_braces'} = [
  {
    'error_line' => '@strong expected braces
',
    'line_nr' => 1,
    'text' => '@strong expected braces',
    'type' => 'error'
  }
];


$result_nodes_list{'strong_no_braces'} = '';

$result_sections_list{'strong_no_braces'} = '';

$result_headings_list{'strong_no_braces'} = '';


$result_converted{'plaintext'}->{'strong_no_braces'} = '**
';


$result_converted{'html_text'}->{'strong_no_braces'} = '';


$result_converted{'latex_text'}->{'strong_no_braces'} = '\\textbf{}';


$result_converted{'docbook'}->{'strong_no_braces'} = '<para></para>';

1;
