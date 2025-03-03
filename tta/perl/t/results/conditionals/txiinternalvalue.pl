use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

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


1;
