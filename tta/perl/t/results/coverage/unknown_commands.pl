use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_commands'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *paragraph C1
   {#\\n}
';


$result_texis{'unknown_commands'} = '
#
';


$result_texts{'unknown_commands'} = '
#
';

$result_errors{'unknown_commands'} = [
  {
    'error_line' => 'unknown command `unknwon\'
',
    'line_nr' => 1,
    'text' => 'unknown command `unknwon\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unexpected @
',
    'line_nr' => 2,
    'text' => 'unexpected @',
    'type' => 'error'
  }
];


$result_nodes_list{'unknown_commands'} = '';

$result_sections_list{'unknown_commands'} = '';

$result_sectioning_root{'unknown_commands'} = '';

$result_headings_list{'unknown_commands'} = '';

1;
