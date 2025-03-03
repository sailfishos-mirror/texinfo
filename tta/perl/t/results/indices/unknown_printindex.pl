use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_printindex'} = '*document_root C1
 *before_node_section C1
  *@printindex C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
    {bidule}
';


$result_texis{'unknown_printindex'} = '@printindex bidule';


$result_texts{'unknown_printindex'} = '';

$result_errors{'unknown_printindex'} = [
  {
    'error_line' => 'unknown index `bidule\' in @printindex
',
    'line_nr' => 1,
    'text' => 'unknown index `bidule\' in @printindex',
    'type' => 'error'
  }
];


1;
