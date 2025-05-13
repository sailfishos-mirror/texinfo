use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'txiinternalvalue'} = '*document_root C1
 *before_node_section C1
  {empty_line:\\n}
';


$result_texis{'txiinternalvalue'} = '
';


$result_texts{'txiinternalvalue'} = '
';

$result_errors{'txiinternalvalue'} = [
  {
    'error_line' => 'unknown command `txiinternalvalue\'
',
    'line_nr' => 1,
    'text' => 'unknown command `txiinternalvalue\'',
    'type' => 'error'
  }
];


$result_nodes_list{'txiinternalvalue'} = '';

$result_sections_list{'txiinternalvalue'} = '';

$result_headings_list{'txiinternalvalue'} = '';

1;
