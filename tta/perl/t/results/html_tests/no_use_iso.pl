use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_use_iso'} = '*document_root C1
 *before_node_section C1
  *paragraph C3
   {AA }
   *0 @^ C1 l1
    *following_arg C1
     {e}
   { --- -- \'` \'\' ``}
';


$result_texis{'no_use_iso'} = 'AA @^e --- -- \'` \'\' ``';


$result_texts{'no_use_iso'} = 'AA e^ -- - \'` " "';

$result_errors{'no_use_iso'} = [];



$result_converted{'html_text'}->{'no_use_iso'} = '<p>AA &ecirc; -- - \'` &quot; &quot;</p>';

1;
