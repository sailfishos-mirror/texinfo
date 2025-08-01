use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'one_node_counted_elements'} = '*document_root C2
 *before_node_section C2
  *paragraph C2
   {Garbage\\n}
   *index_entry_command@cindex C1 l2
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |index_entry:I{cp,1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {before nodes}
  {empty_line:\\n}
 *@node C13 l4 {one node}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{1}
 |normalized:{one-node}
  *arguments_line C4
   *line_arg C1
    {one node}
   *line_arg
   *line_arg
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
  *paragraph C2
   {Top node\\n}
   *index_entry_command@cindex C1 l6
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |element_node:{one-node}
   |index_entry:I{cp,2}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {Top node}
  {empty_line:\\n}
  *paragraph C3
   {anchor ref }
   *@anchor C1 l8
   |EXTRA
   |is_target:{1}
   |normalized:{ref}
    *brace_arg C1
     {ref}
   {.\\n}
  {empty_line:\\n}
  *@menu C3 l10
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *menu_entry C4 l11
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{some_manual_name_with_gcc}
     {(}
     {some_manual_name_with_gcc}
     {)}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {ref to gcc\\n}
   *@end C1 l12
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
  {empty_line:\\n}
  *paragraph C3
   {ref to ref }
   *@ref C1 l15
    *brace_arg C1
    |EXTRA
    |node_content:{ref}
    |normalized:{ref}
     {ref}
   {.\\n}
  {empty_line:\\n}
  *paragraph C1
   {Some text.\\n}
  {empty_line:\\n}
  *@printindex C1 l19
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
';


$result_texis{'one_node_counted_elements'} = 'Garbage
@cindex before nodes

@node one node,,,(dir)
Top node
@cindex Top node

anchor ref @anchor{ref}.

@menu
* (some_manual_name_with_gcc):: ref to gcc
@end menu


ref to ref @ref{ref}.

Some text.

@printindex cp
';


$result_texts{'one_node_counted_elements'} = 'Garbage

Top node

anchor ref .

* (some_manual_name_with_gcc):: ref to gcc


ref to ref ref.

Some text.

';

$result_errors{'one_node_counted_elements'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_nodes_list{'one_node_counted_elements'} = '1|one node
 menus:
  (some_manual_name_with_gcc)
 node_directions:
  up->(dir)

';

$result_sections_list{'one_node_counted_elements'} = '';

$result_sectioning_root{'one_node_counted_elements'} = '';

$result_headings_list{'one_node_counted_elements'} = '';

$result_indices_sort_strings{'one_node_counted_elements'} = 'cp:
 before nodes
 Top node
';


$result_converted{'info'}->{'one_node_counted_elements'} = 'This is , produced from .

Garbage


File: ,  Node: one node,  Up: (dir)

Top node

   anchor ref .

* Menu:

* (some_manual_name_with_gcc):: ref to gcc

   ref to ref *note ref::.

   Some text.

 [index ]
* Menu:

* before nodes:                          (outside of any node). (line 0)
* Top node:                              one node.              (line 3)


Tag Table:
Node: one node36
Ref: ref98

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'one_node_counted_elements'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


1;
