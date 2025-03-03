use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'documentencoding_zero'} = '*document_root C1
 *before_node_section C1
  *@documentencoding C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |text_arg:{0}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {0}
';


$result_texis{'documentencoding_zero'} = '@documentencoding 0
';


$result_texts{'documentencoding_zero'} = '';

$result_errors{'documentencoding_zero'} = [
  {
    'error_line' => 'warning: encoding `0\' is not a canonical texinfo encoding
',
    'line_nr' => 1,
    'text' => 'encoding `0\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unhandled encoding name `0\'
',
    'line_nr' => 1,
    'text' => 'unhandled encoding name `0\'',
    'type' => 'warning'
  }
];


1;
