use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_footnote_use_node'} = '*document_root C8
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@c C1
    {rawline_arg: test footnotes with nodes only\\n}
   {empty_line:\\n}
 *0 @node C4 node_footnote.texi:l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E5]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @menu C6 node_footnote.texi:l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 node_footnote.texi:l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@\'a}
    |normalized:{_00e1}
     *2 @\' C1 node_footnote.texi:l8
      *following_arg C1
       {a}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 node_footnote.texi:l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@^a}
    |normalized:{_00e2}
     *3 @^ C1 node_footnote.texi:l9
      *following_arg C1
       {a}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 node_footnote.texi:l10
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
   *menu_entry C4 node_footnote.texi:l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@`a}
    |normalized:{_00e0}
     *4 @` C1 node_footnote.texi:l11
      *following_arg C1
       {a}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 node_footnote.texi:l12
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
 *5 @node C4 node_footnote.texi:l14 {@\'a}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E10|up->E0]
 |node_directions:D[next->E10|prev->E0|up->E0]
 |normalized:{_00e1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *6 @\' C1 node_footnote.texi:l14
     *following_arg C1
      {a}
  {empty_line:\\n}
  *paragraph C6
   {node }
   *7 @\' C1 node_footnote.texi:l16
    *following_arg C1
     {a}
   {,\\n}
   {Footnote 1}
   *8 @footnote C1 node_footnote.texi:l17
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C2
      {foot 1 }
      *9 @\' C1 node_footnote.texi:l17
       *following_arg C1
        {a}
   {.\\n}
  {empty_line:\\n}
 *10 @node C4 node_footnote.texi:l19 {@^a}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E15|prev->E5|up->E0]
 |node_directions:D[next->E15|prev->E5|up->E0]
 |normalized:{_00e2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *11 @^ C1 node_footnote.texi:l19
     *following_arg C1
      {a}
  {empty_line:\\n}
  *paragraph C6
   {node }
   *12 @^ C1 node_footnote.texi:l21
    *following_arg C1
     {a}
   {,\\n}
   {Footnote 2}
   *13 @footnote C1 node_footnote.texi:l22
   |EXTRA
   |global_command_number:{2}
    *brace_command_context C1
     *paragraph C2
      {foot 2 }
      *14 @^ C1 node_footnote.texi:l22
       *following_arg C1
        {a}
   {.\\n}
  {empty_line:\\n}
 *15 @node C1 node_footnote.texi:l24 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E16]
 |associated_title_command:[E16]
 |is_target:{1}
 |menu_directions:D[next->E19|prev->E10|up->E0]
 |menus:EC[E17]
 |node_directions:D[next->E19|prev->E10|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *16 @chapter C4 node_footnote.texi:l25 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E15]
 |associated_node:[E15]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E16]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  *17 @menu C3 node_footnote.texi:l27
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 node_footnote.texi:l28
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@`a}
    |normalized:{_00e0}
     *18 @` C1 node_footnote.texi:l28
      *following_arg C1
       {a}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 node_footnote.texi:l29
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
 *19 @node C4 node_footnote.texi:l31 {@`a}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E15|up->E15]
 |node_directions:D[prev->E15|up->E15]
 |normalized:{_00e0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *20 @` C1 node_footnote.texi:l31
     *following_arg C1
      {a}
  {empty_line:\\n}
  *paragraph C6
   {node }
   *21 @` C1 node_footnote.texi:l33
    *following_arg C1
     {a}
   {,\\n}
   {Footnote 3}
   *22 @footnote C1 node_footnote.texi:l34
   |EXTRA
   |global_command_number:{3}
    *brace_command_context C1
     *paragraph C2
      {foot 3 }
      *23 @` C1 node_footnote.texi:l34
       *following_arg C1
        {a}
   {.\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'node_footnote_use_node'} = '\\input texinfo @c -*-texinfo-*-

@c test footnotes with nodes only

@node Top

@menu
* @\'a::
* @^a::
* chapter::
* @`a::
@end menu

@node @\'a

node @\'a,
Footnote 1@footnote{foot 1 @\'a}.

@node @^a

node @^a,
Footnote 2@footnote{foot 2 @^a}.

@node chapter
@chapter chapter

@menu
* @`a::
@end menu

@node @`a

node @`a,
Footnote 3@footnote{foot 3 @`a}.

@bye
';


$result_texts{'node_footnote_use_node'} = '

* a\'::
* a^::
* chapter::
* a`::


node a\',
Footnote 1.


node a^,
Footnote 2.

1 chapter
*********

* a`::


node a`,
Footnote 3.

';

$result_errors{'node_footnote_use_node'} = [];


$result_converted_errors{'file_html'}->{'node_footnote_use_node'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'node_footnote.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
