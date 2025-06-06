use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'item_tab_outside_of_table_lists'} = '*document_root C1
 *before_node_section C5
  *@itemx C1 l1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {itemx outside.}
  {ignorable_spaces_after_command: }
  *paragraph C2
   {headitem outside.\\n}
   { someitem outside.\\n}
  {ignorable_spaces_after_command: }
  *paragraph C1
   {tab outside\\n}
';


$result_texis{'item_tab_outside_of_table_lists'} = '@itemx itemx outside.
 headitem outside.
 someitem outside.
 tab outside
';


$result_texts{'item_tab_outside_of_table_lists'} = 'itemx outside.
headitem outside.
 someitem outside.
tab outside
';

$result_errors{'item_tab_outside_of_table_lists'} = [
  {
    'error_line' => '@itemx outside of table or list
',
    'line_nr' => 1,
    'text' => '@itemx outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => '@headitem outside of table or list
',
    'line_nr' => 2,
    'text' => '@headitem outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `someitem\'
',
    'line_nr' => 3,
    'text' => 'unknown command `someitem\'',
    'type' => 'error'
  },
  {
    'error_line' => 'ignoring @tab outside of multitable
',
    'line_nr' => 4,
    'text' => 'ignoring @tab outside of multitable',
    'type' => 'error'
  }
];


$result_nodes_list{'item_tab_outside_of_table_lists'} = '';

$result_sections_list{'item_tab_outside_of_table_lists'} = '';

$result_sectioning_root{'item_tab_outside_of_table_lists'} = '';

$result_headings_list{'item_tab_outside_of_table_lists'} = '';

1;
