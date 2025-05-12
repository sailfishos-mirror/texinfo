use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'style_not_closed_no_newline_root_commands'} = '*document_root C6
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C5 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |section_childs:EC[E4]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *2 @menu C3 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter}
    |normalized:{chapter}
     {chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l6
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
  {empty_line:\\n}
  *paragraph C1
   *@code C1 l8
    *brace_container C1
     {not closed\\n}
 *3 @node C1 l9 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *4 @chapter C3 l10 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |section_directions:D[up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  *paragraph C1
   *@code C1 l12
    *brace_container C1
     {still not closed\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'style_not_closed_no_newline_root_commands'} = '@node Top
@top top

@menu
* chapter::
@end menu

@code{not closed
}@node chapter
@chapter chapter

@code{still not closed
}@bye
';


$result_texts{'style_not_closed_no_newline_root_commands'} = 'top
***

* chapter::

not closed
1 chapter
*********

still not closed
';

$result_errors{'style_not_closed_no_newline_root_commands'} = [
  {
    'error_line' => 'warning: @node should not appear in @code
',
    'line_nr' => 9,
    'text' => '@node should not appear in @code',
    'type' => 'warning'
  },
  {
    'error_line' => '@node seen before @code closing brace
',
    'line_nr' => 8,
    'text' => '@node seen before @code closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @bye should not appear in @code
',
    'line_nr' => 13,
    'text' => '@bye should not appear in @code',
    'type' => 'warning'
  },
  {
    'error_line' => '@bye seen before @code closing brace
',
    'line_nr' => 12,
    'text' => '@bye seen before @code closing brace',
    'type' => 'error'
  }
];


$result_nodes_list{'style_not_closed_no_newline_root_commands'} = '1|Top
 associated_section: top
2|chapter
 associated_section: 1 chapter
';

$result_sections_list{'style_not_closed_no_newline_root_commands'} = '1|top
 associated_node: Top
2|chapter
 associated_node: chapter
';

1;
