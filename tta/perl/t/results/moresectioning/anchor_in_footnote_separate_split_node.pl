use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_in_footnote_separate_split_node'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C1
   *@footnotestyle C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |misc_args:A{separate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {separate}
 *0 @node C1 l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E4]
 |node_directions:D[next->E5]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C6 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E6]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E6]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *paragraph C3
   {In top node}
   *2 @footnote C1 l5
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C3
      {in footnote\\n}
      *3 @anchor C1 l6
      |EXTRA
      |is_target:{1}
      |normalized:{Anchor-in-footnote}
       *brace_arg C1
        {Anchor in footnote}
      {.\\n}
   {\\n}
  {empty_line:\\n}
  *4 @menu C3 l9
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l10
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
   *@end C1 l11
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
 *5 @node C1 l13 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
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
 *6 @chapter C3 l14 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
  *paragraph C2
   *7 @ref C1 l16
    *brace_arg C1
    |EXTRA
    |node_content:{Anchor in footnote}
    |normalized:{Anchor-in-footnote}
     {Anchor in footnote}
   {.\\n}
';


$result_texis{'anchor_in_footnote_separate_split_node'} = '@footnotestyle separate
@node Top
@top Top

In top node@footnote{in footnote
@anchor{Anchor in footnote}.
}

@menu
* chapter::
@end menu

@node chapter
@chapter Chap

@ref{Anchor in footnote}.
';


$result_texts{'anchor_in_footnote_separate_split_node'} = 'Top
***

In top node

* chapter::

1 Chap
******

Anchor in footnote.
';

$result_errors{'anchor_in_footnote_separate_split_node'} = [];


$result_floats{'anchor_in_footnote_separate_split_node'} = {};


1;
