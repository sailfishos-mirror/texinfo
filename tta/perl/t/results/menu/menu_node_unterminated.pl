use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'menu_node_unterminated'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *1 @menu C3 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {Example}
    {menu_entry_separator:: }
    *menu_entry_node C2
    |EXTRA
    |node_content:{Examples of Login Verification Functions\\n}
    |normalized:{Examples-of-Login-Verification-Functions}
     {Examples of Login Verification Functions}
     {space_at_end_menu_node:\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
';


$result_texis{'menu_node_unterminated'} = '@node first

@menu
* Example: Examples of Login Verification Functions
@end menu
';


$result_texts{'menu_node_unterminated'} = '
* Example: Examples of Login Verification Functions
';

$result_errors{'menu_node_unterminated'} = [
  {
    'error_line' => '@menu reference to nonexistent node `Examples of Login Verification Functions
\'
',
    'line_nr' => 4,
    'text' => '@menu reference to nonexistent node `Examples of Login Verification Functions
\'',
    'type' => 'error'
  }
];


1;
