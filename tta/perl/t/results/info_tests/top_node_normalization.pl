use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_node_normalization'} = '*document_root C2
 *before_node_section
 *0 @node C5 l1 {ToP}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E0]
 |menus:EC[E3]
 |node_directions:D[next->E0]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ToP}
  {empty_line:\\n}
  *paragraph C4
   *1 @xref C1 l3
    *brace_arg C1
    |EXTRA
    |node_content:{TOP}
    |normalized:{Top}
     {TOP}
   {. }
   *2 @xref C1 l3
    *brace_arg C1
    |EXTRA
    |node_content:{tOP}
    |normalized:{Top}
     {tOP}
   {.\\n}
  {empty_line:\\n}
  *3 @menu C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{tOP}
    |normalized:{Top}
     {tOP}
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


$result_texis{'top_node_normalization'} = '@node ToP

@xref{TOP}. @xref{tOP}.

@menu
* tOP::
@end menu
';


$result_texts{'top_node_normalization'} = '
TOP. tOP.

* tOP::
';

$result_errors{'top_node_normalization'} = [
  {
    'error_line' => 'warning: @xref to `TOP\', different from node name `ToP\'
',
    'line_nr' => 3,
    'text' => '@xref to `TOP\', different from node name `ToP\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @xref to `tOP\', different from node name `ToP\'
',
    'line_nr' => 3,
    'text' => '@xref to `tOP\', different from node name `ToP\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `tOP\' different from node name `ToP\'
',
    'line_nr' => 6,
    'text' => '@menu entry node name `tOP\' different from node name `ToP\'',
    'type' => 'warning'
  }
];


$result_floats{'top_node_normalization'} = {};



$result_converted{'info'}->{'top_node_normalization'} = 'This is , produced from .


File: ,  Node: Top,  Next: Top,  Up: (dir)

*Note ToP::.  *Note ToP::.

* Menu:

* tOP::


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
