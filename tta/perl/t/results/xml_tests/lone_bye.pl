use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'lone_bye'} = '*document_root C2
 *before_node_section
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'lone_bye'} = '@bye
';


$result_texts{'lone_bye'} = '';

$result_errors{'lone_bye'} = [];



$result_converted{'xml'}->{'lone_bye'} = '<bye></bye>
';

1;
