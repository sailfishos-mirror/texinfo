use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'conversion_with_undef_customization'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C5 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *@contents C1 l4
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  *@shortcontents C1 l5
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
 *2 @node C1 l7 {chap@^e}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chap_00ea}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
    *@^ C1 l7
     *following_arg C1
      {e}
 *3 @chapter C6 l8 {Chap@^e}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |section_childs:EC[E5]
 |section_directions:D[up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
    *@^ C1 l8
     *following_arg C1
      {e}
  {empty_line:\\n}
  *paragraph C3
   {Text}
   *@footnote C1 l10
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C2
      {Go }
      *@samp C1 l10
       *brace_container C1
        {s}
   {\\n}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l12
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entry}
  {empty_line:\\n}
 *4 @node C1 l14 {sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E5]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[up->E2]
 |node_number:{3}
 |normalized:{sec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec}
 *5 @section C5 l15 {Section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |section_directions:D[up->E3]
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
  {empty_line:\\n}
  *@printindex C1 l17
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
  *@deftypefn C3 l19
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l19
   |EXTRA
   |def_command:{deftypefn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{name}
   |element_node:[E4]
   |index_entry:I{fn,1}
   |original_def_cmdname:{deftypefn}
    *block_line_arg C13
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {category}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {name}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {something}
     {spaces: }
     {delimiter:(}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {aa}
     {spaces: }
     {delimiter:)}
   *def_item C1
    *paragraph C1
     {A def.\\n}
   *@end C1 l21
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
';


$result_texis{'conversion_with_undef_customization'} = '@node Top
@top top

@contents
@shortcontents

@node chap@^e
@chapter Chap@^e

Text@footnote{Go @samp{s}}

@cindex entry

@node sec
@section Section

@printindex cp

@deftypefn category type name something ( aa )
A def.
@end deftypefn
';


$result_texts{'conversion_with_undef_customization'} = 'top
***


1 Chape^
********

Text


1.1 Section
===========


category: type name something ( aa )
A def.
';

$result_errors{'conversion_with_undef_customization'} = [];


$result_nodes_list{'conversion_with_undef_customization'} = '1|Top
 associated_section: top
2|chap@^e
 associated_section: 1 Chap@^e
3|sec
 associated_section: 1.1 Section
';

$result_sections_list{'conversion_with_undef_customization'} = '1|top
 associated_node: Top
2|Chap@^e
 associated_node: chap@^e
3|Section
 associated_node: sec
';

$result_indices_sort_strings{'conversion_with_undef_customization'} = 'cp:
 entry
fn:
 name
';

1;
