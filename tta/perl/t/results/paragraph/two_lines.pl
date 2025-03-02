use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'two_lines'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   {text l 1\\n}
   {text l 2\\n}
';


$result_texis{'two_lines'} = 'text l 1
text l 2
';


$result_texts{'two_lines'} = 'text l 1
text l 2
';

$result_errors{'two_lines'} = [];


$result_floats{'two_lines'} = {};



$result_converted{'plaintext'}->{'two_lines'} = 'text l 1 text l 2
';


$result_converted{'html_text'}->{'two_lines'} = '<p>text l 1
text l 2
</p>';

1;
