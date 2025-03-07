use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'lowered_subsubsection'} = '*document_root C16
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l2
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
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
    |node_content:{Chapter}
    |normalized:{Chapter}
     {Chapter}
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
 *3 @node C1 l8 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |menus:EC[E5]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{Chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
 *4 @chapter C4 l9 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_childs:EC[E7]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *5 @menu C3 l11
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l12
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Section}
    |normalized:{Section}
     {Section}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l13
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
 *6 @node C1 l15 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |menu_directions:D[up->E3]
 |menus:EC[E8]
 |node_directions:D[up->E3]
 |normalized:{Section}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
 *7 @section C4 l16 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_childs:EC[E10]
 |section_directions:D[up->E4]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
  {empty_line:\\n}
  *8 @menu C3 l18
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l19
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Subsection}
    |normalized:{Subsection}
     {Subsection}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l20
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
 *9 @node C1 l22 {Subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |associated_title_command:[E10]
 |is_target:{1}
 |menu_directions:D[up->E6]
 |menus:EC[E11]
 |node_directions:D[up->E6]
 |normalized:{Subsection}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection}
 *10 @subsection C4 l23 {Subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E9]
 |associated_node:[E9]
 |section_childs:EC[E13|E15|E18]
 |section_directions:D[up->E7]
 |section_level:{3}
 |section_number:{1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection}
  {empty_line:\\n}
  *11 @menu C4 l25
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l26
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Subsubsection}
    |normalized:{Subsubsection}
     {Subsubsection}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l27
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Lowered subsec}
    |normalized:{Lowered-subsec}
     {Lowered subsec}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l28
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
 *12 @node C1 l30 {Subsubsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E13]
 |associated_title_command:[E13]
 |is_target:{1}
 |menu_directions:D[next->E14|up->E9]
 |node_directions:D[next->E14|up->E9]
 |normalized:{Subsubsection}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsubsection}
 *13 @subsubsection C3 l31 {Subsubsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E12]
 |associated_node:[E12]
 |section_directions:D[next->E15|up->E10]
 |section_level:{4}
 |section_number:{1.1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsubsection}
  {empty_line:\\n}
  *@lowersections C1
   {rawline_arg:\\n}
 *14 @node C1 l34 {Lowered subsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E15]
 |associated_title_command:[E15]
 |is_target:{1}
 |menu_directions:D[prev->E12|up->E9]
 |menus:EC[E16]
 |node_directions:D[next->E17|prev->E12|up->E9]
 |normalized:{Lowered-subsec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Lowered subsec}
 *15 @subsection C4 l35 {Lowered subsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E14]
 |associated_node:[E14]
 |level_modifier:{-1}
 |section_directions:D[next->E18|prev->E13|up->E10]
 |section_level:{4}
 |section_number:{1.1.1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Lowered subsec}
  {empty_line:\\n}
  *16 @menu C3 l37
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l38
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Lowered subsubsection}
    |normalized:{Lowered-subsubsection}
     {Lowered subsubsection}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l39
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
 *17 @node C1 l41 {Lowered subsubsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E18]
 |associated_title_command:[E18]
 |is_target:{1}
 |menu_directions:D[up->E14]
 |node_directions:D[prev->E14|up->E9]
 |normalized:{Lowered-subsubsection}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Lowered subsubsection}
 *18 @subsubsection C4 l42 {Lowered subsubsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E17]
 |associated_node:[E17]
 |level_modifier:{-1}
 |section_directions:D[prev->E15|up->E10]
 |section_level:{4}
 |section_number:{1.1.1.3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Lowered subsubsection}
  *@raisesections C1
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@contents C1 l45
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'lowered_subsubsection'} = '@node Top
@top

@menu
* Chapter::
@end menu

@node Chapter
@chapter Chapter

@menu
* Section::
@end menu

@node Section
@section Section

@menu
* Subsection::
@end menu

@node Subsection
@subsection Subsection

@menu
* Subsubsection::
* Lowered subsec::
@end menu

@node Subsubsection
@subsubsection Subsubsection

@lowersections
@node Lowered subsec
@subsection Lowered subsec

@menu
* Lowered subsubsection::
@end menu

@node Lowered subsubsection
@subsubsection Lowered subsubsection
@raisesections

@contents
@bye
';


$result_texts{'lowered_subsubsection'} = '
* Chapter::

1 Chapter
*********

* Section::

1.1 Section
===========

* Subsection::

1.1.1 Subsection
----------------

* Subsubsection::
* Lowered subsec::

1.1.1.1 Subsubsection
.....................

1.1.1.2 Lowered subsec
......................

* Lowered subsubsection::

1.1.1.3 Lowered subsubsection
.............................

';

$result_errors{'lowered_subsubsection'} = [
  {
    'error_line' => 'warning: node next for `Lowered subsec\' is `Lowered subsubsection\' in sectioning but not in menu
',
    'line_nr' => 34,
    'text' => 'node next for `Lowered subsec\' is `Lowered subsubsection\' in sectioning but not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node prev for `Lowered subsubsection\' is `Lowered subsec\' in sectioning but not in menu
',
    'line_nr' => 41,
    'text' => 'node prev for `Lowered subsubsection\' is `Lowered subsec\' in sectioning but not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node up pointer for `Lowered subsubsection\' is `Subsection\' but up is `Lowered subsec\' in menu
',
    'line_nr' => 41,
    'text' => 'node up pointer for `Lowered subsubsection\' is `Subsection\' but up is `Lowered subsec\' in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `Subsection\' lacks menu item for `Lowered subsubsection\' despite being its Up target
',
    'line_nr' => 22,
    'text' => 'node `Subsection\' lacks menu item for `Lowered subsubsection\' despite being its Up target',
    'type' => 'warning'
  }
];


1;
