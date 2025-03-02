use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_nested_parentheses'} = '*document_root C2
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
  *1 @menu C6 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{(some) file}
     {(}
     {(some) file}
     {)}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C4
    |EXTRA
    |manual_content:{other (file)}
    |node_content:{node name}
    |normalized:{node-name}
     {(}
     {other (file)}
     {)}
     {node name}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C5
    |EXTRA
    |manual_content:{@code{open(}}
    |node_content:{close)}
    |normalized:{close_0029}
     {(}
     *2 @code C1 l6
      *brace_container C1
       {open(}
     {)}
     { }
     {close)}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |node_content:{(@code{)))} error}
    |normalized:{_0028_0029_0029_0029-error}
     {(}
     *3 @code C1 l7
      *brace_container C1
       {)))}
     { error}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l8
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


$result_texis{'node_nested_parentheses'} = '@node first

@menu
* ((some) file)::
* (other (file))node name::
* (@code{open(}) close)::
* (@code{)))} error::
@end menu
';


$result_texts{'node_nested_parentheses'} = '
* ((some) file)::
* (other (file))node name::
* (open() close)::
* ())) error::
';

$result_errors{'node_nested_parentheses'} = [
  {
    'error_line' => '@menu reference to nonexistent node `(@code{)))} error\'
',
    'line_nr' => 7,
    'text' => '@menu reference to nonexistent node `(@code{)))} error\'',
    'type' => 'error'
  }
];


$result_floats{'node_nested_parentheses'} = {};


1;
