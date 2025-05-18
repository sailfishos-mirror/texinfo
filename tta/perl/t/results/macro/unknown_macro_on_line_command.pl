use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_macro_on_line_command'} = '*document_root C1
 *before_node_section C1
  *@setfilename C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |text_arg:{file}
   *line_arg C1
    {file}
';


$result_texis{'unknown_macro_on_line_command'} = '@setfilename file';


$result_texts{'unknown_macro_on_line_command'} = '';

$result_errors{'unknown_macro_on_line_command'} = [
  {
    'error_line' => 'unknown command `begin\'
',
    'line_nr' => 1,
    'text' => 'unknown command `begin\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 1,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 1,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_nodes_list{'unknown_macro_on_line_command'} = '';

$result_sections_list{'unknown_macro_on_line_command'} = '';

$result_sectioning_root{'unknown_macro_on_line_command'} = '';

$result_headings_list{'unknown_macro_on_line_command'} = '';

1;
