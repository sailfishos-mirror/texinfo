use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'U_no_braces'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @U l1
';


$result_texis{'U_no_braces'} = '@U';


$result_texts{'U_no_braces'} = '';

$result_errors{'U_no_braces'} = [
  {
    'error_line' => '@U expected braces
',
    'line_nr' => 1,
    'text' => '@U expected braces',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'U_no_braces'} = '';


$result_converted{'html_text'}->{'U_no_braces'} = '';


$result_converted{'latex_text'}->{'U_no_braces'} = '';


$result_converted{'docbook'}->{'U_no_braces'} = '<para></para>';

1;
