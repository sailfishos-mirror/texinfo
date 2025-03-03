use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_nodes_no_split_no_use_nodes'} = '*document_root C7
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C13 index_nodes.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  *1 index_entry_command@cindex C1 index_nodes.texi:l4
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
  *@printindex C1 index_nodes.texi:l6
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
  *@printindex C1 index_nodes.texi:l8
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  {empty_line:\\n}
  *paragraph C1
   {And one one more index\\n}
  {empty_line:\\n}
  *@printindex C1 index_nodes.texi:l12
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *2 @menu C3 index_nodes.texi:l14
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 index_nodes.texi:l15
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap first}
    |normalized:{chap-first}
     {chap first}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 index_nodes.texi:l16
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
 *3 @node C7 index_nodes.texi:l18 {chap first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[up->E0]
 |menus:EC[E8]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap-first}
  *arguments_line C4
   *line_arg C1
    {chap first}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  *paragraph C5
   {Text and then index entries\\n}
   *4 index_entry_command@cindex C1 index_nodes.texi:l20
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E3]
   |index_entry:I{cp,2}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {entry in node}
   *5 index_entry_command@cindex C1 index_nodes.texi:l21
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E3]
   |index_entry:I{cp,3}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {! entry in node}
   *6 index_entry_command@findex C1 index_nodes.texi:l22
   |INFO
   |command_name:{findex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E3]
   |index_entry:I{fn,1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {fun in node}
   *7 index_entry_command@cindex C1 index_nodes.texi:l23
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E3]
   |index_entry:I{cp,4}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {entry in node}
  {empty_line:\\n}
  *@printindex C1 index_nodes.texi:l25
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{4}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *8 @menu C3 index_nodes.texi:l27
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 index_nodes.texi:l28
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{second}
    |normalized:{second}
     {second}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 index_nodes.texi:l29
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
 *9 @node C5 index_nodes.texi:l31 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[up->E3]
 |menus:EC[E10]
 |node_directions:D[up->E3]
 |normalized:{second}
  *arguments_line C4
   *line_arg C1
    {second}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{chap first}
   |normalized:{chap-first}
    {chap first}
  *10 @menu C4 index_nodes.texi:l32
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 index_nodes.texi:l33
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{a node}
    |normalized:{a-node}
     {a node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 index_nodes.texi:l34
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{another}
    |normalized:{another}
     {another}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 index_nodes.texi:l35
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
  *@printindex C1 index_nodes.texi:l37
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{5}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  {empty_line:\\n}
 *11 @node C6 index_nodes.texi:l39 {another}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E15|up->E9]
 |node_directions:D[prev->E15|up->E9]
 |normalized:{another}
  *arguments_line C4
   *line_arg C1
    {another}
   *line_arg
   |INFO
   |spaces_before_argument:
    |{ }
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{a node}
   |normalized:{a-node}
    {a node}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{second}
   |normalized:{second}
    {second}
  {empty_line:\\n}
  *12 index_entry_command@cindex C1 index_nodes.texi:l41
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {something}
  *13 index_entry_command@findex C1 index_nodes.texi:l42
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{fn,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {somewhere}
  *14 index_entry_command@cindex C1 index_nodes.texi:l43
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {another}
  {empty_line:\\n}
 *15 @node C10 index_nodes.texi:l45 {a node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[next->E11|up->E9]
 |node_directions:D[next->E11|up->E9]
 |normalized:{a-node}
  *arguments_line C4
   *line_arg C1
    {a node}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{another}
   |normalized:{another}
    {another}
   *line_arg
   |INFO
   |spaces_before_argument:
    |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{second}
   |normalized:{second}
    {second}
  *16 index_entry_command@cindex C1 index_nodes.texi:l46
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
    {entry after printindex}
  {empty_line:\\n}
  *@printindex C1 index_nodes.texi:l48
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{6}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *17 index_entry_command@findex C1 index_nodes.texi:l50
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{fn,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a function}
  *18 index_entry_command@cindex C1 index_nodes.texi:l51
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
    {a concept a node}
  {empty_line:\\n}
  *@printindex C1 index_nodes.texi:l53
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{7}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'index_nodes_no_split_no_use_nodes'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@cindex entry a

@printindex cp

@printindex fn

And one one more index

@printindex cp

@menu
* chap first::
@end menu

@node chap first,,Top, Top
Text and then index entries
@cindex entry in node
@cindex ! entry in node
@findex fun in node
@cindex entry in node

@printindex cp

@menu
* second::
@end menu

@node second,,,chap first
@menu
* a node::
* another::
@end menu

@printindex fn

@node another, , a node, second

@cindex something
@findex somewhere
@cindex another

@node a node, another, ,second
@cindex entry after printindex

@printindex cp

@findex a function
@cindex a concept a node

@printindex cp

@bye
';


$result_texts{'index_nodes_no_split_no_use_nodes'} = '


And one one more index


* chap first::

Text and then index entries


* second::

* a node::
* another::








';

$result_errors{'index_nodes_no_split_no_use_nodes'} = [];


$result_indices_sort_strings{'index_nodes_no_split_no_use_nodes'} = {
  'cp' => [
    '! entry in node',
    'a concept a node',
    'another',
    'entry a',
    'entry after printindex',
    'entry in node',
    'entry in node',
    'something'
  ],
  'fn' => [
    'a function',
    'fun in node',
    'somewhere'
  ]
};


$result_converted_errors{'file_html'}->{'index_nodes_no_split_no_use_nodes'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'index_nodes.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 21,
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 51,
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 43,
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 4,
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 46,
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 20,
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 23,
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 41,
    'text' => 'entry for index `cp\' for @printindex cp outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' for @printindex fn outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 50,
    'text' => 'entry for index `fn\' for @printindex fn outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' for @printindex fn outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 22,
    'text' => 'entry for index `fn\' for @printindex fn outside of any section',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' for @printindex fn outside of any section
',
    'file_name' => 'index_nodes.texi',
    'line_nr' => 42,
    'text' => 'entry for index `fn\' for @printindex fn outside of any section',
    'type' => 'warning'
  }
];


1;
