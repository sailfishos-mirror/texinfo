use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'split_chapter_index'} = '*document_root C10
 *before_node_section C2
  *preamble_before_setfilename C1
   *preamble_before_beginning C2
    {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
    {text_before_beginning:\\n}
  *preamble_before_content C2
   *@setfilename C1 split_chapter_index.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{split_chapter_index}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {split_chapter_index}
   {empty_line:\\n}
 *0 @node C1 split_chapter_index.texi:l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E3]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C8 split_chapter_index.texi:l6 {split indices}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {split indices}
  *2 index_entry_command@cindex C1 split_chapter_index.texi:l7
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E0]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entry a}
  {empty_line:\\n}
  *paragraph C1
   {Text in top.\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *3 @menu C3 split_chapter_index.texi:l12
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 split_chapter_index.texi:l13
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{first}
    |normalized:{first}
     {first}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 split_chapter_index.texi:l14
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
 *4 @node C1 split_chapter_index.texi:l16 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[up->E0]
 |menus:EC[E14]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
 *5 @chapter C14 split_chapter_index.texi:l17 {First chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_childs:EC[E16]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {First chapter}
  {empty_line:\\n}
  *paragraph C5
   {Text and then index entries\\n}
   *6 index_entry_command@cindex C1 split_chapter_index.texi:l20
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E4]
   |index_entry:I{cp,2}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {entry in node}
   *7 index_entry_command@cindex C1 split_chapter_index.texi:l21
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E4]
   |index_entry:I{cp,3}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {! entry in node}
   *8 index_entry_command@findex C1 split_chapter_index.texi:l22
   |INFO
   |command_name:{findex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E4]
   |index_entry:I{fn,1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {fun in node}
   *9 index_entry_command@cindex C1 split_chapter_index.texi:l23
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E4]
   |index_entry:I{cp,4}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {entry in node}
  {empty_line:\\n}
  *@printindex C1 split_chapter_index.texi:l25
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *10 index_entry_command@cindex C1 split_chapter_index.texi:l27
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E4]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entry after printindex}
  {empty_line:\\n}
  *11 index_entry_command@findex C1 split_chapter_index.texi:l29
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E4]
  |index_entry:I{fn,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a function}
  *12 index_entry_command@cindex C1 split_chapter_index.texi:l30
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E4]
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a concept in first}
  *13 index_entry_command@findex C1 split_chapter_index.texi:l31
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E4]
  |index_entry:I{fn,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {somewhere}
  {empty_line:\\n}
  *14 @menu C3 split_chapter_index.texi:l33
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 split_chapter_index.texi:l34
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section 1}
    |normalized:{section-1}
     {section 1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 split_chapter_index.texi:l35
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
 *15 @node C1 split_chapter_index.texi:l37 {section 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E16]
 |is_target:{1}
 |menu_directions:D[up->E4]
 |menus:EC[E17]
 |node_directions:D[up->E4]
 |normalized:{section-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section 1}
 *16 @section C8 split_chapter_index.texi:l38 {Section 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E15]
 |section_childs:EC[E21]
 |section_directions:D[up->E5]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section 1}
  {empty_line:\\n}
  *17 @menu C3 split_chapter_index.texi:l40
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 split_chapter_index.texi:l41
    {menu_entry_leading_text:*  }
    *menu_entry_node C1
    |EXTRA
    |node_content:{subsection 1}
    |normalized:{subsection-1}
     {subsection 1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 split_chapter_index.texi:l42
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
  *18 index_entry_command@cindex C1 split_chapter_index.texi:l44
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,7}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {something}
  {empty_line:\\n}
  *19 index_entry_command@cindex C1 split_chapter_index.texi:l46
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {another}
  {empty_line:\\n}
 *20 @node C1 split_chapter_index.texi:l48 {subsection 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E21]
 |is_target:{1}
 |menu_directions:D[up->E15]
 |node_directions:D[up->E15]
 |normalized:{subsection-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection 1}
 *21 @subsection C6 split_chapter_index.texi:l49 {Subsection 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E20]
 |section_directions:D[up->E16]
 |section_level:{3}
 |section_number:{1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection 1}
  {empty_line:\\n}
  *paragraph C1
   {In subsection 1\\n}
  {empty_line:\\n}
  *22 index_entry_command@cindex C1 split_chapter_index.texi:l53
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E20]
  |index_entry:I{cp,9}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {printindex subsection 2}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'split_chapter_index'} = '\\input texinfo @c -*-texinfo-*-

@setfilename split_chapter_index

@node Top
@top split indices
@cindex entry a

Text in top.


@menu
* first::
@end menu

@node first
@chapter First chapter

Text and then index entries
@cindex entry in node
@cindex ! entry in node
@findex fun in node
@cindex entry in node

@printindex cp

@cindex entry after printindex

@findex a function
@cindex a concept in first
@findex somewhere

@menu
* section 1::
@end menu

@node section 1
@section Section 1

@menu
*  subsection 1::
@end menu

@cindex something

@cindex another

@node subsection 1
@subsection Subsection 1

In subsection 1

@cindex printindex subsection 2

@bye
';


$result_texts{'split_chapter_index'} = '
split indices
*************

Text in top.


* first::

1 First chapter
***************

Text and then index entries




* section 1::

1.1 Section 1
=============

*  subsection 1::



1.1.1 Subsection 1
------------------

In subsection 1


';

$result_errors{'split_chapter_index'} = [];


$result_indices_sort_strings{'split_chapter_index'} = {
  'cp' => [
    '! entry in node',
    'a concept in first',
    'another',
    'entry a',
    'entry after printindex',
    'entry in node',
    'entry in node',
    'printindex subsection 2',
    'something'
  ],
  'fn' => [
    'a function',
    'fun in node',
    'somewhere'
  ]
};


1;
