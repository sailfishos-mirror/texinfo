use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_node_in_menu_novalidate'} = '*document_root C2
 *before_node_section C2
  *@novalidate C1 l1
   {rawline_arg:\\n}
  {empty_line:\\n}
 *0 @node C3 l3
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
  *1 @menu C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unknown}
    |normalized:{unknown}
     {unknown}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l7
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


$result_texis{'unknown_node_in_menu_novalidate'} = '@novalidate

@node first

@menu
* unknown::
@end menu
';


$result_texts{'unknown_node_in_menu_novalidate'} = '

* unknown::
';

$result_nodes{'unknown_node_in_menu_novalidate'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_menus{'unknown_node_in_menu_novalidate'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'first'
    }
  }
];

$result_errors{'unknown_node_in_menu_novalidate'} = [];


$result_floats{'unknown_node_in_menu_novalidate'} = {};


1;
