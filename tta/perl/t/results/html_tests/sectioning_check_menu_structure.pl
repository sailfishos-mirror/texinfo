use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'sectioning_check_menu_structure'} = '*document_root C29
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 sectioning.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3|prev->MISSING: (line_arg)[C3]]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C3
   *line_arg C1
    {Top}
   *line_arg C1
   |EXTRA
   |node_content:{First node}
   |normalized:{First-node}
    {First node}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *1 @top C3 sectioning.texi:l4
 |EXTRA
 |associated_anchor_command:[E0]
 |section_childs:EC[E4|E26|E28]
 |section_level:{0}
 |section_number:{1}
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
  *2 @menu C11 sectioning.texi:l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 sectioning.texi:l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{First node}
    |normalized:{First-node}
     {First node}
    {menu_entry_separator:::    }
    *menu_entry_description C1
     *preformatted C9
      {node 1\\n}
      {  explaination no heading ?\\n}
      {* and here ?\\n}
      {With command }
      *@^ C1 sectioning.texi:l9
       *brace_container C1
        *@dotless C1 sectioning.texi:l9
         *brace_container C1
          {i}
      { and\\n}
      {a }
      *@cite C1 sectioning.texi:l10
       *brace_container C1
        {me}
      {.\\n}
   *menu_comment C1
    *preformatted C2
     {after_menu_description_line:\\n}
     {heading\\n}
   *menu_entry C4 sectioning.texi:l13
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{between node}
    |normalized:{between-node}
     {between node}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C2
      {\\n}
      {node in between\\n}
   *menu_comment C1
    *preformatted C3
     {after_menu_description_line:\\n}
     {heading \\n}
     {or not ?\\n}
   *menu_entry C4 sectioning.texi:l18
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Second node}
    |normalized:{Second-node}
     {Second node}
    {menu_entry_separator:::   }
    *menu_entry_description C1
     *preformatted C1
      {node 2\\n}
   *menu_comment C1
    *preformatted C3
     {after_menu_description_line:\\n}
     {heading with spaces around\\n}
     {empty_line:\\n}
   *menu_entry C4 sectioning.texi:l22
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Third node unnumbered}
    |normalized:{Third-node-unnumbered}
     {Third node unnumbered}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {unnumbered in Top menu\\n}
   *menu_entry C4 sectioning.texi:l23
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Last node no description}
    |normalized:{Last-node-no-description}
     {Last node no description}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C3
     {after_menu_description_line:\\n}
     {description here\\n}
     {empty_line:\\n}
   *@end C1 sectioning.texi:l27
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
 *3 @node C1 sectioning.texi:l29 {First node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E24|up->E0]
 |menus:EC[E5]
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{First-node}
  *arguments_line C4
   *line_arg C1
    {First node}
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
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *4 @chapter C5 sectioning.texi:l30 {first node chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |section_childs:EC[E7|E18|E23]
 |section_directions:D[next->E26|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E26|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first node chapter}
  {empty_line:\\n}
  *paragraph C1
   {first node chapter text\\n}
  *5 @menu C6 sectioning.texi:l33
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 sectioning.texi:l34
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered}
    |normalized:{unnumbered}
     {unnumbered}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {un\\n}
   *menu_entry C4 sectioning.texi:l35
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered2}
    |normalized:{unnumbered2}
     {unnumbered2}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {un2\\n}
   *menu_entry C4 sectioning.texi:l36
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered}
    |normalized:{numbered}
     {numbered}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {nu\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
   *@end C1 sectioning.texi:l38
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
 *6 @node C1 sectioning.texi:l40 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E7]
 |is_target:{1}
 |menu_directions:D[next->E17|up->E3]
 |menus:EC[E8]
 |node_directions:D[next->E17|up->E3]
 |node_number:{3}
 |normalized:{unnumbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
 *7 @unnumberedsec C4 sectioning.texi:l41 {unnumbered section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |section_childs:EC[E10|E12|E14|E16]
 |section_directions:D[next->E18|up->E4]
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered section}
  {empty_line:\\n}
  *8 @menu C6 sectioning.texi:l43
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 sectioning.texi:l44
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered sub}
    |normalized:{unnumbered-sub}
     {unnumbered sub}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {un\\n}
   *menu_entry C4 sectioning.texi:l45
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub}
    |normalized:{numbered-sub}
     {numbered sub}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {nu\\n}
   *menu_entry C4 sectioning.texi:l46
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered sub2}
    |normalized:{unnumbered-sub2}
     {unnumbered sub2}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {un2\\n}
   *menu_entry C4 sectioning.texi:l47
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub2}
    |normalized:{numbered-sub2}
     {numbered sub2}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {nu2\\n}
   *@end C1 sectioning.texi:l48
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
 *9 @node C1 sectioning.texi:l50 {unnumbered sub}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E10]
 |is_target:{1}
 |menu_directions:D[next->E11|up->E6]
 |node_directions:D[next->E11|up->E6]
 |node_number:{4}
 |normalized:{unnumbered-sub}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub}
 *10 @unnumberedsubsec C2 sectioning.texi:l51 {unnumbered subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E9]
 |section_directions:D[next->E12|up->E7]
 |section_level:{3}
 |section_number:{4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection}
  {empty_line:\\n}
 *11 @node C1 sectioning.texi:l53 {numbered sub}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E12]
 |is_target:{1}
 |menu_directions:D[next->E13|prev->E9|up->E6]
 |node_directions:D[next->E13|prev->E9|up->E6]
 |node_number:{5}
 |normalized:{numbered-sub}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub}
 *12 @subsection C2 sectioning.texi:l54 {numbered subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E11]
 |section_directions:D[next->E14|prev->E10|up->E7]
 |section_level:{3}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection}
  {empty_line:\\n}
 *13 @node C1 sectioning.texi:l56 {unnumbered sub2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E14]
 |is_target:{1}
 |menu_directions:D[next->E15|prev->E11|up->E6]
 |node_directions:D[next->E15|prev->E11|up->E6]
 |node_number:{6}
 |normalized:{unnumbered-sub2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub2}
 *14 @unnumberedsubsec C2 sectioning.texi:l57 {unnumbered subsection2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E13]
 |section_directions:D[next->E16|prev->E12|up->E7]
 |section_level:{3}
 |section_number:{6}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection2}
  {empty_line:\\n}
 *15 @node C1 sectioning.texi:l59 {numbered sub2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E16]
 |is_target:{1}
 |menu_directions:D[prev->E13|up->E6]
 |node_directions:D[prev->E13|up->E6]
 |node_number:{7}
 |normalized:{numbered-sub2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub2}
 *16 @subsection C2 sectioning.texi:l60 {numbered subsection2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E15]
 |section_directions:D[prev->E14|up->E7]
 |section_level:{3}
 |section_number:{7}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection2}
  {empty_line:\\n}
 *17 @node C1 sectioning.texi:l62 {unnumbered2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E18]
 |is_target:{1}
 |menu_directions:D[next->E22|prev->E6|up->E3]
 |menus:EC[E19]
 |node_directions:D[next->E22|prev->E6|up->E3]
 |node_number:{8}
 |normalized:{unnumbered2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered2}
 *18 @unnumberedsec C4 sectioning.texi:l63 {unnumbered section2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E17]
 |section_childs:EC[E21]
 |section_directions:D[next->E23|prev->E7|up->E4]
 |section_level:{2}
 |section_number:{8}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered section2}
  {empty_line:\\n}
  *19 @menu C3 sectioning.texi:l65
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 sectioning.texi:l66
    {menu_entry_leading_text:*  }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub3}
    |normalized:{numbered-sub3}
     {numbered sub3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 sectioning.texi:l67
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
 *20 @node C1 sectioning.texi:l69 {numbered sub3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E21]
 |is_target:{1}
 |menu_directions:D[up->E17]
 |node_directions:D[up->E17]
 |node_number:{9}
 |normalized:{numbered-sub3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub3}
 *21 @subsection C3 sectioning.texi:l70 {numbered subsection3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E20]
 |section_directions:D[up->E18]
 |section_level:{3}
 |section_number:{9}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection3}
  {empty_line:\\n}
  {empty_line:\\n}
 *22 @node C1 sectioning.texi:l73 {numbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E23]
 |is_target:{1}
 |menu_directions:D[prev->E17|up->E3]
 |node_directions:D[prev->E17|up->E3]
 |node_number:{10}
 |normalized:{numbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered}
 *23 @section C2 sectioning.texi:l74 {numbered section}
 |INFO
 |spaces_before_argument:
  |{  }
 |EXTRA
 |associated_anchor_command:[E22]
 |section_directions:D[prev->E18|up->E4]
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{10}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered section}
  {empty_line:\\n}
 *24 @node C4 sectioning.texi:l76 {between node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E25|prev->E3|up->E0]
 |node_directions:D[up->E0]
 |node_number:{11}
 |normalized:{between-node}
  *arguments_line C4
   *line_arg C1
    {between node}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *paragraph C1
   {between node, node without sectioning node\\n}
  {empty_line:\\n}
 *25 @node C4 sectioning.texi:l80 {Second node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E26]
 |is_target:{1}
 |menu_directions:D[next->E27|prev->E24|up->E0]
 |node_directions:D[next->E27|up->E0]
 |node_number:{12}
 |normalized:{Second-node}
  *arguments_line C4
   *line_arg C1
    {Second node}
   *line_arg C1
   |EXTRA
   |node_content:{Third node unnumbered}
   |normalized:{Third-node-unnumbered}
    {Third node unnumbered}
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *paragraph C1
   {Second node text\\n}
  {empty_line:\\n}
 *26 @chapter C4 sectioning.texi:l84 {second node chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E25]
 |section_directions:D[next->E28|prev->E4|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{11}
 |toplevel_directions:D[next->E28|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second node chapter}
  {empty_line:\\n}
  *paragraph C1
   {second node chapter text.\\n}
  {empty_line:\\n}
 *27 @node C1 sectioning.texi:l88 {Third node unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E28]
 |is_target:{1}
 |menu_directions:D[next->E29|prev->E25|up->E0]
 |node_directions:D[next->E29|prev->E25|up->E0]
 |node_number:{13}
 |normalized:{Third-node-unnumbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Third node unnumbered}
 *28 @unnumbered C5 sectioning.texi:l89 {unnumbered chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E27]
 |section_directions:D[prev->E26|up->E1]
 |section_level:{1}
 |section_number:{12}
 |toplevel_directions:D[prev->E26|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered chapter}
  {empty_line:\\n}
  *paragraph C1
   {unnumbered chapter text.\\n}
  {empty_line:\\n}
  {empty_line:\\n}
 *29 @node C3 sectioning.texi:l94 {Last node no description}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E27|up->E0]
 |node_directions:D[prev->E27|up->E0]
 |node_number:{14}
 |normalized:{Last-node-no-description}
  *arguments_line C4
   *line_arg C1
    {Last node no description}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{Third node unnumbered}
   |normalized:{Third-node-unnumbered}
    {Third node unnumbered}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *@contents C1 sectioning.texi:l96
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
 *@bye C1
  {rawline_arg:\\n}
 *postamble_after_end C1
  {text_after_end:\\n}
';


$result_texis{'sectioning_check_menu_structure'} = '\\input texinfo @c -*-texinfo-*-

@node Top,First node,(dir)
@top
@menu
* First node::    node 1
  explaination no heading ?
* and here ?
With command @^{@dotless{i}} and
a @cite{me}.

heading
* between node:: 
node in between

heading 
or not ?
* Second node::   node 2

heading with spaces around

* Third node unnumbered:: unnumbered in Top menu
* Last node no description::

description here

@end menu

@node First node,,Top,Top
@chapter first node chapter

first node chapter text
@menu
* unnumbered:: un
* unnumbered2:: un2
* numbered:: nu

@end menu

@node unnumbered
@unnumberedsec unnumbered section

@menu
* unnumbered sub:: un
* numbered sub:: nu
* unnumbered sub2:: un2
* numbered sub2:: nu2
@end menu

@node unnumbered sub
@unnumberedsubsec unnumbered subsection

@node numbered sub
@subsection numbered subsection

@node unnumbered sub2
@unnumberedsubsec unnumbered subsection2

@node numbered sub2
@subsection numbered subsection2

@node unnumbered2
@unnumberedsec unnumbered section2

@menu
*  numbered sub3::
@end menu

@node numbered sub3
@subsection numbered subsection3


@node numbered
@section  numbered section

@node between node,,,Top

between node, node without sectioning node

@node Second node,Third node unnumbered,,Top

Second node text

@chapter second node chapter

second node chapter text.

@node Third node unnumbered
@unnumbered unnumbered chapter

unnumbered chapter text.


@node Last node no description,,Third node unnumbered,Top

@contents
@bye

';


$result_texts{'sectioning_check_menu_structure'} = '* First node::    node 1
  explaination no heading ?
* and here ?
With command i^ and
a me.

heading
* between node:: 
node in between

heading 
or not ?
* Second node::   node 2

heading with spaces around

* Third node unnumbered:: unnumbered in Top menu
* Last node no description::

description here


1 first node chapter
********************

first node chapter text
* unnumbered:: un
* unnumbered2:: un2
* numbered:: nu


unnumbered section
==================

* unnumbered sub:: un
* numbered sub:: nu
* unnumbered sub2:: un2
* numbered sub2:: nu2

unnumbered subsection
---------------------

numbered subsection
-------------------

unnumbered subsection2
----------------------

numbered subsection2
--------------------

unnumbered section2
===================

*  numbered sub3::

numbered subsection3
--------------------


1.1 numbered section
====================


between node, node without sectioning node


Second node text

2 second node chapter
*********************

second node chapter text.

unnumbered chapter
******************

unnumbered chapter text.



';

$result_errors{'sectioning_check_menu_structure'} = [
  {
    'error_line' => 'warning: node `Last node no description\' is next for `Third node unnumbered\' in menu but not in sectioning
',
    'file_name' => 'sectioning.texi',
    'line_nr' => 88,
    'text' => 'node `Last node no description\' is next for `Third node unnumbered\' in menu but not in sectioning',
    'type' => 'warning'
  }
];


$result_nodes_list{'sectioning_check_menu_structure'} = '1|Top
 associated_section
2|First node
 associated_section: 1 first node chapter
3|unnumbered
 associated_section: unnumbered section
4|unnumbered sub
 associated_section: unnumbered subsection
5|numbered sub
 associated_section: numbered subsection
6|unnumbered sub2
 associated_section: unnumbered subsection2
7|numbered sub2
 associated_section: numbered subsection2
8|unnumbered2
 associated_section: unnumbered section2
9|numbered sub3
 associated_section: numbered subsection3
10|numbered
 associated_section: 1.1 numbered section
11|between node
12|Second node
 associated_section: 2 second node chapter
13|Third node unnumbered
 associated_section: unnumbered chapter
14|Last node no description
';

$result_sections_list{'sectioning_check_menu_structure'} = '1
 associated_node: Top
2|first node chapter
 associated_node: First node
3|unnumbered section
 associated_node: unnumbered
4|unnumbered subsection
 associated_node: unnumbered sub
5|numbered subsection
 associated_node: numbered sub
6|unnumbered subsection2
 associated_node: unnumbered sub2
7|numbered subsection2
 associated_node: numbered sub2
8|unnumbered section2
 associated_node: unnumbered2
9|numbered subsection3
 associated_node: numbered sub3
10|numbered section
 associated_node: numbered
11|second node chapter
 associated_node: Second node
12|unnumbered chapter
 associated_node: Third node unnumbered
';

$result_converted_errors{'file_html'}->{'sectioning_check_menu_structure'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'sectioning.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
