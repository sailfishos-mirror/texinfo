use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodes_before_top_split_chapter'} = '*document_root C9
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C3
   *@c C1
    {rawline_arg: test nodes before Top node\\n}
   {empty_line:\\n}
   {empty_line:\\n}
 *0 @node C6 nodes_before_top.texi:l6 {first before top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menus:EC[E1]
 |node_directions:D[next->E3|up->MISSING: (line_arg)[C3]]
 |node_number:{1}
 |normalized:{first-before-top}
  *arguments_line C4
   *line_arg C1
    {first before top}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg
   |INFO
   |spaces_before_argument:
    |{ }
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
  *index_entry_command@cindex C1 nodes_before_top.texi:l7
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
    {first before top}
  *@printindex C1 nodes_before_top.texi:l8
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
  *paragraph C1
   {in first node\\n}
  *1 @menu C3 nodes_before_top.texi:l10
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 nodes_before_top.texi:l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node in menu before top}
    |normalized:{node-in-menu-before-top}
     {node in menu before top}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 nodes_before_top.texi:l12
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
 *2 @node C9 nodes_before_top.texi:l14 {node in menu before top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[up->E0]
 |node_number:{2}
 |normalized:{node-in-menu-before-top}
  *arguments_line C4
   *line_arg C1
    {node in menu before top}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{first before top}
   |normalized:{first-before-top}
    {first before top}
  {empty_line:\\n}
  *index_entry_command@cindex C1 nodes_before_top.texi:l16
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node in menu before top}
  *@printindex C1 nodes_before_top.texi:l17
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  *paragraph C1
   {node in menu before top text\\n}
  {empty_line:\\n}
  *index_entry_command@cindex C1 nodes_before_top.texi:l20
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {printindex node in menu before top}
  {empty_line:\\n}
  {empty_line:\\n}
 *3 @node C13 nodes_before_top.texi:l23 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menus:EC[E4]
 |node_directions:D[prev->E0]
 |node_number:{3}
 |normalized:{Top}
  *arguments_line C3
   *line_arg C1
    {Top}
   *line_arg
   |INFO
   |spaces_before_argument:
    |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{first before top}
   |normalized:{first-before-top}
    {first before top}
  *index_entry_command@cindex C1 nodes_before_top.texi:l24
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
    {entry a}
  {empty_line:\\n}
  *@printindex C1 nodes_before_top.texi:l26
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
  *@printindex C1 nodes_before_top.texi:l28
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{4}
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
  *@printindex C1 nodes_before_top.texi:l32
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{5}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *4 @menu C3 nodes_before_top.texi:l34
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 nodes_before_top.texi:l35
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
   *@end C1 nodes_before_top.texi:l36
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
 *5 @node C7 nodes_before_top.texi:l38 {chap first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[up->E3]
 |menus:EC[E6]
 |node_directions:D[prev->E3|up->E3]
 |node_number:{4}
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
  *paragraph C4
   {Text and then index entries\\n}
   *index_entry_command@cindex C1 nodes_before_top.texi:l40
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E5]
   |index_entry:I{cp,5}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {! entry in node}
   *index_entry_command@findex C1 nodes_before_top.texi:l41
   |INFO
   |command_name:{findex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E5]
   |index_entry:I{fn,1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {fun in node}
   *index_entry_command@cindex C1 nodes_before_top.texi:l42
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E5]
   |index_entry:I{cp,6}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {entry in node}
  {empty_line:\\n}
  *@printindex C1 nodes_before_top.texi:l44
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
  *6 @menu C3 nodes_before_top.texi:l46
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 nodes_before_top.texi:l47
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
   *@end C1 nodes_before_top.texi:l48
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
 *7 @node C5 nodes_before_top.texi:l50 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[up->E5]
 |menus:EC[E8]
 |node_directions:D[up->E5]
 |node_number:{5}
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
  *8 @menu C4 nodes_before_top.texi:l51
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 nodes_before_top.texi:l52
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
   *menu_entry C4 nodes_before_top.texi:l53
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
   *@end C1 nodes_before_top.texi:l54
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
  *@printindex C1 nodes_before_top.texi:l56
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{7}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  {empty_line:\\n}
 *9 @node C6 nodes_before_top.texi:l58 {another}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E10|up->E7]
 |node_directions:D[prev->E10|up->E7]
 |node_number:{6}
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
  *index_entry_command@cindex C1 nodes_before_top.texi:l60
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E9]
  |index_entry:I{cp,7}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {something}
  *index_entry_command@findex C1 nodes_before_top.texi:l61
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E9]
  |index_entry:I{fn,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {somewhere}
  *index_entry_command@cindex C1 nodes_before_top.texi:l62
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E9]
  |index_entry:I{cp,8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {another}
  {empty_line:\\n}
 *10 @node C10 nodes_before_top.texi:l64 {a node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[next->E9|up->E7]
 |node_directions:D[next->E9|up->E7]
 |node_number:{7}
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
  *index_entry_command@cindex C1 nodes_before_top.texi:l65
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E10]
  |index_entry:I{cp,9}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entry after printindex}
  {empty_line:\\n}
  *@printindex C1 nodes_before_top.texi:l67
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{8}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *index_entry_command@findex C1 nodes_before_top.texi:l69
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E10]
  |index_entry:I{fn,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a function}
  *index_entry_command@cindex C1 nodes_before_top.texi:l70
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E10]
  |index_entry:I{cp,10}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a concept a node}
  {empty_line:\\n}
  *@printindex C1 nodes_before_top.texi:l72
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{9}
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


$result_texis{'nodes_before_top_split_chapter'} = '\\input texinfo @c -*-texinfo-*-

@c test nodes before Top node


@node first before top, Top, ,(dir)
@cindex first before top
@printindex cp
in first node
@menu
* node in menu before top::
@end menu

@node node in menu before top,,,first before top

@cindex node in menu before top
@printindex cp
node in menu before top text

@cindex printindex node in menu before top


@node Top, ,first before top
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


$result_texts{'nodes_before_top_split_chapter'} = '

in first node
* node in menu before top::


node in menu before top text






And one one more index


* chap first::

Text and then index entries


* second::

* a node::
* another::








';

$result_errors{'nodes_before_top_split_chapter'} = [
  {
    'error_line' => 'warning: node `first before top\' not in menu
',
    'file_name' => 'nodes_before_top.texi',
    'line_nr' => 6,
    'text' => 'node `first before top\' not in menu',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'nodes_before_top_split_chapter'} = 'cp:
 ! entry in node
 a concept a node
 another
 entry a
 entry after printindex
 entry in node
 first before top
 node in menu before top
 printindex node in menu before top
 something
fn:
 a function
 fun in node
 somewhere
';

$result_converted_errors{'file_html'}->{'nodes_before_top_split_chapter'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'nodes_before_top.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
