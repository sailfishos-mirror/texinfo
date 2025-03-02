use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'abbr_no_braces'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @abbr l1
';


$result_texis{'abbr_no_braces'} = '@abbr';


$result_texts{'abbr_no_braces'} = '';

$result_errors{'abbr_no_braces'} = [
  {
    'error_line' => '@abbr expected braces
',
    'line_nr' => 1,
    'text' => '@abbr expected braces',
    'type' => 'error'
  }
];


$result_floats{'abbr_no_braces'} = {};



$result_converted{'plaintext'}->{'abbr_no_braces'} = '';


$result_converted{'html_text'}->{'abbr_no_braces'} = '<p><abbr class="abbr"></abbr></p>';


$result_converted{'latex_text'}->{'abbr_no_braces'} = '';


$result_converted{'docbook'}->{'abbr_no_braces'} = '<para></para>';

1;
