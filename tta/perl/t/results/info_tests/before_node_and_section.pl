use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

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
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |index_entry:I{cp,1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument: \\n}
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
   *@anchor C1 l5
   |EXTRA
   |is_target:{1}
   |normalized:{anchor1}
    *brace_arg C1
     {anchor1}
   {.\\n}
  {empty_line:\\n}
  *@menu C3 l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
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
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {menu}
  {empty_line:\\n}
 *@node C1 l11 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Top}
 *@top C6 l12 {top @@top section}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
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
  *@menu C3 l16
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
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
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {menu}
  {empty_line:\\n}
 *@node C1 l20 {node1}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{2}
 |normalized:{node1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {node1}
 *@chapter C4 l21 {node1 chapter}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {node1 chapter}
  {empty_line:\\n}
  *@printindex C1 l23
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
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


$result_nodes_list{'before_node_and_section'} = '1|Top
 associated_section: top @@top section
 associated_title_command: top @@top section
 menus:
  node1
 node_directions:
  next->node1
2|node1
 associated_section: 1 node1 chapter
 associated_title_command: 1 node1 chapter
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'before_node_and_section'} = '1|top @@top section
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->node1 chapter
 section_children:
  1|node1 chapter
2|node1 chapter
 associated_anchor_command: node1
 associated_node: node1
 section_directions:
  up->top @@top section
 toplevel_directions:
  prev->top @@top section
  up->top @@top section
';

$result_sectioning_root{'before_node_and_section'} = 'level: -1
list:
 1|top @@top section
';

$result_headings_list{'before_node_and_section'} = '';

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
