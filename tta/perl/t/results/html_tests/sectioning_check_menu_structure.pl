use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'sectioning_check_menu_structure'} = '*document_root C29
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 sectioning.texi:l3
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E6|prev->MISSING: (line_arg)[C3]]
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
 |associated_node:[E0]
 |section_childs:EC[E7|E29|E31]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E7]
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
      *3 @^ C1 sectioning.texi:l9
       *brace_container C1
        *4 @dotless C1 sectioning.texi:l9
         *brace_container C1
          {i}
      { and\\n}
      {a }
      *5 @cite C1 sectioning.texi:l10
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
 *6 @node C1 sectioning.texi:l29
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |menu_directions:D[next->E27|up->E0]
 |menus:EC[E8]
 |node_directions:D[prev->E0|up->E0]
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
 *7 @chapter C5 sectioning.texi:l30
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E6]
 |section_childs:EC[E10|E21|E26]
 |section_directions:D[next->E29|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E29|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first node chapter}
  {empty_line:\\n}
  *paragraph C1
   {first node chapter text\\n}
  *8 @menu C6 sectioning.texi:l33
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
 *9 @node C1 sectioning.texi:l40
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |is_target:{1}
 |menu_directions:D[next->E20|up->E6]
 |menus:EC[E11]
 |node_directions:D[next->E20|up->E6]
 |normalized:{unnumbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
 *10 @unnumberedsec C4 sectioning.texi:l41
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E9]
 |section_childs:EC[E13|E15|E17|E19]
 |section_directions:D[next->E21|up->E7]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered section}
  {empty_line:\\n}
  *11 @menu C6 sectioning.texi:l43
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
 *12 @node C1 sectioning.texi:l50
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E13]
 |is_target:{1}
 |menu_directions:D[next->E14|up->E9]
 |node_directions:D[next->E14|up->E9]
 |normalized:{unnumbered-sub}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub}
 *13 @unnumberedsubsec C2 sectioning.texi:l51
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E12]
 |section_directions:D[next->E15|up->E10]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection}
  {empty_line:\\n}
 *14 @node C1 sectioning.texi:l53
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E15]
 |is_target:{1}
 |menu_directions:D[next->E16|prev->E12|up->E9]
 |node_directions:D[next->E16|prev->E12|up->E9]
 |normalized:{numbered-sub}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub}
 *15 @subsection C2 sectioning.texi:l54
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E14]
 |section_directions:D[next->E17|prev->E13|up->E10]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection}
  {empty_line:\\n}
 *16 @node C1 sectioning.texi:l56
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E17]
 |is_target:{1}
 |menu_directions:D[next->E18|prev->E14|up->E9]
 |node_directions:D[next->E18|prev->E14|up->E9]
 |normalized:{unnumbered-sub2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub2}
 *17 @unnumberedsubsec C2 sectioning.texi:l57
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E16]
 |section_directions:D[next->E19|prev->E15|up->E10]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection2}
  {empty_line:\\n}
 *18 @node C1 sectioning.texi:l59
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E19]
 |is_target:{1}
 |menu_directions:D[prev->E16|up->E9]
 |node_directions:D[prev->E16|up->E9]
 |normalized:{numbered-sub2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub2}
 *19 @subsection C2 sectioning.texi:l60
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E18]
 |section_directions:D[prev->E17|up->E10]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection2}
  {empty_line:\\n}
 *20 @node C1 sectioning.texi:l62
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E21]
 |is_target:{1}
 |menu_directions:D[next->E25|prev->E9|up->E6]
 |menus:EC[E22]
 |node_directions:D[next->E25|prev->E9|up->E6]
 |normalized:{unnumbered2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered2}
 *21 @unnumberedsec C4 sectioning.texi:l63
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E20]
 |section_childs:EC[E24]
 |section_directions:D[next->E26|prev->E10|up->E7]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered section2}
  {empty_line:\\n}
  *22 @menu C3 sectioning.texi:l65
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
 *23 @node C1 sectioning.texi:l69
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E24]
 |is_target:{1}
 |menu_directions:D[up->E20]
 |node_directions:D[up->E20]
 |normalized:{numbered-sub3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub3}
 *24 @subsection C3 sectioning.texi:l70
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E23]
 |section_directions:D[up->E21]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection3}
  {empty_line:\\n}
  {empty_line:\\n}
 *25 @node C1 sectioning.texi:l73
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E26]
 |is_target:{1}
 |menu_directions:D[prev->E20|up->E6]
 |node_directions:D[prev->E20|up->E6]
 |normalized:{numbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered}
 *26 @section C2 sectioning.texi:l74
 |INFO
 |spaces_before_argument:
  |{  }
 |EXTRA
 |associated_node:[E25]
 |section_directions:D[prev->E21|up->E7]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered section}
  {empty_line:\\n}
 *27 @node C4 sectioning.texi:l76
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E28|prev->E6|up->E0]
 |node_directions:D[up->E0]
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
 *28 @node C4 sectioning.texi:l80
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E29]
 |is_target:{1}
 |menu_directions:D[next->E30|prev->E27|up->E0]
 |node_directions:D[next->E30|up->E0]
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
 *29 @chapter C4 sectioning.texi:l84
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E28]
 |section_directions:D[next->E31|prev->E7|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E31|prev->E7|up->E1]
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
 *30 @node C1 sectioning.texi:l88
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E31]
 |is_target:{1}
 |menu_directions:D[next->E32|prev->E28|up->E0]
 |node_directions:D[next->E32|prev->E28|up->E0]
 |normalized:{Third-node-unnumbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Third node unnumbered}
 *31 @unnumbered C5 sectioning.texi:l89
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E30]
 |section_directions:D[prev->E29|up->E1]
 |section_level:{1}
 |toplevel_directions:D[prev->E29|up->E1]
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
 *32 @node C3 sectioning.texi:l94
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E30|up->E0]
 |node_directions:D[prev->E30|up->E0]
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

$result_sectioning{'sectioning_check_menu_structure'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'First-node'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'unnumberedsec',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'unnumbered'
                        }
                      },
                      'section_childs' => [
                        {
                          'cmdname' => 'unnumberedsubsec',
                          'extra' => {
                            'associated_node' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'unnumbered-sub'
                              }
                            },
                            'section_directions' => {
                              'up' => {}
                            },
                            'section_level' => 3
                          }
                        },
                        {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'associated_node' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'numbered-sub'
                              }
                            },
                            'section_directions' => {
                              'prev' => {},
                              'up' => {}
                            },
                            'section_level' => 3
                          }
                        },
                        {
                          'cmdname' => 'unnumberedsubsec',
                          'extra' => {
                            'associated_node' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'unnumbered-sub2'
                              }
                            },
                            'section_directions' => {
                              'prev' => {},
                              'up' => {}
                            },
                            'section_level' => 3
                          }
                        },
                        {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'associated_node' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'numbered-sub2'
                              }
                            },
                            'section_directions' => {
                              'prev' => {},
                              'up' => {}
                            },
                            'section_level' => 3
                          }
                        }
                      ],
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2
                    }
                  },
                  {
                    'cmdname' => 'unnumberedsec',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'unnumbered2'
                        }
                      },
                      'section_childs' => [
                        {
                          'cmdname' => 'subsection',
                          'extra' => {
                            'associated_node' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'numbered-sub3'
                              }
                            },
                            'section_directions' => {
                              'up' => {}
                            },
                            'section_level' => 3
                          }
                        }
                      ],
                      'section_directions' => {
                        'prev' => {},
                        'up' => {}
                      },
                      'section_level' => 2
                    }
                  },
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'numbered'
                        }
                      },
                      'section_directions' => {
                        'prev' => {},
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Second-node'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'unnumbered',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Third-node-unnumbered'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sectioning_check_menu_structure'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'sectioning_check_menu_structure'};

$result_nodes{'sectioning_check_menu_structure'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'First-node'
          }
        },
        'prev' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'unnumberedsec',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'unnumberedsec',
              'extra' => {}
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'section',
                    'extra' => {
                      'section_number' => '1.1'
                    }
                  },
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'numbered'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'unnumbered2'
          }
        },
        'up' => {}
      },
      'normalized' => 'unnumbered'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'unnumberedsubsec',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'subsection',
              'extra' => {}
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'unnumberedsubsec',
                    'extra' => {}
                  },
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'subsection',
                          'extra' => {}
                        },
                        'node_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'numbered-sub2'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'unnumbered-sub2'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'numbered-sub'
          }
        },
        'up' => {}
      },
      'normalized' => 'unnumbered-sub'
    }
  },
  {},
  {},
  {},
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'subsection',
        'extra' => {}
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'numbered-sub3'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'between-node'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '2'
        }
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'unnumbered',
              'extra' => {}
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'Last-node-no-description'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'Third-node-unnumbered'
          }
        },
        'up' => {}
      },
      'normalized' => 'Second-node'
    }
  },
  {},
  {}
];
$result_nodes{'sectioning_check_menu_structure'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sectioning_check_menu_structure'}[0];
$result_nodes{'sectioning_check_menu_structure'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[0];
$result_nodes{'sectioning_check_menu_structure'}[1] = $result_nodes{'sectioning_check_menu_structure'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sectioning_check_menu_structure'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sectioning_check_menu_structure'}[2];
$result_nodes{'sectioning_check_menu_structure'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[2];
$result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[2];
$result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sectioning_check_menu_structure'}[3];
$result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[2];
$result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[2];
$result_nodes{'sectioning_check_menu_structure'}[4] = $result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[5] = $result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[6] = $result_nodes{'sectioning_check_menu_structure'}[3]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[7] = $result_nodes{'sectioning_check_menu_structure'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[8]{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[9] = $result_nodes{'sectioning_check_menu_structure'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[10]{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[0];
$result_nodes{'sectioning_check_menu_structure'}[11]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sectioning_check_menu_structure'}[11]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[11]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[0];
$result_nodes{'sectioning_check_menu_structure'}[11]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sectioning_check_menu_structure'}[11];
$result_nodes{'sectioning_check_menu_structure'}[11]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[0];
$result_nodes{'sectioning_check_menu_structure'}[11]{'extra'}{'node_directions'}{'up'} = $result_nodes{'sectioning_check_menu_structure'}[0];
$result_nodes{'sectioning_check_menu_structure'}[12] = $result_nodes{'sectioning_check_menu_structure'}[11]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sectioning_check_menu_structure'}[13] = $result_nodes{'sectioning_check_menu_structure'}[11]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'sectioning_check_menu_structure'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'next' => {
                      'extra' => {
                        'menu_directions' => {
                          'next' => {
                            'extra' => {
                              'menu_directions' => {
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'Last-node-no-description'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'Third-node-unnumbered'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'Second-node'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'between-node'
          }
        },
        'up' => {}
      },
      'menus' => [
        {}
      ],
      'normalized' => 'First-node'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'numbered'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'menus' => [
              {}
            ],
            'normalized' => 'unnumbered2'
          }
        },
        'up' => {}
      },
      'menus' => [
        {}
      ],
      'normalized' => 'unnumbered'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'next' => {
                      'extra' => {
                        'menu_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'numbered-sub2'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'unnumbered-sub2'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'numbered-sub'
          }
        },
        'up' => {}
      },
      'normalized' => 'unnumbered-sub'
    }
  },
  {},
  {},
  {},
  {},
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'numbered-sub3'
    }
  },
  {},
  {},
  {},
  {},
  {}
];
$result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[0];
$result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[0];
$result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[0];
$result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'sectioning_check_menu_structure'}[1];
$result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[0];
$result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[0];
$result_menus{'sectioning_check_menu_structure'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'sectioning_check_menu_structure'}[2]{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[1];
$result_menus{'sectioning_check_menu_structure'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'sectioning_check_menu_structure'}[2];
$result_menus{'sectioning_check_menu_structure'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[1];
$result_menus{'sectioning_check_menu_structure'}[2]{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[1];
$result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[2];
$result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[2];
$result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'sectioning_check_menu_structure'}[3];
$result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[2];
$result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[2];
$result_menus{'sectioning_check_menu_structure'}[4] = $result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[5] = $result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[6] = $result_menus{'sectioning_check_menu_structure'}[3]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[7] = $result_menus{'sectioning_check_menu_structure'}[2]{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[8]{'extra'}{'menu_directions'}{'up'} = $result_menus{'sectioning_check_menu_structure'}[2]{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[9] = $result_menus{'sectioning_check_menu_structure'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[10] = $result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[11] = $result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[12] = $result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'sectioning_check_menu_structure'}[13] = $result_menus{'sectioning_check_menu_structure'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

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


$result_floats{'sectioning_check_menu_structure'} = {};


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
