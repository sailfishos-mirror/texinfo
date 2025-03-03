use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_simple'} = '*document_root C2
 *before_node_section
 *0 @node C1 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
    {first}
';


$result_texis{'node_simple'} = '@node first';


$result_texts{'node_simple'} = '';

$result_errors{'node_simple'} = [];


1;
