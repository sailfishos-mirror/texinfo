use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'inter_item_commands_in_enumerate'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
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
 *2 @node C1 l4 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C14 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *4 @enumerate C4 l7
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C2
    {empty_line:\\n}
    *@comment C1
     {rawline_arg: comment before first item in enumerate\\n}
   *@item C2 l10
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {e--numerate\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *5 @enumerate C4 l13
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C3
    {empty_line:\\n}
    *index_entry_command@cindex C1 l15
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
      {index inter in enumerate between lines}
    {empty_line:\\n}
   *@item C2 l17
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enumerate item\\n}
   *@end C1 l18
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *6 @enumerate C4 l20
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C2
    {empty_line:\\n}
    *index_entry_command@cindex C1 l22
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
      {index inter in enumerate after line}
   *@item C2 l23
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enumerate item\\n}
   *@end C1 l24
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *7 @enumerate C4 l26
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C2
    *index_entry_command@cindex C1 l27
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
      {index inter in enumerate before line}
    {empty_line:\\n}
   *@item C2 l29
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enumerate item\\n}
   *@end C1 l30
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *8 @enumerate C4 l32
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C1
    *paragraph C2
     {Title\\n}
     *index_entry_command@cindex C1 l34
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,4}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {cindex}
   *@item C2 l35
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enum\\n}
   *@end C1 l36
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *9 @enumerate C4 l38
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C4
    *index_entry_command@cindex C1 l39
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,5}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {first idx}
    *@comment C1
     {rawline_arg: comment\\n}
    *index_entry_command@cindex C1 l41
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,6}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {sedond idx}
    *index_entry_command@cindex C1 l42
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,7}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {another}
   *@item C2 l43
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enum\\n}
   *@end C1 l44
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
';


$result_texis{'inter_item_commands_in_enumerate'} = '@node Top
@top top

@node chapter
@chapter chap

@enumerate

@comment comment before first item in enumerate
@item e--numerate
@end enumerate

@enumerate

@cindex index inter in enumerate between lines

@item enumerate item
@end enumerate

@enumerate

@cindex index inter in enumerate after line
@item enumerate item
@end enumerate

@enumerate
@cindex index inter in enumerate before line

@item enumerate item
@end enumerate

@enumerate
Title
@cindex cindex
@item enum
@end enumerate

@enumerate
@cindex first idx
@comment comment
@cindex sedond idx
@cindex another
@item enum
@end enumerate

';


$result_texts{'inter_item_commands_in_enumerate'} = 'top
***

1 chap
******


1. e-numerate



1. enumerate item


1. enumerate item


1. enumerate item

Title
1. enum

1. enum

';

$result_errors{'inter_item_commands_in_enumerate'} = [];


$result_indices_sort_strings{'inter_item_commands_in_enumerate'} = 'cp:
 another
 cindex
 first idx
 index inter in enumerate after line
 index inter in enumerate before line
 index inter in enumerate between lines
 sedond idx
';


$result_converted{'plaintext'}->{'inter_item_commands_in_enumerate'} = 'top
***

1 chap
******

  1. e-numerate

  1. enumerate item

  1. enumerate item

  1. enumerate item

     Title
  1. enum

  1. enum

';


$result_converted{'html_text'}->{'inter_item_commands_in_enumerate'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<h2 class="chapter" id="chap"><span>1 chap<a class="copiable-link" href="#chap"> &para;</a></span></h2>

<ol class="enumerate">
<li> e&ndash;numerate
</li></ol>

<ol class="enumerate">
<li>
<a class="index-entry-id" id="index-index-inter-in-enumerate-between-lines"></a>

</li><li> enumerate item
</li></ol>

<ol class="enumerate">
<li>
<a class="index-entry-id" id="index-index-inter-in-enumerate-after-line"></a>
</li><li> enumerate item
</li></ol>

<ol class="enumerate">
<li><a class="index-entry-id" id="index-index-inter-in-enumerate-before-line"></a>

</li><li> enumerate item
</li></ol>

<ol class="enumerate">
<li>Title
<a class="index-entry-id" id="index-cindex"></a>
</li><li> enum
</li></ol>

<ol class="enumerate">
<li><a class="index-entry-id" id="index-first-idx"></a>
<a class="index-entry-id" id="index-sedond-idx"></a>
<a class="index-entry-id" id="index-another"></a>
</li><li> enum
</li></ol>

</div>
</div>
';

1;
