use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'direntry_dircategory'} = '*document_root C6
 *before_node_section C2
  *preamble_before_setfilename C1
   *preamble_before_beginning C2
    {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
    {text_before_beginning:\\n}
  *preamble_before_content C9
   *@setfilename C1 direntry_dircategory.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{direntry_dircategory.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {direntry_dircategory.info}
   {empty_line:\\n}
   *@dircategory C1 direntry_dircategory.texi:l5
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     {``category---}
     *@var C1 direntry_dircategory.texi:l5
      *brace_container C1
       {th  ere}
     {?\'\'}
   *@direntry C3 direntry_dircategory.texi:l6
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_entry C6 direntry_dircategory.texi:l7
     {menu_entry_leading_text:* }
     *menu_entry_name C1
      {foo}
     {menu_entry_separator:: }
     *menu_entry_node C3
     |EXTRA
     |manual_content:{foo}
      {(}
      {foo}
      {)}
     {menu_entry_separator:.   }
     *menu_entry_description C1
      *preformatted C3
       {``hello---}
       *@var C1 direntry_dircategory.texi:l7
        *brace_container C1
         {there}
       {?\'\'\\n}
    *@end C1 direntry_dircategory.texi:l8
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{direntry}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {direntry}
   {empty_line:\\n}
   *@dircategory C1 direntry_dircategory.texi:l10
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {cat2}
   *@direntry C4 direntry_dircategory.texi:l11
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_entry C4 direntry_dircategory.texi:l12
     {menu_entry_leading_text:* }
     *menu_entry_node C2
     |EXTRA
     |node_content:{aaa }
     |normalized:{aaa}
      {aaa}
      {space_at_end_menu_node: }
     {menu_entry_separator:::               }
     *menu_entry_description C1
      *preformatted C2
       {aaaa\\n}
       {                   bbbbb\\n}
    *menu_comment C1
     *preformatted C2
      {after_menu_description_line:\\n}
      {menutitle\\n}
    *@end C1 direntry_dircategory.texi:l16
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{direntry}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {direntry}
   {empty_line:\\n}
   {empty_line:\\n}
 *0 @node C1 direntry_dircategory.texi:l19 {Top}
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
 *1 @top C8 direntry_dircategory.texi:l20 {Test dircategory and direntry}
 |INFO
 |spaces_before_argument:
  |{ }
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
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Test dircategory and direntry}
  {empty_line:\\n}
  *paragraph C1
   {Text\\n}
  *@dircategory C1 direntry_dircategory.texi:l23
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {in text}
  *@direntry C3 direntry_dircategory.texi:l24
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C6 direntry_dircategory.texi:l25
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {in text}
    {menu_entry_separator:: }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{in_text}
     {(}
     {in_text}
     {)}
    {menu_entry_separator:. }
    *menu_entry_description C1
     *preformatted C1
      {in text\\n}
   *@end C1 direntry_dircategory.texi:l26
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{direntry}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {direntry}
  {empty_line:\\n}
  *2 @menu C3 direntry_dircategory.texi:l28
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 direntry_dircategory.texi:l29
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
   *@end C1 direntry_dircategory.texi:l30
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
 *3 @node C1 direntry_dircategory.texi:l32 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *4 @chapter C4 direntry_dircategory.texi:l33 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  *paragraph C1
   {In chapter\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'direntry_dircategory'} = '\\input texinfo @c -*-texinfo-*-

@setfilename direntry_dircategory.info

@dircategory ``category---@var{th  ere}?\'\'
@direntry
* foo: (foo).   ``hello---@var{there}?\'\'
@end direntry

@dircategory cat2
@direntry
* aaa ::               aaaa
                   bbbbb

menutitle
@end direntry


@node Top
@top Test dircategory and direntry

Text
@dircategory in text
@direntry
* in text: (in_text). in text
@end direntry

@menu
* chapter::
@end menu

@node chapter
@chapter chapter

In chapter

@bye
';


$result_texts{'direntry_dircategory'} = '
* foo: (foo).   "hello--there?"

* aaa ::               aaaa
                   bbbbb

menutitle


Test dircategory and direntry
*****************************

Text
* in text: (in_text). in text

* chapter::

1 chapter
*********

In chapter

';

$result_errors{'direntry_dircategory'} = [
  {
    'error_line' => 'warning: @dircategory after first node
',
    'file_name' => 'direntry_dircategory.texi',
    'line_nr' => 23,
    'text' => '@dircategory after first node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @direntry after first node
',
    'file_name' => 'direntry_dircategory.texi',
    'line_nr' => 24,
    'text' => '@direntry after first node',
    'type' => 'warning'
  }
];


1;
