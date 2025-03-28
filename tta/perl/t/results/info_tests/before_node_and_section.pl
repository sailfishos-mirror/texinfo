use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'before_node_and_section'} = '*document_root C5
 *before_node_section C4
  *paragraph C11
   {Garbage\\n}
   {ref to Top }
   *@ref C1 l2
    *brace_arg C1
    |EXTRA
    |node_content:{Top}
    |normalized:{Top}
     {Top}
   {.\\n}
   *index_entry_command@cindex C1 l3
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |index_entry:I{cp,1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{ \\n}
     {index entry before anything}
   {Hey}
   *@footnote C1 l4
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {a footnote}
   {.\\n}
   {An anchor }
   *0 @anchor C1 l5
   |EXTRA
   |is_target:{1}
   |normalized:{anchor1}
    *brace_arg C1
     {anchor1}
   {.\\n}
  {empty_line:\\n}
  *1 @menu C3 l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node1}
    |normalized:{node1}
     {node1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l9
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
 *2 @node C1 l11 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
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
 *3 @top C6 l12 {top @@top section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_childs:EC[E6]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{-1}
 |toplevel_directions:D[next->E6]
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top }
    *@@
    {top section}
  *paragraph C1
   {Node top\\n}
  {empty_line:\\n}
  *paragraph C7
   {ref to anchor1}
   *@footnote C1 l15
   |EXTRA
   |global_command_number:{2}
    *brace_command_context C1
     *paragraph C1
      {another footnote}
   {, which is before }
   *@@
   {node Top: }
   *@ref C1 l15
    *brace_arg C1
    |EXTRA
    |node_content:{anchor1}
    |normalized:{anchor1}
     {anchor1}
   {.\\n}
  *4 @menu C3 l16
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l17
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node1}
    |normalized:{node1}
     {node1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l18
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
 *5 @node C1 l20 {node1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[up->E2]
 |node_directions:D[prev->E2|up->E2]
 |normalized:{node1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node1}
 *6 @chapter C4 l21 {node1 chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |associated_node:[E5]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E3|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node1 chapter}
  {empty_line:\\n}
  *@printindex C1 l23
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
';


$result_texis{'before_node_and_section'} = 'Garbage
ref to Top @ref{Top}.
@cindex index entry before anything 
Hey@footnote{a footnote}.
An anchor @anchor{anchor1}.

@menu
* node1::
@end menu

@node Top
@top top @@top section
Node top

ref to anchor1@footnote{another footnote}, which is before @@node Top: @ref{anchor1}.
@menu
* node1::
@end menu

@node node1
@chapter node1 chapter

@printindex cp

';


$result_texts{'before_node_and_section'} = 'Garbage
ref to Top Top.
Hey.
An anchor .

* node1::

top @top section
****************
Node top

ref to anchor1, which is before @node Top: anchor1.
* node1::

1 node1 chapter
***************


';

$result_errors{'before_node_and_section'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 3,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'before_node_and_section'} = 'cp:
 index entry before anything
';


$result_converted{'info'}->{'before_node_and_section'} = 'This is , produced from .

Garbage ref to Top *note Top::.  Hey(1).  An anchor .

* Menu:

* node1::


File: ,  Node: Top,  Next: node1,  Up: (dir)

top @top section
****************

Node top

   ref to anchor1(2), which is before @node Top: *note anchor1::.
* Menu:

* node1::

   ---------- Footnotes ----------

   (1) a footnote

   (2) another footnote


File: ,  Node: node1,  Prev: Top,  Up: Top

1 node1 chapter
***************

 [index ]
* Menu:

* index entry before anything:           (outside of any node). (line 0)


Tag Table:
Ref: anchor178
Node: Top102
Ref: Top-Footnote-1317
Ref: Top-Footnote-2336
Node: node1361

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'before_node_and_section'} = [
  {
    'error_line' => 'warning: @footnote outside of any node
',
    'line_nr' => 4,
    'text' => '@footnote outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor outside of any node
',
    'line_nr' => 5,
    'text' => '@anchor outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 3,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


1;
