use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'definfoenclose_bad_argument'} = '*document_root C1
 *before_node_section C1
  *@definfoenclose C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
    {#phoo,;,:}
';


$result_texis{'definfoenclose_bad_argument'} = '@definfoenclose #phoo,;,:';


$result_texts{'definfoenclose_bad_argument'} = '';

$result_errors{'definfoenclose_bad_argument'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 1,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @definfoenclose
',
    'line_nr' => 1,
    'text' => 'bad argument to @definfoenclose',
    'type' => 'error'
  }
];


1;
