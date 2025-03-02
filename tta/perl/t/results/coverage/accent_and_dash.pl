use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'accent_and_dash'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @^ C1 l1
    *brace_container C1
     {a--}
';


$result_texis{'accent_and_dash'} = '@^{a--}';


$result_texts{'accent_and_dash'} = 'a-^';

$result_errors{'accent_and_dash'} = [];


$result_floats{'accent_and_dash'} = {};



$result_converted{'plaintext'}->{'accent_and_dash'} = 'a-̂
';


$result_converted{'html_text'}->{'accent_and_dash'} = '<p>a&ndash;&#770;</p>';


$result_converted{'xml'}->{'accent_and_dash'} = '<para><accent type="circ">a&textndash;</accent></para>';


$result_converted{'latex_text'}->{'accent_and_dash'} = '\\^{a--}';


$result_converted{'docbook'}->{'accent_and_dash'} = '<para>a&#8211;&#770;</para>';

1;
