use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'caption_no_braces'} = '*document_root C1
 *before_node_section C1
  *0 @caption l1
';


$result_texis{'caption_no_braces'} = '@caption';


$result_texts{'caption_no_braces'} = '';

$result_errors{'caption_no_braces'} = [
  {
    'error_line' => '@caption expected braces
',
    'line_nr' => 1,
    'text' => '@caption expected braces',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'caption_no_braces'} = '';


$result_converted{'html_text'}->{'caption_no_braces'} = '';


$result_converted{'latex_text'}->{'caption_no_braces'} = '';


$result_converted{'docbook'}->{'caption_no_braces'} = '';

1;
