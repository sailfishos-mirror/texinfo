use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'hyphenation_no_braces'} = '*document_root C1
 *before_node_section C1
  *0 @hyphenation l1
';


$result_texis{'hyphenation_no_braces'} = '@hyphenation';


$result_texts{'hyphenation_no_braces'} = '';

$result_errors{'hyphenation_no_braces'} = [
  {
    'error_line' => '@hyphenation expected braces
',
    'line_nr' => 1,
    'text' => '@hyphenation expected braces',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'hyphenation_no_braces'} = '';


$result_converted{'html_text'}->{'hyphenation_no_braces'} = '';


$result_converted{'latex_text'}->{'hyphenation_no_braces'} = '\\hyphenation{}';


$result_converted{'docbook'}->{'hyphenation_no_braces'} = '';

1;
