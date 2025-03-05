use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_index'} = '*document_root C13
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E12]
 |node_directions:D[next->E13]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C12 l2 {Element top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E14|E21|E28|E29]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E14]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Element top}
  {empty_line:\\n}
  *paragraph C2
   *2 @xref C1 l4
    *brace_arg C1
    |EXTRA
    |node_content:{a counting anchor}
    |normalized:{a-counting-anchor}
     {a counting anchor}
   {.\\n}
  {empty_line:\\n}
  *paragraph C5
   {before menu.\\n}
   *3 index_entry_command@cindex C1 l7
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
     {in Top}
   *4 index_entry_command@cindex C1 l8
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E0]
   |index_entry:I{cp,2}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@@
   *5 index_entry_command@cindex C1 l9
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E0]
   |index_entry:I{cp,3}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *6 @exclamdown C1 l9
      *brace_container
   *7 index_entry_command@cindex C1 l10
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E0]
   |index_entry:I{cp,4}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {"}
  {empty_line:\\n}
  *8 @deffn C4 l12
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l12
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |*32 @var C1
       |*brace_container C1
        |{i}
   |element_node:[E0]
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {fset}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       *9 @var C1 l12
        *brace_container C1
         {i}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {a}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {g}
   *@deffnx C1 l13
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{machin}
   |element_node:[E0]
   |index_entry:I{fn,2}
   |original_def_cmdname:{deffnx}
    *line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {truc}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {machin}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {bidule}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {chose}
   *def_item C1
    {empty_line:\\n}
   *@end C1 l15
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
  {empty_line:\\n}
  *10 @ftable C4 l17
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E11]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *11 @emph l17
   *table_entry C2
    *table_term C1
     *@item C1 l18
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E0]
     |index_entry:I{fn,3}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {a fun}
    *table_definition C2
     *paragraph C1
      {Var text\\n}
     {empty_line:\\n}
   *table_entry C2
    *table_term C2
     *@item C1 l21
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E0]
     |index_entry:I{fn,4}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {second fun}
     *@itemx C1 l22
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E0]
     |index_entry:I{fn,5}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {itemx fun}
    *table_definition C1
     {empty_line:\\n}
   *@end C1 l24
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{ftable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ftable}
  {empty_line:\\n}
  *12 @menu C4 l26
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l27
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{name}
    |normalized:{name}
     {name}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l28
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong}
    |normalized:{name1-looooooooooooooooooooooooooooooooooooooooooooooooooooooooong}
     {name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l29
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
 *13 @node C1 l31 {name}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |is_target:{1}
 |menu_directions:D[next->E20|up->E0]
 |node_directions:D[next->E20|prev->E0|up->E0]
 |normalized:{name}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {name}
 *14 @chapter C171 l32 {A chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E13]
 |section_directions:D[next->E21|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E21|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {A chapter}
  {empty_line:\\n}
  *15 index_entry_command@cindex C1 l34
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E13]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index entry looooooooooooooooooooooooooooooooooooooooooooooooooooooooong}
  *16 index_entry_command@findex C1 l35
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E13]
  |index_entry:I{fn,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {function index entry}
  {empty_line:\\n}
  *paragraph C3
   {A paragraph \\n}
   *17 index_entry_command@findex C1 l38
   |INFO
   |command_name:{findex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E13]
   |index_entry:I{fn,7}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {other function}
   {end paragraph\\n}
  {empty_line:\\n}
  *paragraph C1
   {a\\n}
  {empty_line:\\n}
  *paragraph C1
   {a\\n}
  {empty_line:\\n}
  *paragraph C1
   {a\\n}
  {empty_line:\\n}
  *paragraph C1
   {a\\n}
  {empty_line:\\n}
  *paragraph C1
   {a\\n}
  {empty_line:\\n}
  *18 index_entry_command@findex C1 l51
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E13]
  |index_entry:I{fn,8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {after lines.}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *paragraph C1
   {b\\n}
  {empty_line:\\n}
  *19 index_entry_command@findex C1 l203
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E13]
  |index_entry:I{fn,9}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {after more than 100 lines}
  {empty_line:\\n}
 *20 @node C1 l205 {name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E21]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[prev->E13|up->E0]
 |node_directions:D[prev->E13|up->E0]
 |normalized:{name1-looooooooooooooooooooooooooooooooooooooooooooooooooooooooong}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong}
 *21 @appendix C13 l206 {Index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E20]
 |section_childs:EC[E24]
 |section_directions:D[next->E28|prev->E14|up->E1]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[next->E28|prev->E14|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Index}
  {empty_line:\\n}
  *22 index_entry_command@cindex C1 l208
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E20]
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index entry in appendix before para}
  *paragraph C1
   {Para.\\n}
  {empty_line:\\n}
  *paragraph C1
   {Concept index\\n}
  *@printindex C1 l212
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
  *23 index_entry_command@findex C1 l214
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E20]
  |index_entry:I{fn,10}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index entry between indices}
  {empty_line:\\n}
  *paragraph C1
   {Functions index\\n}
  *@printindex C1 l217
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
 *24 @appendixsec C2 l219 {appendixsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E25]
 |section_directions:D[up->E21]
 |section_level:{2}
 |section_number:{A.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendixsec}
  {empty_line:\\n}
 *25 @appendixsubsec C2 l221 {appendixsubsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E26]
 |section_directions:D[up->E24]
 |section_level:{3}
 |section_number:{A.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendixsubsec}
  {empty_line:\\n}
 *26 @appendixsubsubsec C4 l223 {appendixsubsubsec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E25]
 |section_level:{4}
 |section_number:{A.1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {appendixsubsubsec}
  {empty_line:\\n}
  *27 @chapheading C1 l225
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapheading}
  {empty_line:\\n}
 *28 @centerchap C2 l227 {centerchap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E29|prev->E21|up->E1]
 |section_level:{1}
 |toplevel_directions:D[next->E29|prev->E21|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {centerchap}
  {empty_line:\\n}
 *29 @chapter C7 l229 {chapter end}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E28|up->E1]
 |section_level:{1}
 |section_number:{B}
 |toplevel_directions:D[prev->E28|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter end}
  {empty_line:\\n}
  *30 index_entry_command@cindex C1 l231
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E20]
  |index_entry:I{cp,7}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index in chapter end}
  {empty_line:\\n}
  *31 @anchor C1 l233
  |EXTRA
  |is_target:{1}
  |normalized:{a-counting-anchor}
   *brace_arg C1
    {a counting anchor}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'test_index'} = '@node Top
@top Element top

@xref{a counting anchor}.

before menu.
@cindex in Top
@cindex @@
@cindex @exclamdown{}
@cindex "

@deffn fset @var{i} a g
@deffnx truc machin bidule chose

@end deffn

@ftable @emph
@item a fun
Var text

@item second fun
@itemx itemx fun

@end ftable

@menu
* name::
* name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong::
@end menu

@node name
@chapter A chapter

@cindex index entry looooooooooooooooooooooooooooooooooooooooooooooooooooooooong
@findex function index entry

A paragraph 
@findex other function
end paragraph

a

a

a

a

a

@findex after lines.

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

@findex after more than 100 lines

@node name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong
@appendix Index

@cindex index entry in appendix before para
Para.

Concept index
@printindex cp

@findex index entry between indices

Functions index
@printindex fn

@appendixsec appendixsec

@appendixsubsec appendixsubsec

@appendixsubsubsec appendixsubsubsec

@chapheading chapheading

@centerchap centerchap

@chapter chapter end

@cindex index in chapter end

@anchor{a counting anchor}

@bye
';


$result_texts{'test_index'} = 'Element top
***********

a counting anchor.

before menu.

fset: i a g
truc: machin bidule chose


a fun
Var text

second fun
itemx fun


* name::
* name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong::

1 A chapter
***********


A paragraph 
end paragraph

a

a

a

a

a


b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b


Appendix A Index
****************

Para.

Concept index


Functions index

A.1 appendixsec
===============

A.1.1 appendixsubsec
--------------------

A.1.1.1 appendixsubsubsec
.........................

chapheading
***********

centerchap
**********

B chapter end
*************



';

$result_errors{'test_index'} = [
  {
    'error_line' => 'warning: @centerchap is obsolete
',
    'line_nr' => 227,
    'text' => '@centerchap is obsolete',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'test_index'} = 'cp:
 ¡
 "
 @
 in Top
 index entry in appendix before para
 index entry looooooooooooooooooooooooooooooooooooooooooooooooooooooooong
 index in chapter end
fn:
 a fun
 after lines.
 after more than 100 lines
 function index entry
 i
 index entry between indices
 itemx fun
 machin
 other function
 second fun
';


$result_converted{'info'}->{'test_index'} = 'This is , produced from .


File: ,  Node: Top,  Next: name,  Up: (dir)

Element top
***********

*Note a counting anchor::.

   before menu.

 -- fset: I a g
 -- truc: machin bidule chose

_a fun_
     Var text

_second fun_
_itemx fun_

* Menu:

* name::
* name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong::


File: ,  Node: name,  Next: name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong,  Prev: Top,  Up: Top

1 A chapter
***********

A paragraph end paragraph

   a

   a

   a

   a

   a

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b

   b


File: ,  Node: name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong,  Prev: name,  Up: Top

Appendix A Index
****************

Para.

   Concept index

 [index ]
* Menu:

* ¡:                                     Top.                   (line 8)
* ":                                     Top.                   (line 8)
* @:                                     Top.                   (line 8)
* in Top:                                Top.                   (line 8)
* index entry in appendix before para:   name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong.
                                                                (line 6)
* index entry looooooooooooooooooooooooooooooooooooooooooooooooooooooooong: name.
                                                                (line 6)
* index in chapter end:                  name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong.
                                                                (line 4)

   Functions index

 [index ]
* Menu:

* a fun:                                 Top.                 (line  13)
* after lines.:                          name.                (line  18)
* after more than 100 lines:             name.                (line 167)
* function index entry:                  name.                (line   6)
* I:                                     Top.                 (line  10)
* index entry between indices:           name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong.
                                                              (line  24)
* itemx fun:                             Top.                 (line  17)
* machin:                                Top.                 (line  11)
* other function:                        name.                (line   6)
* second fun:                            Top.                 (line  16)

A.1 appendixsec
===============

A.1.1 appendixsubsec
--------------------

A.1.1.1 appendixsubsubsec
.........................

chapheading
***********

centerchap
**********

B chapter end
*************


Tag Table:
Node: Top27
Node: name330
Node: name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong982
Ref: a counting anchor3070

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
