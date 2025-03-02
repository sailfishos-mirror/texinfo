use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'menu_in_deffn'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *1 @deffn C3 l3
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l3
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{b}
   |element_node:[E0]
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C5
    |INFO
    |spaces_after_argument:
     |{ \\n}
     *def_category C1
      *def_line_arg C1
       {a}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {b}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {c}
   *def_item C1
    *2 @menu C3 l4
     *arguments_line C1
      *block_line_arg
      |INFO
      |spaces_after_argument:
       |{\\n}
     *menu_entry C4 l5
      {menu_entry_leading_text:* }
      *menu_entry_node C3
      |EXTRA
      |manual_content:{mynode}
       {(}
       {mynode}
       {)}
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
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
';


$result_texis{'menu_in_deffn'} = '@node first

@deffn a b c 
@menu
* (mynode)::
@end menu
@end deffn
';


$result_texts{'menu_in_deffn'} = '
a: b c
* (mynode)::
';

$result_errors{'menu_in_deffn'} = [
  {
    'error_line' => 'warning: @menu in invalid context
',
    'line_nr' => 4,
    'text' => '@menu in invalid context',
    'type' => 'warning'
  }
];


$result_floats{'menu_in_deffn'} = {};


$result_indices_sort_strings{'menu_in_deffn'} = {
  'fn' => [
    'b'
  ]
};


1;
