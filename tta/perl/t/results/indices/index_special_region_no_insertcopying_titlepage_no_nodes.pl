use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_special_region_no_insertcopying_titlepage_no_nodes'} = '*document_root C7
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C4
   *0 @copying C14 index_special_region_no_insertcopying.texi:l3
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{ \\n}
    {empty_line:\\n}
    *1 index_entry_command@cindex C1 index_special_region_no_insertcopying.texi:l5
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_region:{copying}
    |index_entry:I{cp,1}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {Copying this document}
    *2 @anchor C1 index_special_region_no_insertcopying.texi:l6
    |EXTRA
    |is_target:{1}
    |normalized:{Copying-information}
     *brace_arg C1
     |EXTRA
     |element_region:{copying}
      {Copying information}
    {spaces_after_close_brace:\\n}
    {empty_line:\\n}
    *paragraph C4
     {This is a test manual, trivially and explicitly in the public\\n}
     {domain}
     *3 @footnote C1 index_special_region_no_insertcopying.texi:l9
     |EXTRA
     |global_command_number:{1}
      *brace_command_context C5
       *4 @anchor C1 index_special_region_no_insertcopying.texi:l9
       |EXTRA
       |is_target:{1}
       |normalized:{Public-domain-reference}
        *brace_arg C1
        |EXTRA
        |element_region:{copying}
         {Public domain reference}
       {spaces_after_close_brace: }
       *paragraph C2
        {The public\\n}
        {domain is something you should allready know\\n}
       {empty_line:\\n}
       *5 index_entry_command@cindex C1 index_special_region_no_insertcopying.texi:l12
       |INFO
       |command_name:{cindex}
       |spaces_before_argument:
        |{ }
       |EXTRA
       |element_region:{copying}
       |index_entry:I{cp,2}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {Public domain}
     {.\\n}
    {empty_line:\\n}
    *@printindex C1 index_special_region_no_insertcopying.texi:l15
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
    *@printindex C1 index_special_region_no_insertcopying.texi:l17
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
    *@printindex C1 index_special_region_no_insertcopying.texi:l18
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{3}
    |misc_args:A{fn}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {fn}
    {empty_line:\\n}
    *@end C1 index_special_region_no_insertcopying.texi:l20
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   {empty_line:\\n}
   *6 @titlepage C10 index_special_region_no_insertcopying.texi:l22
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    {empty_line:\\n}
    *7 index_entry_command@cindex C1 index_special_region_no_insertcopying.texi:l24
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_region:{titlepage}
    |index_entry:I{cp,3}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {Titlepage index}
    *8 @anchor C1 index_special_region_no_insertcopying.texi:l25
    |EXTRA
    |is_target:{1}
    |normalized:{Titlepage-anchor}
     *brace_arg C1
     |EXTRA
     |element_region:{titlepage}
      {Titlepage anchor}
    {spaces_after_close_brace:\\n}
    {empty_line:\\n}
    *paragraph C3
     {This is the titlepage}
     *9 @footnote C1 index_special_region_no_insertcopying.texi:l27
     |EXTRA
     |global_command_number:{2}
      *brace_command_context C5
       *10 @anchor C1 index_special_region_no_insertcopying.texi:l27
       |EXTRA
       |is_target:{1}
       |normalized:{Titlepage-footnote-anchor}
        *brace_arg C1
        |EXTRA
        |element_region:{titlepage}
         {Titlepage footnote anchor}
       {spaces_after_close_brace:\\n}
       *paragraph C1
        {This is a fine document.\\n}
       {empty_line:\\n}
       *11 index_entry_command@cindex C1 index_special_region_no_insertcopying.texi:l30
       |INFO
       |command_name:{cindex}
       |spaces_before_argument:
        |{ }
       |EXTRA
       |element_region:{titlepage}
       |index_entry:I{cp,4}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {Titlepage footnote}
     {\\n}
    {empty_line:\\n}
    *@insertcopying C1 index_special_region_no_insertcopying.texi:l33
    |EXTRA
    |global_command_number:{1}
     {rawline_arg:\\n}
    *@end C1 index_special_region_no_insertcopying.texi:l34
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{titlepage}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {titlepage}
   {empty_line:\\n}
 *12 @node C1 index_special_region_no_insertcopying.texi:l36 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E13]
 |associated_title_command:[E13]
 |is_target:{1}
 |menus:EC[E20]
 |node_directions:D[next->E21]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *13 @top C1 index_special_region_no_insertcopying.texi:l37 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E12]
 |associated_node:[E12]
 |section_childs:EC[E14|E22]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E13]
  ||section_level:{-1}
 |toplevel_directions:D[next->E14]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *14 @chapter C15 index_special_region_no_insertcopying.texi:l38 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E22|up->E13]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E22|prev->E13|up->E13]
  *arguments_line C1
   *line_arg C1
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: note this chapter is not associated to a node\\n}
   |spaces_after_argument:
    |{  }
    {Chapter}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: @insertcopying\\n}
  {empty_line:\\n}
  *paragraph C6
   {This test demonstrates }
   *@@
   {anchor and indices in }
   *@@
   {copying\\n}
   {and titlepage, and various wrong index entries.\\n}
  {empty_line:\\n}
  *15 index_entry_command@findex C1 index_special_region_no_insertcopying.texi:l45
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E12]
  |index_entry:I{fn,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {findex entry}
  {empty_line:\\n}
  *16 index_entry_command@cindex C1 index_special_region_no_insertcopying.texi:l47
  |INFO
  |command_name:{cindex}
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  *17 @deffn C4 index_special_region_no_insertcopying.texi:l48
   *def_line C1 index_special_region_no_insertcopying.texi:l48
   |EXTRA
   |def_command:{deffn}
   |original_def_cmdname:{deffn}
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 index_special_region_no_insertcopying.texi:l48
       {truc}
     {spaces: }
     *def_name C1
      *bracketed_arg index_special_region_no_insertcopying.texi:l48
      |INFO
      |spaces_before_argument:
       |{ }
   *@deffnx C1 index_special_region_no_insertcopying.texi:l49
   |EXTRA
   |def_command:{deffn}
   |original_def_cmdname:{deffnx}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 index_special_region_no_insertcopying.texi:l49
       {truc}
   *@deffnx C1 index_special_region_no_insertcopying.texi:l50
   |EXTRA
   |def_command:{deffn}
   |original_def_cmdname:{deffnx}
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg index_special_region_no_insertcopying.texi:l50
     {spaces: }
     *def_name C1
      *bracketed_arg index_special_region_no_insertcopying.texi:l50
   *@end C1 index_special_region_no_insertcopying.texi:l51
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
  *18 @ftable C4 index_special_region_no_insertcopying.texi:l53
  |EXTRA
  |command_as_argument:[E19]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *19 @asis
     |INFO
     |inserted:{1}
   *table_entry C1
    *table_term C1
     *@item C1 index_special_region_no_insertcopying.texi:l54
      *line_arg
      |INFO
      |spaces_after_argument:
       |{\\n}
   *table_entry C1
    *table_term C1
     *@item C1 index_special_region_no_insertcopying.texi:l55
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E12]
     |index_entry:I{fn,2}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {fun}
   *@end C1 index_special_region_no_insertcopying.texi:l56
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
  *20 @menu C3 index_special_region_no_insertcopying.texi:l58
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 index_special_region_no_insertcopying.texi:l59
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Copying and indices}
    |normalized:{Copying-and-indices}
     {Copying and indices}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 index_special_region_no_insertcopying.texi:l60
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
 *21 @node C1 index_special_region_no_insertcopying.texi:l62 {Copying and indices}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E22]
 |associated_title_command:[E22]
 |is_target:{1}
 |menu_directions:D[up->E12]
 |node_directions:D[prev->E12|up->E12]
 |normalized:{Copying-and-indices}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Copying and indices}
 *22 @appendix C15 index_special_region_no_insertcopying.texi:l63 {Copying and indices}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E21]
 |associated_node:[E21]
 |section_directions:D[prev->E14|up->E13]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E14|up->E13]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Copying and indices}
  {empty_line:\\n}
  *paragraph C1
   {In the appendix, we print the indices and references.\\n}
  {empty_line:\\n}
  *23 index_entry_command@findex C1 index_special_region_no_insertcopying.texi:l67
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E21]
  |index_entry:I{fn,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {another fun}
  {empty_line:\\n}
  *24 index_entry_command@cindex C1 index_special_region_no_insertcopying.texi:l69
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E21]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Copying appendix}
  {empty_line:\\n}
  *paragraph C4
   *25 @ref C1 index_special_region_no_insertcopying.texi:l71
    *brace_arg C1
    |EXTRA
    |node_content:{Copying information}
    |normalized:{Copying-information}
     {Copying information}
   { for the copying information.\\n}
   *26 @ref C1 index_special_region_no_insertcopying.texi:l72
    *brace_arg C1
    |EXTRA
    |node_content:{Public domain reference}
    |normalized:{Public-domain-reference}
     {Public domain reference}
   { for reference on the licence.\\n}
  {empty_line:\\n}
  *paragraph C4
   *27 @ref C1 index_special_region_no_insertcopying.texi:l74
    *brace_arg C1
    |EXTRA
    |node_content:{Titlepage anchor}
    |normalized:{Titlepage-anchor}
     {Titlepage anchor}
   { for the titlepage.\\n}
   *28 @ref C1 index_special_region_no_insertcopying.texi:l75
    *brace_arg C1
    |EXTRA
    |node_content:{Titlepage footnote anchor}
    |normalized:{Titlepage-footnote-anchor}
     {Titlepage footnote anchor}
   { for reference on the titlepage.\\n}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: @insertcopying\\n}
  {empty_line:\\n}
  *@contents C1 index_special_region_no_insertcopying.texi:l79
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'index_special_region_no_insertcopying_titlepage_no_nodes'} = '\\input texinfo @c -*-texinfo-*-

@copying 

@cindex Copying this document
@anchor{Copying information}

This is a test manual, trivially and explicitly in the public
domain@footnote{@anchor{Public domain reference} The public
domain is something you should allready know

@cindex Public domain
}.

@printindex cp

@printindex cp
@printindex fn

@end copying

@titlepage

@cindex Titlepage index
@anchor{Titlepage anchor}

This is the titlepage@footnote{@anchor{Titlepage footnote anchor}
This is a fine document.

@cindex Titlepage footnote
}

@insertcopying
@end titlepage

@node Top
@top Top
@chapter Chapter  @c note this chapter is not associated to a node

@c @insertcopying

This test demonstrates @@anchor and indices in @@copying
and titlepage, and various wrong index entries.

@findex findex entry

@cindex
@deffn{truc} { }
@deffnx{truc}
@deffnx{} {}
@end deffn

@ftable
@item
@item fun
@end ftable

@menu
* Copying and indices::
@end menu

@node Copying and indices
@appendix Copying and indices

In the appendix, we print the indices and references.

@findex another fun

@cindex Copying appendix

@ref{Copying information} for the copying information.
@ref{Public domain reference} for reference on the licence.

@ref{Titlepage anchor} for the titlepage.
@ref{Titlepage footnote anchor} for reference on the titlepage.

@c @insertcopying

@contents
@bye
';


$result_texts{'index_special_region_no_insertcopying_titlepage_no_nodes'} = '

Top
***
1 Chapter
*********


This test demonstrates @anchor and indices in @copying
and titlepage, and various wrong index entries.


truc: 
truc: 
: 


fun

* Copying and indices::

Appendix A Copying and indices
******************************

In the appendix, we print the indices and references.



Copying information for the copying information.
Public domain reference for reference on the licence.

Titlepage anchor for the titlepage.
Titlepage footnote anchor for reference on the titlepage.


';

$result_errors{'index_special_region_no_insertcopying_titlepage_no_nodes'} = [
  {
    'error_line' => 'warning: @cindex missing argument
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 47,
    'text' => '@cindex missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffn
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 48,
    'text' => 'missing name for @deffn',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffnx
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 49,
    'text' => 'missing name for @deffnx',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffnx
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 50,
    'text' => 'missing name for @deffnx',
    'type' => 'warning'
  },
  {
    'error_line' => 'missing @ftable argument
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 53,
    'text' => 'missing @ftable argument',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @item missing argument
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 54,
    'text' => '@item missing argument',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'index_special_region_no_insertcopying_titlepage_no_nodes'} = 'cp:
 Copying appendix
 Copying this document
 Public domain
 Titlepage footnote
 Titlepage index
fn:
 another fun
 findex entry
 fun
';

1;
