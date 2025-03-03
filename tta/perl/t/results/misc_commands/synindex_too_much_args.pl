use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'synindex_too_much_args'} = '*document_root C1
 *before_node_section C1
  *@syncodeindex C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp fn    truc}
';


$result_texis{'synindex_too_much_args'} = '@syncodeindex cp fn    truc
';


$result_texts{'synindex_too_much_args'} = '';

$result_errors{'synindex_too_much_args'} = [
  {
    'error_line' => 'bad argument to @syncodeindex: cp fn    truc
',
    'line_nr' => 1,
    'text' => 'bad argument to @syncodeindex: cp fn    truc',
    'type' => 'error'
  }
];


1;
