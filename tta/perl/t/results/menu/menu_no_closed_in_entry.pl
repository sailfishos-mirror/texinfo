use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'menu_no_closed_in_entry'} = '*document_root C1
 *before_node_section C1
  *0 @menu C2 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C3
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {a1}
    {menu_entry_separator::}
';


$result_texis{'menu_no_closed_in_entry'} = '@menu
* a1:';


$result_texts{'menu_no_closed_in_entry'} = '* a1:
';

$result_errors{'menu_no_closed_in_entry'} = [
  {
    'error_line' => 'no matching `@end menu\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end menu\'',
    'type' => 'error'
  }
];


$result_nodes_list{'menu_no_closed_in_entry'} = '';

$result_sections_list{'menu_no_closed_in_entry'} = '';

$result_sectioning_root{'menu_no_closed_in_entry'} = '';

$result_headings_list{'menu_no_closed_in_entry'} = '';

1;
